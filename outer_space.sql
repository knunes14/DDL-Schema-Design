-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets 
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE orbitals 
(
  id SERIAL PRIMARY KEY,
  oribital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL
);

CREATE TABLE galaxy
(
  id SERIAL PRIMARY KEY,
  galaxy TEXT NOT NULL
);

CREATE TABLE moons 
(
  id SERIAL PRIMARY KEY,
  moons TEXT[]
);

INSERT INTO planets (
  name
)
VALUES
  ('Earth'), 
  ('Mars'),
  ('Venus'), 
  ('Neptune'),
  ('Proxima Centauri b'), 
  ('Gliese 876 b');

INSERT INTO orbitals (
  orbital_period_in_years, orbits_around
)
VALUES
  (1.00, 'The Sun'),
  (1.88, 'The Sun'),
  (0.62, 'The Sun'),
  (164.8, 'The Sun'),
  (0.03, 'Proxima Centauri'),
  (0.23, 'Gliese 876');

INSERT INTO galaxy (
  galaxy
)
VALUES 
  ('Milky Way'),
  ('Milky Way'),
  ('Milky Way'),
  ('Milky Way'),
  ('Milky Way'),
  ('Milky Way');

INSERT INTO moons (
  moons
)
VALUES
  ('{"The Moon"}'),
  ('{"Phobos", "Deimos"}'),
  ('{}'),
  ('{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
  ('{}'),
  ('{}');





