package com.example.tvserieapp;


import jakarta.persistence.*;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "Shows")
public class Show implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;
    @Column(name = "url")
    private String url;
    @Column(name = "name")
    private String name;
    @Column(name = "type")
    private String type;
    @Column(name = "language")
    private String language;

    @Column(name = "genres")
    @ElementCollection
    private Set<String> genres = new HashSet<>();
    @Column(name = "status")
    private String status;
    @Column(name = "runtime")
    private Integer runtime;
    @Column(name = "averageRuntime")
    private Integer averageRuntime;
    @Column(name = "premiered")
    private String premiered;
    @Column(name = "ended")
    private String ended;
    @Column(name = "officialSite")
    private String officialSite;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "schedule_id",referencedColumnName = "id")
    private Schedule schedule;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "rating_id",referencedColumnName = "id")
    private Rating rating;
    @Column(name = "weight")
    private Integer weight;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "network_networkId",referencedColumnName = "networkId")
    private Network network;
    @OneToOne
    @JoinColumn(name = "webchannel_id",referencedColumnName = "id")
    private Webchannel webchannel;
    @Column(name = "dvdCountry")
    private String dvdCountry;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id",referencedColumnName = "id")
    private Externals externals;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "image_id",referencedColumnName = "id")
    private Image image;
    @Column(name = "summary", length = 2000)
    private String summary;
    @Column(name = "updated")
    private Integer updated;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "links_id",referencedColumnName = "id")
    private Links _links;

    public Show(Integer id, String url, String name, String type, String language, Set<String> genres, String status, Integer runtime, Integer averageRuntime, String premiered, String ended, String officialSite, Schedule schedule, Rating rating, Integer weight, Network network, Webchannel webchannel, String dvdCountry, Externals externals, Image image, String summary, Integer updated, Links _links) {
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
        this.schedule = schedule;
        this.rating = rating;
        this.weight = weight;
        this.network = network;
        this.webchannel = webchannel;
        this.dvdCountry = dvdCountry;
        this.externals = externals;
        this.image = image;
        this.summary = summary;
        this.updated = updated;
        this._links = _links;
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

    public Set<String> getGenres() {
        return genres;
    }

    public void setGenres(Set<String> genres) {
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

    public Integer getAverageRuntime() {
        return averageRuntime;
    }

    public void setAverageRuntime(Integer averageRuntime) {
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

    public Schedule getSchedule() {
        return schedule;
    }

    public void setSchedule(Schedule schedule) {
        this.schedule = schedule;
    }

    public Rating getRating() {
        return rating;
    }

    public void setRating(Rating rating) {
        this.rating = rating;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public Network getNetwork() {
        return network;
    }

    public void setNetwork(Network network) {
        this.network = network;
    }

    public Webchannel getWebchannel() {
        return webchannel;
    }

    public void setWebchannel(Webchannel webchannel) {
        this.webchannel = webchannel;
    }

    public String getDvdCountry() {
        return dvdCountry;
    }

    public void setDvdCountry(String dvdCountry) {
        this.dvdCountry = dvdCountry;
    }

    public Externals getExternals() {
        return externals;
    }

    public void setExternals(Externals externals) {
        this.externals = externals;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public Integer getUpdated() {
        return updated;
    }

    public void setUpdated(Integer updated) {
        this.updated = updated;
    }

    public Links get_links() {
        return _links;
    }

    public void set_links(Links _links) {
        this._links = _links;
    }
}

@Entity
class Schedule{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "time")
    private String time;
    @Column(name = "days")
    @ElementCollection
    private Set<String> days = new HashSet<>();

    @OneToOne(mappedBy = "schedule")
    private Show show;

    public Schedule(int id, String time, Set<String> days) {
        this.id = id;
        this.time = time;
        this.days = days;
    }

    public Schedule(){
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Set<String> getDays() {
        return days;
    }

    public void setDays(Set<String> days) {
        this.days = days;
    }
}

@Entity
class Rating{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "average")
    private Double average;

    @OneToOne(mappedBy = "rating")
    private Show show;

    public Rating(int id, Double average) {
        this.id = id;
        this.average = average;
    }

    public Rating(){
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Double getAverage() {
        return average;
    }

    public void setAverage(Double average) {
        this.average = average;
    }
}

@Entity
class Network{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int networkId;
    @Column(name = "id")
    private Integer id;
    @Column(name = "name")
    private String name;
    @JoinColumn(name = "country_id", referencedColumnName = "id")
    @OneToOne(cascade = CascadeType.ALL)
    private NetworkCountry country;
    @Column(name = "officialName")
    private String officialSite;

    @OneToOne(mappedBy = "network")
    private Show show;

    public Network(int networkId, Integer id, String name, NetworkCountry country, String officialSite) {
        this.networkId = networkId;
        this.id = id;
        this.name = name;
        this.country = country;
        this.officialSite = officialSite;
    }

    public Network(){
        super();
    }

    public int getNetworkId() {
        return networkId;
    }

    public void setNetworkId(int networkId) {
        this.networkId = networkId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public NetworkCountry getCountry() {
        return country;
    }

    public void setCountry(NetworkCountry country) {
        this.country = country;
    }

    public String getOfficialSite() {
        return officialSite;
    }

    public void setOfficialSite(String officialSite) {
        this.officialSite = officialSite;
    }
}

@Entity
class NetworkCountry{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;
    @Column(name = "name")
    private String name;
    @Column(name = "code")
    private String code;
    @Column(name = "timezone")
    private String timezone;

    @OneToOne(mappedBy = "country")
    private Network network;

    public NetworkCountry(int id, String name, String code, String timezone) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.timezone = timezone;
    }

    public NetworkCountry(){
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTimezone() {
        return timezone;
    }

    public void setTimezone(String timezone) {
        this.timezone = timezone;
    }
}

@Entity
class WebchannelCountry{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;
    @Column(name = "name")
    private String name;
    @Column(name = "code")
    private String code;
    @Column(name = "timezone")
    private String timezone;

    @OneToOne(mappedBy = "country")
    private Webchannel webchannel;

    public WebchannelCountry(int id, String name, String code, String timezone) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.timezone = timezone;
    }

    public WebchannelCountry(){
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTimezone() {
        return timezone;
    }

    public void setTimezone(String timezone) {
        this.timezone = timezone;
    }
}

@Entity
class Webchannel{
    @Id
    @Column(name = "id")
    private Integer id;
    @Column(name = "name")
    private String name;
    @JoinColumn(name = "country_id", referencedColumnName = "id")
    @OneToOne
    private WebchannelCountry country;
    @Column(name = "officialSite")
    private String officialSite;

    @OneToOne(mappedBy = "webchannel")
    private Show show;

    public Webchannel(Integer id, String name, WebchannelCountry country, String officialSite) {
        this.id = id;
        this.name = name;
        this.country = country;
        this.officialSite = officialSite;
    }

    public Webchannel(){
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public WebchannelCountry getCountry() {
        return country;
    }

    public void setCountry(WebchannelCountry country) {
        this.country = country;
    }

    public String getOfficialSite() {
        return officialSite;
    }

    public void setOfficialSite(String officialSite) {
        this.officialSite = officialSite;
    }
}

@Entity
class Externals{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @Column(name = "tvrage")
    private Integer tvrage;
    @Column(name = "thetvdb")
    private Integer thetvdb;
    @Column(name = "imdb")
    private String imdb;

    @OneToOne(mappedBy = "externals")
    private Show show;

    public Externals(int id, Integer tvrage, Integer thetvdb, String imdb) {
        this.id = id;
        this.tvrage = tvrage;
        this.thetvdb = thetvdb;
        this.imdb = imdb;
    }

    public Externals(){
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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
class Image{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "medium")
    private String medium;
    @Column(name = "original")
    private String original;
    @OneToOne(fetch = FetchType.LAZY, mappedBy = "image")
    private Show show;

    public Image(int id, String medium, String original, Show show) {
        this.id = id;
        this.medium = medium;
        this.original = original;
        this.show = show;
    }

    public Image(){
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMedium() {
        return medium;
    }

    public void setMedium(String medium) {
        this.medium = medium;
    }

    public String getOriginal() {
        return original;
    }

    public void setOriginal(String original) {
        this.original = original;
    }

    public Show getShow() {
        return show;
    }

    public void setShow(Show show) {
        this.show = show;
    }
}

@Entity
@Table(name="Links")
class Links{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @OneToOne(cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "self_id", referencedColumnName = "id")
    private Self self;

    @OneToOne(cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "previousepisode_id", referencedColumnName = "id")
    private Previousepisode previousepisode;

    @OneToOne(mappedBy = "_links")
    private Show show;

    public Links(int id, Self self, Previousepisode previousepisode) {
        this.id = id;
        this.self = self;
        this.previousepisode = previousepisode;
    }

    public Links(){
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Self getSelf() {
        return self;
    }

    public void setSelf(Self self) {
        this.self = self;
    }

    public Previousepisode getPreviousepisode() {
        return previousepisode;
    }

    public void setPreviousepisode(Previousepisode previousepisode) {
        this.previousepisode = previousepisode;
    }
}

@Entity
class Self{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "href")
    private String href;

    @OneToOne(fetch = FetchType.LAZY, mappedBy="self")
    private Links links;

    public Self(int id ,String href) {
        this.id = id;
        this.href = href;
    }

    public Self() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }
}

@Entity
class Previousepisode{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "href")
    private String href;

    @OneToOne(fetch = FetchType.LAZY, mappedBy="previousepisode")
    private Links links;

    public Previousepisode(int id, String href) {
        this.href = href;
    }

    public Previousepisode() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }
}