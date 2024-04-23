CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	title VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Autors (
	id SERIAL PRIMARY KEY,
	autors VARCHAR(255) NOT NULL,
	title INTEGER NOT NULL REFERENCES Genres(id)
);


CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	year_release date,
	autor INTEGER NOT NULL REFERENCES Autors(id)
);

CREATE TABLE IF NOT EXISTS Songs (
	id SERIAL PRIMARY KEY,
	track VARCHAR(255) NOT NULL,
	track_time DECIMAL(3,2) NOT NULL,
	album INTEGER NOT NULL REFERENCES Albums(id)
);
