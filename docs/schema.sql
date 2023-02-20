DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS project;

CREATE TABLE user {
  id SERIAL PRIMARY KEY,
  username VarChar(25) NOT NULL,
  password VarChar(MAX) NOT NULL,
  email VarChar(254) NOT NULL,
  registered_date Timestamp NOT NULL,
  projects INT[] NOT NULL
}

CREATE TABLE project {
  id SERIAL PRIMARY KEY,
  title VarChar(25) NOT NULL,
  date_created Timestamp NOT NULL,
  date_modified Timestamp NOT NULL,
  sound_data VarChar(MAX) NOT NULL,
  user_id INT NOT NULL
}