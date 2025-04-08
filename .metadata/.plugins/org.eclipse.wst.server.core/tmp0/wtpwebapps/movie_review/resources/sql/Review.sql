CREATE TABLE IF NOT EXISTS review(
	r_id VARCHAR(10) NOT NULL,
	r_title VARCHAR(20),
	r_category VARCHAR(10),
	r_star VARCHAR(10),
	r_director VARCHAR(20),
	r_description TEXT,
	r_country VARCHAR(10),
	r_releaseDate VARCHAR(20),
	r_condition VARCHAR(10),
	r_filename VARCHAR(20),
	PRIMARY KEY (r_id)
) default CHARSET = utf8;


select * from review;

DROP TABLE review;