import sqlalchemy as sq
from sqlalchemy.orm import declarative_base
from sqlalchemy.orm import sessionmaker, relationship

db = 'postgresql://postgres:password@localhost/orm'
engine = sq.create_engine(db)

Base = declarative_base()
Session = sessionmaker(bind=engine)
Session.configure()


class Collections(Base):
    __tablename__ = 'collections'

    collection_id = sq.Column(sq.Integer, primary_key=True)
    title = sq.Column(sq.String(50), nullable=False)
    year = sq.Column(sq.Integer)
    track = relationship('Track', secondary='trackcollection')


class Genre(Base):
    __tablename__ = 'genre'

    genre_id = sq.Column(sq.Integer, primary_key=True)
    name = sq.Column(sq.String(50), nullable=False)
    artist = relationship('Artist', secondary='artistgenre')


class Artist(Base):
    __tablename__ = 'artist'

    artist_id = sq.Column(sq.Integer, primary_key=True)
    nick_name = sq.Column(sq.String(50), nullable=False)
    gender = sq.Column(sq.String(10))
    country = sq.Column(sq.String(50))
    genre = relationship(Genre, secondary='artistgenre')
    album = relationship('Album', secondary='artistalbum')


artistgenre = sq.Table(
    'artistgenre', Base.metadata,
    sq.Column('genre_id', sq.Integer, sq.ForeignKey(Genre.genre_id), nullable=False),
    sq.Column('artist_id', sq.Integer, sq.ForeignKey(Artist.artist_id), nullable=False),
)


class Album(Base):
    __tablename__ = 'album'

    album_id = sq.Column(sq.Integer, primary_key=True)
    name = sq.Column(sq.String(50), nullable=False)
    year = sq.Column(sq.Integer)
    track = relationship('Track', backref='album')
    artist = relationship(Artist, secondary='artistalbum')


artistalbum = sq.Table(
    'artistalbum', Base.metadata,
    sq.Column('album_id', sq.Integer, sq.ForeignKey(Album.album_id), nullable=False),
    sq.Column('artist_id', sq.Integer, sq.ForeignKey(Artist.artist_id), nullable=False),
)


class Track(Base):
    __tablename__ = 'track'

    track_id = sq.Column(sq.Integer, primary_key=True)
    name = sq.Column(sq.String(50), nullable=False)
    year = sq.Column(sq.Integer)
    duration = sq.Column(sq.Numeric, nullable=False)
    album_id = sq.Column(sq.Integer, sq.ForeignKey(Album.album_id), nullable=False)
    collection = relationship(Collections, secondary='trackcollection')


trackcollection = sq.Table(
    'trackcollection', Base.metadata,
    sq.Column('track_id', sq.Integer, sq.ForeignKey(Track.track_id), nullable=False),
    sq.Column('collection_id', sq.Integer, sq.ForeignKey(Collections.collection_id), nullable=False),
)


if __name__ == '__main__':
    Base.metadata.create_all(engine)
