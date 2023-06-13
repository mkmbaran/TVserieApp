CREATE TABLE IF NOT EXISTS shows
(
    id integer PRIMARY KEY AUTOINCREMENT,
    url varchar(255),
    name varchar(255),
    type varchar(255),
    language varchar(255),
    genres varchar(255),
    status varchar(255),
    runtime varchar(255),
    averageRuntime varchar(255),
    premiered varchar(255),
    ended varchar(255),
    officialSite varchar(255),
    schedule varchar(255),
    rating varchar(255),
    weight varchar(255),
    network varchar(255),
    country varchar(255),
    webChannel varchar(255),
    dvdCountry varchar(255),
    externals varchar(255),
    image varchar(255),
    summary varchar(255),
    updated varchar(255),
    _links varchar(255),
    previousepisode varchar(255)
)
