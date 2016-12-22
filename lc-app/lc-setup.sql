-- This is the main database setup file for the languagecoach tool

-- creates database if it doesn't already exist
-- connects to the main database

DROP DATABASE IF EXISTS languagecoach;
CREATE DATABASE languagecoach;
\c languagecoach

-- creates the initial table of 'users' for the database
-- populates it with a serial id (allocated as primary key)
-- and their name, and their language of study

drop table if exists users;
create table users (
	id serial primary key,
	name text,
	languageofstudy text references languages(languagename)
	);

-- creates the initial table of 'tasks' for the database
-- populates it with a serial id (allocated as primary key)
-- the task itself, and the length of time the task requires
-- (in minutes)

drop table if exists tasks;
create table tasks (
	id serial primary key,
	task text,
	tasklength integer
	);

-- creates the initial table of 'languages' for the database
-- populates it with a serial id (allocated as primary key)
-- the language name, and the option of two aliases for the language

drop table if exists languages;
create table languages (
	id serial primary key,
	languagename text,
	alias1 text,
	alias2 text
	);
