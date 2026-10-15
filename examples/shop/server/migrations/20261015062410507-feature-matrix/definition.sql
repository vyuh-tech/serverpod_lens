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
-- Class ShopBin as table shop_bins
--
CREATE TABLE "shop_bins" (
    "id" bigserial PRIMARY KEY,
    "label" text NOT NULL,
    "_shopWarehousesBinsShopWarehousesId" bigint
);

--
-- Class ShopCategory as table shop_categories
--
CREATE TABLE "shop_categories" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "parentId" bigint
);

--
-- Class Customer as table shop_customers
--
CREATE TABLE "shop_customers" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "email" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "shop_customer_email" ON "shop_customers" USING btree ("email");

--
-- Class ShopMember as table shop_members
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
-- Class OrderItem as table shop_order_items
--
CREATE TABLE "shop_order_items" (
    "id" bigserial PRIMARY KEY,
    "orderId" bigint NOT NULL,
    "productId" bigint NOT NULL,
    "quantity" bigint NOT NULL,
    "unitPrice" double precision NOT NULL
);

-- Indexes
CREATE INDEX "shop_order_item_order" ON "shop_order_items" USING btree ("orderId");

--
-- Class Order as table shop_orders
--
CREATE TABLE "shop_orders" (
    "id" bigserial PRIMARY KEY,
    "customerId" bigint NOT NULL,
    "placedAt" timestamp without time zone NOT NULL,
    "status" text NOT NULL,
    "total" double precision NOT NULL
);

-- Indexes
CREATE INDEX "shop_order_customer" ON "shop_orders" USING btree ("customerId");

--
-- Class ShopProductTag as table shop_product_tags
--
CREATE TABLE "shop_product_tags" (
    "id" bigserial PRIMARY KEY,
    "productId" bigint NOT NULL,
    "tagId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "shop_product_tag_pair" ON "shop_product_tags" USING btree ("productId", "tagId");

--
-- Class Product as table shop_products
--
CREATE TABLE "shop_products" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "sku" text NOT NULL,
    "price" double precision NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "shop_product_sku" ON "shop_products" USING btree ("sku");

--
-- Class ShopProfile as table shop_profiles
--
CREATE TABLE "shop_profiles" (
    "id" bigserial PRIMARY KEY,
    "bio" text NOT NULL
);

--
-- Class ShopRecord as table shop_records
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
-- Class ShopSharedPreference as table shop_shared_preferences
--
CREATE TABLE "shop_shared_preferences" (
    "id" bigserial PRIMARY KEY,
    "key" text NOT NULL,
    "value" text NOT NULL
);

--
-- Class ShopTag as table shop_tags
--
CREATE TABLE "shop_tags" (
    "id" bigserial PRIMARY KEY,
    "label" text NOT NULL
);

--
-- Class ShopTeam as table shop_teams
--
CREATE TABLE "shop_teams" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- Class ShopWarehouse as table shop_warehouses
--
CREATE TABLE "shop_warehouses" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- Class CloudStorageEntry as table serverpod_cloud_storage
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "addedTime" timestamp without time zone NOT NULL,
    "expiration" timestamp without time zone,
    "byteData" bytea NOT NULL,
    "verified" boolean NOT NULL,
    "contentType" text,
    "cacheControl" text,
    "contentDisposition" text,
    "contentEncoding" text,
    "customMetadata" text
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_path_idx" ON "serverpod_cloud_storage" USING btree ("storageId", "path");
CREATE INDEX "serverpod_cloud_storage_expiration" ON "serverpod_cloud_storage" USING btree ("expiration");

--
-- Class CloudStorageDirectDownloadEntry as table serverpod_cloud_storage_direct_download
--
CREATE TABLE "serverpod_cloud_storage_direct_download" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL,
    "downloadFileName" text,
    "contentType" text
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_download_auth_key" ON "serverpod_cloud_storage_direct_download" USING btree ("authKey");
CREATE INDEX "serverpod_cloud_storage_direct_download_expiration" ON "serverpod_cloud_storage_direct_download" USING btree ("expiration");

--
-- Class CloudStorageDirectUploadEntry as table serverpod_cloud_storage_direct_upload
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL,
    "maxFileSize" bigint NOT NULL DEFAULT 10485760,
    "contentLength" bigint,
    "preventOverwrite" boolean NOT NULL DEFAULT false,
    "contentType" text,
    "cacheControl" text,
    "contentDisposition" text,
    "contentEncoding" text,
    "customMetadata" text
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- Class FutureCallEntry as table serverpod_future_call
--
CREATE TABLE "serverpod_future_call" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "serializedObject" text,
    "serverId" text NOT NULL,
    "identifier" text,
    "scheduling" json
);

-- Indexes
CREATE INDEX "serverpod_future_call_time_idx" ON "serverpod_future_call" USING btree ("time");
CREATE INDEX "serverpod_future_call_serverId_idx" ON "serverpod_future_call" USING btree ("serverId");
CREATE INDEX "serverpod_future_call_identifier_idx" ON "serverpod_future_call" USING btree ("identifier");

--
-- Class FutureCallClaimEntry as table serverpod_future_call_claim
--
CREATE TABLE "serverpod_future_call_claim" (
    "id" bigserial PRIMARY KEY,
    "futureCallId" bigint,
    "lastHeartbeatTime" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "future_call_unique_idx" ON "serverpod_future_call_claim" USING btree ("futureCallId");

--
-- Class ServerHealthConnectionInfo as table serverpod_health_connection_info
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" bigint NOT NULL,
    "closing" bigint NOT NULL,
    "idle" bigint NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- Class ServerHealthMetric as table serverpod_health_metric
--
CREATE TABLE "serverpod_health_metric" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- Class LogEntry as table serverpod_log
--
CREATE TABLE "serverpod_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" bigint NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId", "order");

--
-- Class MessageLogEntry as table serverpod_message_log
--
CREATE TABLE "serverpod_message_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "serverId" text NOT NULL,
    "messageId" bigint NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_message_log_sessionLogId_idx" ON "serverpod_message_log" USING btree ("sessionLogId", "order");

--
-- Class MethodInfo as table serverpod_method
--
CREATE TABLE "serverpod_method" (
    "id" bigserial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- Class DatabaseMigrationVersion as table serverpod_migrations
--
CREATE TABLE "serverpod_migrations" (
    "id" bigserial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- Class QueryLogEntry as table serverpod_query_log
--
CREATE TABLE "serverpod_query_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" bigint,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId", "order");

--
-- Class ReadWriteTestEntry as table serverpod_readwrite_test
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" bigserial PRIMARY KEY,
    "number" bigint NOT NULL
);

--
-- Class RuntimeSettings as table serverpod_runtime_settings
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" bigserial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- Class SessionLogEntry as table serverpod_session_log
--
CREATE TABLE "serverpod_session_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" bigint,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" bigint,
    "userId" text,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_time_idx" ON "serverpod_session_log" USING btree ("time");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- Foreign relations for "shop_bins" table
--
ALTER TABLE ONLY "shop_bins"
    ADD CONSTRAINT "shop_bins_fk_0"
    FOREIGN KEY("_shopWarehousesBinsShopWarehousesId")
    REFERENCES "shop_warehouses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "shop_categories" table
--
ALTER TABLE ONLY "shop_categories"
    ADD CONSTRAINT "shop_categories_fk_0"
    FOREIGN KEY("parentId")
    REFERENCES "shop_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "shop_members" table
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
-- Foreign relations for "shop_order_items" table
--
ALTER TABLE ONLY "shop_order_items"
    ADD CONSTRAINT "shop_order_items_fk_0"
    FOREIGN KEY("orderId")
    REFERENCES "shop_orders"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "shop_order_items"
    ADD CONSTRAINT "shop_order_items_fk_1"
    FOREIGN KEY("productId")
    REFERENCES "shop_products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "shop_orders" table
--
ALTER TABLE ONLY "shop_orders"
    ADD CONSTRAINT "shop_orders_fk_0"
    FOREIGN KEY("customerId")
    REFERENCES "shop_customers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "shop_product_tags" table
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
-- Foreign relations for "serverpod_future_call_claim" table
--
ALTER TABLE ONLY "serverpod_future_call_claim"
    ADD CONSTRAINT "serverpod_future_call_claim_fk_0"
    FOREIGN KEY("futureCallId")
    REFERENCES "serverpod_future_call"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_log" table
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_message_log" table
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_query_log" table
--
ALTER TABLE ONLY "serverpod_query_log"
    ADD CONSTRAINT "serverpod_query_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
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
