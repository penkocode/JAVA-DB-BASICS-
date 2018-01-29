ALTER TABLE minions
ADD town_id INT NOT NULL;
ALTER TABLE minions ADD CONSTRAINT fk_minions_town_id
FOREIGN KEY (town_id) REFERENCES towns (id);