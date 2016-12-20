-- This is the main database setup file for the languagecoach tool

-- creates database if it doesn't already exist
-- connects to the main database

DROP DATABASE IF EXISTS languagecoach;
CREATE DATABASE languagecoach;
\c languagecoach