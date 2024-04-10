CREATE DATABASE IF NOT EXISTS collab0x;

USE collab0x;

CREATE TABLE IF NOT EXISTS projects(
  project_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  project_name VARCHAR(200) NOT NULL,
  project_type ENUM('P', 'G') NOT NULL,
  creation datetime DEFAULT CURRENT_TIMESTAMP,
  can_make FLOAT
);

CREATE TABLE IF NOT EXISTS strength(
  strength_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  proj_id INT,

  CONSTRAINT fk_strength_proj
    FOREIGN KEY(proj_id)
    REFERENCES projects(project_id)
);

CREATE TABLE IF NOT EXISTS weakness(
  weakness_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  weak_proj_id INT,

  CONSTRAINT fk_weak_proj
    FOREIGN KEY(weak_proj_id)
    REFERENCES projects(project_id)
);

CREATE TABLE IF NOT EXISTS opportunities(
  opp_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  opp_proj_id INT,

  CONSTRAINT fk_opp_proj
    FOREIGN KEY(opp_proj_id)
    REFERENCES projects(project_id)
);

CREATE TABLE IF NOT EXISTS threats(
  threat_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  threat_proj_id INT,

  CONSTRAINT fk_threat_proj
    FOREIGN KEY(threat_proj_id) 
    REFERENCES projects(project_id)
);

