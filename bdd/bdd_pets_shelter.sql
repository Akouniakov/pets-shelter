CREATE TABLE "PetType" (
  "pet_type_id" SERIAL PRIMARY KEY,
  "name" varchar(255) NOT NULL,
  "type" varchar(255) NOT NULL
);

CREATE TABLE "Shelter" (
  "shelter_id" SERIAL PRIMARY KEY,
  "name" varchar(255) NOT NULL,
  "country" varchar(255) NOT NULL,
  "city" varchar(255) NOT NULL,
  "adress" varchar(255) NOT NULL
);

CREATE TABLE "Pet" (
  "pet_id" SERIAL PRIMARY KEY,
  "pet_type" int NOT NULL,
  "name" varchar(255) NOT NULL,
  "age" int NOT NULL,
  "date_in" timestamp NOT NULL,
  "date_out" timestamp NOT NULL
);

CREATE TABLE "Owner" (
  "owner_id" SERIAL PRIMARY KEY,
  "name" varchar NOT NULL,
  "city" varchar NOT NULL,
  "adress" varchar NOT NULL
);

CREATE TABLE "Shelter_Pet" (
  "shelter_id" int NOT NULL,
  "pet_id" int NOT NULL,
  "date_in" datetime NOT NULL,
  "date_out" datefime,
  "present" bool NOT NULL
);

CREATE TABLE "Owner_Pet" (
  "owner_id" int NOT NULL,
  "pet_id" int NOT NULL
);

ALTER TABLE "Pet" ADD FOREIGN KEY ("pet_type") REFERENCES "PetType" ("pet_type_id");

ALTER TABLE "Shelter_Pet" ADD FOREIGN KEY ("shelter_id") REFERENCES "Shelter" ("shelter_id");

ALTER TABLE "Shelter_Pet" ADD FOREIGN KEY ("pet_id") REFERENCES "Pet" ("pet_id");

ALTER TABLE "Owner_Pet" ADD FOREIGN KEY ("owner_id") REFERENCES "Owner" ("owner_id");

ALTER TABLE "Owner_Pet" ADD FOREIGN KEY ("pet_id") REFERENCES "Pet" ("pet_id");
