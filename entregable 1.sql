CREATE TABLE "Users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "Email" varchar NOT NULL,
  "Password" varchar NOT NULL,
  "Age" int NOT NULL
);

CREATE TABLE "Courses" (
  "id" uuid,
  "id_Users" uuid,
  "Title" varchar NOT NULL,
  "Description" varchar NOT NULL,
  "Level" varchar NOT NULL,
  "Teacher" varchar NOT NULL
);

CREATE TABLE "Course_Videos" (
  "id" uuid PRIMARY KEY,
  "id_courses" uuid,
  "Title" varchar NOT NULL,
  "Url" text NOT NULL
);

CREATE TABLE "Categories" (
  "id" uuid PRIMARY KEY,
  "id_courses" uuid,
  "Name" varchar NOT NULL
);

ALTER TABLE "Courses" ADD FOREIGN KEY ("id_Users") REFERENCES "Users" ("id");

ALTER TABLE "Course_Videos" ADD FOREIGN KEY ("id_courses") REFERENCES "Courses" ("id");

ALTER TABLE "Categories" ADD FOREIGN KEY ("id_courses") REFERENCES "Courses" ("id");
