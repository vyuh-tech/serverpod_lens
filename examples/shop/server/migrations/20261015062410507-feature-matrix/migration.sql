BEGIN;

--
-- CREATE VECTOR EXTENSION IF AVAILABLE
--
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_available_extensions WHERE name = 'vector') THEN
    EXECUTE 'CREATE EXTENSION IF NOT EXISTS vector';
  ELSE
    RAISE EXCEPTION 'Required extension "vector" is not available on this instance. Please install pgvector. For instructions, see https://docs.serverpod.dev/upgrading/upgrade-to-pgvector.';
  END IF;
END
$$;

--
-- CREATE POSTGIS EXTENSION IF AVAILABLE
--
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_available_extensions WHERE name = 'postgis') THEN
    EXECUTE 'CREATE EXTENSION IF NOT EXISTS postgis';
  ELSE
    RAISE EXCEPTION 'Required extension "postgis" is not available on this instance. Please install PostGIS. For instructions, see https://docs.serverpod.dev/upgrading/upgrade-to-postgis.';
  END IF;
END
$$;

--
-- Function: gen_random_uuid_v7()
-- Source: https://gist.github.com/kjmph/5bd772b2c2df145aa645b837da7eca74
-- License: MIT (copyright notice included on the generator source code).
--
create or replace function gen_random_uuid_v7()
returns uuid
as $$
begin
  -- use random v4 uuid as starting point (which has the same variant we need)
  -- then overlay timestamp
  -- then set version 7 by flipping the 2 and 1 bit in the version 4 string
  return encode(
    set_bit(
      set_bit(
        overlay(uuid_send(gen_random_uuid())
                placing substring(int8send(floor(extract(epoch from clock_timestamp()) * 1000)::bigint) from 3)
                from 1 for 6
        ),
        52, 1
      ),
      53, 1
    ),
    'hex')::uuid;
end
$$
language plpgsql
volatile;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop_bins" (
    "id" bigserial PRIMARY KEY,
    "label" text NOT NULL,
    "_shopWarehousesBinsShopWarehousesId" bigint
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop_categories" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "parentId" bigint
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop_members" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "teamId" bigint NOT NULL,
    "profileId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "shop_member_profile" ON "shop_members" USING btree ("profileId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop_product_tags" (
    "id" bigserial PRIMARY KEY,
    "productId" bigint NOT NULL,
    "tagId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "shop_product_tag_pair" ON "shop_product_tags" USING btree ("productId", "tagId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop_profiles" (
    "id" bigserial PRIMARY KEY,
    "bio" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop_records" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "display_name" text NOT NULL,
    "state" text NOT NULL DEFAULT 'draft'::text,
    "priority" bigint NOT NULL,
    "enabled" boolean NOT NULL DEFAULT true,
    "itemCount" bigint NOT NULL,
    "amount" double precision NOT NULL,
    "elapsed" bigint NOT NULL,
    "website" text NOT NULL,
    "largeNumber" text NOT NULL,
    "bytes" bytea NOT NULL,
    "labels" jsonb NOT NULL,
    "flags" jsonb NOT NULL,
    "attributes" jsonb NOT NULL,
    "lookup" jsonb NOT NULL,
    "coordinates" jsonb NOT NULL,
    "payload" jsonb NOT NULL,
    "optionalPayload" jsonb,
    "legacyPayload" json NOT NULL,
    "secret" text,
    "embedding" vector(3),
    "compactEmbedding" halfvec(3),
    "sparseEmbedding" sparsevec(3),
    "mask" bit(8),
    "location" geography(Point,4326),
    "route" geography(LineString,4326),
    "area" geography(Polygon,4326),
    "geometry" geography(GeometryCollection,4326)
);

-- Indexes
CREATE UNIQUE INDEX "shop_record_display" ON "shop_records" USING btree ("display_name");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop_shared_preferences" (
    "id" bigserial PRIMARY KEY,
    "key" text NOT NULL,
    "value" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop_tags" (
    "id" bigserial PRIMARY KEY,
    "label" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop_teams" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shop_warehouses" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "shop_bins"
    ADD CONSTRAINT "shop_bins_fk_0"
    FOREIGN KEY("_shopWarehousesBinsShopWarehousesId")
    REFERENCES "shop_warehouses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "shop_categories"
    ADD CONSTRAINT "shop_categories_fk_0"
    FOREIGN KEY("parentId")
    REFERENCES "shop_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "shop_members"
    ADD CONSTRAINT "shop_members_fk_0"
    FOREIGN KEY("teamId")
    REFERENCES "shop_teams"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "shop_members"
    ADD CONSTRAINT "shop_members_fk_1"
    FOREIGN KEY("profileId")
    REFERENCES "shop_profiles"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "shop_product_tags"
    ADD CONSTRAINT "shop_product_tags_fk_0"
    FOREIGN KEY("productId")
    REFERENCES "shop_products"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "shop_product_tags"
    ADD CONSTRAINT "shop_product_tags_fk_1"
    FOREIGN KEY("tagId")
    REFERENCES "shop_tags"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR shop
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('shop', '20261015062410507-feature-matrix', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20261015062410507-feature-matrix', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260824182259319', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260824182259319', "timestamp" = now();


COMMIT;
