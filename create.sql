create table if not exists Collections (
	collection_id serial primary key,
	title varchar(40) not null,
	year integer not null
);

create table if not exists Genre (
	genre_id serial primary key,
	name varchar(40) not null
);

create table if not exists Artist (
	artist_id serial primary key,
	nick_name varchar(20) not null,
	birthday integer
);

create table if not exists Album (
	album_id serial primary key,
	name varchar(40) not null,
	year integer not null
);

create table if not exists Track (
	track_id serial primary key,
	name varchar(40) not null,
	year integer,
	duration numeric not null check(duration > 0),
	album_id integer references Album(album_id)
);

create table if not exists ArtistGenre (
	genre_id integer references Genre(genre_id),
	artist_id integer references Artist(artist_id),
	constraint pkArtistGenre primary key (genre_id, artist_id)
);

create table if not exists ArtistAlbum (
	album_id integer references Album(Album_id),
	artist_id integer references Artist(artist_id),
	constraint pkArtistAlbum primary key (album_id, artist_id)
);

create table if not exists TrackCollection (
	tc_id serial primary key,
	track_id integer references Track(track_id),
	collection_id integer references Collections(collection_id)
);