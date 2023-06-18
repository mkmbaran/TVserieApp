package com.example.tvserieapp;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import jakarta.persistence.*;
import org.springframework.boot.autoconfigure.domain.EntityScan;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "shows")
public class Show {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String url;
    private String name;
    private String type;
    private String language;
    /*
    @OneToMany(cascade = {CascadeType.ALL})
    private List<Genres> genresList;
     */

    @ElementCollection
    private List<String> genres;

    private String status;
    private Integer runtime;
    private String averageRuntime;
    private String premiered;
    private String ended;
    private String officialSite;
    @OneToMany
    private List<Schedule> schedules;
    @OneToMany
    private List<Rating> ratings;
    private Integer weight;
    @OneToMany
    private List<Network> networks;
    private String country;
    private String webChannel;
    private String dvdCountry;
    @OneToOne(cascade = {CascadeType.ALL})
    private Externals externalsList;
    @OneToMany
    private List<Images> images;
    @Column(length = 1000)
    private String summary;
    private String updated;
    @OneToMany
    private List<Links> links;

    public Show(Integer id, String url, String name, String type, String language, List<String> genres, String status, Integer runtime, String averageRuntime, String premiered, String ended, String officialSite, List<Schedule> schedules, List<Rating> ratings, Integer weight, List<Network> networks, String country, String webChannel, String dvdCountry, Externals externalsList, List<Images> images, String summary, String updated, List<Links> links) {
        this.id = id;
        this.url = url;
        this.name = name;
        this.type = type;
        this.language = language;
        this.genres = genres;
        this.status = status;
        this.runtime = runtime;
        this.averageRuntime = averageRuntime;
        this.premiered = premiered;
        this.ended = ended;
        this.officialSite = officialSite;
        this.schedules = schedules;
        this.ratings = ratings;
        this.weight = weight;
        this.networks = networks;
        this.country = country;
        this.webChannel = webChannel;
        this.dvdCountry = dvdCountry;
        this.externalsList = externalsList;
        this.images = images;
        this.summary = summary;
        this.updated = updated;
        this.links = links;
    }

    public Show() {

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }
/*
    public List<Genres> getGenres() {
        return genresList;
    }

    public void setGenres(List<Genres> genresList) {
        this.genresList = genresList;
    }*/

    public List<String> getGenres() {
        return genres;
    }

    public void setGenres(List<String> genres) {
        this.genres = genres;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getRuntime() {
        return runtime;
    }

    public void setRuntime(Integer runtime) {
        this.runtime = runtime;
    }

    public String getAverageRuntime() {
        return averageRuntime;
    }

    public void setAverageRuntime(String averageRuntime) {
        this.averageRuntime = averageRuntime;
    }

    public String getPremiered() {
        return premiered;
    }

    public void setPremiered(String premiered) {
        this.premiered = premiered;
    }

    public String getEnded() {
        return ended;
    }

    public void setEnded(String ended) {
        this.ended = ended;
    }

    public String getOfficialSite() {
        return officialSite;
    }

    public void setOfficialSite(String officialSite) {
        this.officialSite = officialSite;
    }

    public List<Schedule> getSchedules() {
        return schedules;
    }

    public void setSchedules(List<Schedule> schedules) {
        this.schedules = schedules;
    }

    public List<Rating> getRatings() {
        return ratings;
    }

    public void setRatings(List<Rating> ratings) {
        this.ratings = ratings;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public List<Network> getNetworks() {
        return networks;
    }

    public void setNetworks(List<Network> networks) {
        this.networks = networks;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getWebChannel() {
        return webChannel;
    }

    public void setWebChannel(String webChannel) {
        this.webChannel = webChannel;
    }

    public String getDvdCountry() {
        return dvdCountry;
    }

    public void setDvdCountry(String dvdCountry) {
        this.dvdCountry = dvdCountry;
    }

    public Externals getExternals() {
        return externalsList;
    }

    @JsonProperty("externals")
    public void setExternals(Externals externalsList) {
        this.externalsList = externalsList;
    }

    public List<Images> getImages() {
        return images;
    }

    public void setImages(List<Images> images) {
        this.images = images;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getUpdated() {
        return updated;
    }

    public void setUpdated(String updated) {
        this.updated = updated;
    }

    public List<Links> getLinks() {
        return links;
    }

    public void setLinks(List<Links> links) {
        this.links = links;
    }
}
/*
@Entity
class Genres{
    @Id
    private String genres = "defaultGenre";

    public Genres(String genres) {
        this.genres = genres;
    }

    public Genres(){
        super();
    }

    public String getGenres() {
        return genres;
    }

    public void setGenres(String genres) {
        this.genres = genres;
    }
}*/

@Entity
class Schedule{
    @Id
    private String timeSchedule;

    @OneToMany
    private List<Day> days;

    public Schedule(String timeSchedule, List<Day> days) {
        this.timeSchedule = timeSchedule;
        this.days = days;
    }

    public Schedule(){
        super();
    }

    public String getTimeSchedule() {
        return timeSchedule;
    }

    public void setTimeSchedule(String timeSchedule) {
        this.timeSchedule = timeSchedule;
    }

    public List<Day> getDays() {
        return days;
    }

    public void setDays(List<Day> days) {
        this.days = days;
    }
}

@Entity
class Day{
    @Id
    private String dayOfTheWeek;

    public Day(String dayOfTheWeek) {
        this.dayOfTheWeek = dayOfTheWeek;
    }

    public Day(){
        super();
    }

    public String getDayOfTheWeek() {
        return dayOfTheWeek;
    }

    public void setDayOfTheWeek(String dayOfTheWeek) {
        this.dayOfTheWeek = dayOfTheWeek;
    }
}

@Entity
class Rating{
    @Id
    private String rating;
    private Double score;

    public Rating(String rating, Double score) {
        this.rating = rating;
        this.score = score;
    }

    public Rating(){
        super();
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }
}

@Entity
class Network{
    @Id
    private Integer networkId;
    private String networkName;
    @OneToMany
    private List<Country> countries;

    public Network(Integer networkId, String networkName, List<Country> countries) {
        this.networkId = networkId;
        this.networkName = networkName;
        this.countries = countries;
    }

    public Network(){
        super();
    }

    public Integer getNetworkId() {
        return networkId;
    }

    public void setNetworkId(Integer networkId) {
        this.networkId = networkId;
    }

    public String getNetworkName() {
        return networkName;
    }

    public void setNetworkName(String networkName) {
        this.networkName = networkName;
    }

    public List<Country> getCountries() {
        return countries;
    }

    public void setCountries(List<Country> countries) {
        this.countries = countries;
    }
}

@Entity
class Country{
    @Id
    private String countryName;
    private String countryCode;
    private String countryTimezone;

    public Country(String countryName, String countryCode, String countryTimezone) {
        this.countryName = countryName;
        this.countryCode = countryCode;
        this.countryTimezone = countryTimezone;
    }

    public Country(){
        super();
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public String getCountryTimezone() {
        return countryTimezone;
    }

    public void setCountryTimezone(String countryTimezone) {
        this.countryTimezone = countryTimezone;
    }
}

@Entity
class Externals{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer extId;
    @JsonProperty("tvrage")
    private Integer tvrage;
    @JsonProperty("thetvdb")
    private Integer thetvdb;
    @JsonProperty("imdb")
    private String imdb;

    public Externals(Integer extId, Integer tvrage, Integer thetvdb, String imdb) {
        this.extId = extId;
        this.tvrage = tvrage;
        this.thetvdb = thetvdb;
        this.imdb = imdb;
    }

    public Externals(){
        super();
    }

    public Integer getExtId(){return extId;};

    public void setExtId(Integer extId){this.extId = extId;};

    public Integer getTvrage() {
        return tvrage;
    }

    public void setTvrage(Integer tvrage) {
        this.tvrage = tvrage;
    }

    public Integer getThetvdb() {
        return thetvdb;
    }

    public void setThetvdb(Integer thetvdb) {
        this.thetvdb = thetvdb;
    }

    public String getImdb() {
        return imdb;
    }

    public void setImdb(String imdb) {
        this.imdb = imdb;
    }
}

@Entity
class Images{
    @Id
    private String imageMedium;
    private String imageOriginal;

    public Images(String imageMedium, String imageOriginal) {
        this.imageMedium = imageMedium;
        this.imageOriginal = imageOriginal;
    }

    public Images(){
        super();
    }

    public String getImageMedium() {
        return imageMedium;
    }

    public void setImageMedium(String imageMedium) {
        this.imageMedium = imageMedium;
    }

    public String getImageOriginal() {
        return imageOriginal;
    }

    public void setImageOriginal(String imageOriginal) {
        this.imageOriginal = imageOriginal;
    }
}

@Entity
class Links{
    @Id
    private Integer LinkId;
    @OneToMany
    private List<LinkSelf> linkSelves;

    @OneToMany
    private List<LinkPrevEpisode> linkPrevEpisodes;

    public Links(Integer linkId, List<LinkSelf> linkSelves, List<LinkPrevEpisode> linkPrevEpisodes) {
        LinkId = linkId;
        this.linkSelves = linkSelves;
        this.linkPrevEpisodes = linkPrevEpisodes;
    }

    public Links(){
        super();
    }

    public Integer getLinkId() {
        return LinkId;
    }

    public void setLinkId(Integer linkId) {
        LinkId = linkId;
    }

    public List<LinkSelf> getLinkSelves() {
        return linkSelves;
    }

    public void setLinkSelves(List<LinkSelf> linkSelves) {
        this.linkSelves = linkSelves;
    }

    public List<LinkPrevEpisode> getLinkPrevEpisodes() {
        return linkPrevEpisodes;
    }

    public void setLinkPrevEpisodes(List<LinkPrevEpisode> linkPrevEpisodes) {
        this.linkPrevEpisodes = linkPrevEpisodes;
    }
}

@Entity
class LinkSelf{
    @Id
    private String selfRef;

    public LinkSelf(String selfRef) {
        this.selfRef = selfRef;
    }

    public LinkSelf() {
        super();
    }

    public String getSelfRef() {
        return selfRef;
    }

    public void setSelfRef(String selfRef) {
        this.selfRef = selfRef;
    }
}

@Entity
class LinkPrevEpisode{
    @Id
    private String prevRef;

    public LinkPrevEpisode(String prevRef) {
        this.prevRef = prevRef;
    }

    public LinkPrevEpisode() {
        super();
    }

    public String getPrevRef() {
        return prevRef;
    }

    public void setPrevRef(String prevRef) {
        this.prevRef = prevRef;
    }
}