CREATE DATABASE IF NOT EXISTS ndta631;
USE ndta631;

CREATE TABLE IF NOT EXISTS ict_regulatory (
    id INT NOT NULL AUTO_INCREMENT,
    country_code CHAR(3) NOT NULL,
    country_name VARCHAR(100) NOT NULL,
    indicator_code VARCHAR(100) NOT NULL,
    indicator_name VARCHAR(255) NOT NULL,
    unit VARCHAR(100) NULL,
    year SMALLINT NOT NULL,
    value DECIMAL(18, 8) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uq_ict_regulatory (country_code, indicator_code, year)
);

CREATE TABLE IF NOT EXISTS cybersecurity_index (
    id INT NOT NULL AUTO_INCREMENT,
    country_code CHAR(3) NOT NULL,
    country_name VARCHAR(100) NOT NULL,
    indicator_code VARCHAR(100) NOT NULL,
    indicator_name VARCHAR(255) NOT NULL,
    unit VARCHAR(100) NULL,
    year SMALLINT NOT NULL,
    value DECIMAL(18, 8) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uq_cybersecurity_index (country_code, indicator_code, year)
);
