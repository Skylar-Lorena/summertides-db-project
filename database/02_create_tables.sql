CREATE TABLE artists (
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(100) NOT NULL,
    genre VARCHAR(50)
);

CREATE TABLE performances (
    performance_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_id INT NOT NULL,
    stage_id INT NOT NULL,
    performance_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
    FOREIGN KEY (stage_id) REFERENCES stages(stage_id)
);