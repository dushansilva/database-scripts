ALTER TABLE AM_SUBSCRIPTION_KEY_MAPPING ALTER COLUMN ACCESS_TOKEN VARCHAR(512);
ALTER TABLE AM_SUBSCRIPTION_KEY_MAPPING
DROP CONSTRAINT PK__AM_SUBSC__96AC7A74DEE8C648;