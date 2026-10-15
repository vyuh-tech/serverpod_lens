BEGIN;

--
-- ACTION ALTER TABLE
--
DROP INDEX "shop_member_profile";
ALTER TABLE "shop_members" DROP CONSTRAINT IF EXISTS "shop_members_fk_0";
ALTER TABLE "shop_members" DROP CONSTRAINT IF EXISTS "shop_members_fk_1";
ALTER TABLE "shop_members" RENAME COLUMN "teamId" TO "team_id";
ALTER TABLE "shop_members" RENAME COLUMN "profileId" TO "profile_ref";
ALTER TABLE "shop_members" ALTER COLUMN "profile_ref" DROP NOT NULL;
CREATE UNIQUE INDEX "shop_member_profile" ON "shop_members" USING btree ("profile_ref");
--
-- ACTION ALTER TABLE
--
DROP INDEX "shop_product_tag_pair";
ALTER TABLE "shop_product_tags" DROP CONSTRAINT IF EXISTS "shop_product_tags_fk_1";
ALTER TABLE "shop_product_tags" RENAME COLUMN "tagId" TO "tag_id";
CREATE UNIQUE INDEX "shop_product_tag_pair" ON "shop_product_tags" USING btree ("productId", "tag_id");
--
-- ACTION ALTER TABLE
--
ALTER TABLE "shop_records" RENAME COLUMN "createdAt" TO "created_at";
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "shop_members"
    ADD CONSTRAINT "shop_members_fk_0"
    FOREIGN KEY("team_id")
    REFERENCES "shop_teams"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "shop_members"
    ADD CONSTRAINT "shop_members_fk_1"
    FOREIGN KEY("profile_ref")
    REFERENCES "shop_profiles"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "shop_product_tags"
    ADD CONSTRAINT "shop_product_tags_fk_1"
    FOREIGN KEY("tag_id")
    REFERENCES "shop_tags"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR shop
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('shop', '20261015070749155-model-support', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20261015070749155-model-support', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260824182259319', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260824182259319', "timestamp" = now();


COMMIT;
