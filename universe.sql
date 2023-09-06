--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    number_of_games integer,
    score_out_of_10 integer,
    galaxy_id integer NOT NULL,
    fun_out_of_10 integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    type text,
    fun_out_of_10 integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    habitable boolean,
    is_gas boolean,
    description text,
    hours_in_day numeric,
    planet_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: sky; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sky (
    sky_id integer NOT NULL,
    name character varying(20) NOT NULL,
    thickness text
);


ALTER TABLE public.sky OWNER TO freecodecamp;

--
-- Name: sky_sky_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sky_sky_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sky_sky_id_seq OWNER TO freecodecamp;

--
-- Name: sky_sky_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sky_sky_id_seq OWNED BY public.sky.sky_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    fun_out_of_10 integer,
    size numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: sky sky_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sky ALTER COLUMN sky_id SET DEFAULT nextval('public.sky_sky_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Ralsei', 1, 9, 1, NULL);
INSERT INTO public.galaxy VALUES ('Gumi', 0, 2, 2, NULL);
INSERT INTO public.galaxy VALUES ('Beedle', 5, 6, 3, NULL);
INSERT INTO public.galaxy VALUES ('Universe', 10, 10, 4, NULL);
INSERT INTO public.galaxy VALUES ('Express', 1, 8, 5, NULL);
INSERT INTO public.galaxy VALUES ('Bacon', 100, 5, 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Card', 1, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Tasque', 2, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Molduga', 3, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Mitai', 4, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Triple', 5, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Flo', 6, 9, NULL, NULL);
INSERT INTO public.moon VALUES ('Deg', 7, 8, NULL, NULL);
INSERT INTO public.moon VALUES ('Rhoam', 8, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('Can', 9, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Zy', 10, 13, NULL, NULL);
INSERT INTO public.moon VALUES ('Trail', 11, 10, NULL, NULL);
INSERT INTO public.moon VALUES ('Hook', 12, 10, NULL, NULL);
INSERT INTO public.moon VALUES ('Fountain', 13, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Pip', 14, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Summer', 15, 9, NULL, NULL);
INSERT INTO public.moon VALUES ('Alb', 16, 8, NULL, NULL);
INSERT INTO public.moon VALUES ('Ra', 17, 11, NULL, NULL);
INSERT INTO public.moon VALUES ('Lu', 18, 11, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon', 19, 12, NULL, NULL);
INSERT INTO public.moon VALUES ('Pearl', 20, 3, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Lancer', true, false, NULL, 3, 2, 1);
INSERT INTO public.planet VALUES ('Bako', false, false, NULL, 24, 3, 2);
INSERT INTO public.planet VALUES ('Baka', false, false, NULL, 24, 4, 2);
INSERT INTO public.planet VALUES ('Dialtone', true, false, NULL, 24, 5, 1);
INSERT INTO public.planet VALUES ('Gerudo', true, false, NULL, 24, 6, 3);
INSERT INTO public.planet VALUES ('Hyrule', true, false, NULL, 24, 7, 3);
INSERT INTO public.planet VALUES ('Shining', true, false, NULL, 24, 8, 4);
INSERT INTO public.planet VALUES ('Liner', true, false, NULL, 24, 9, 4);
INSERT INTO public.planet VALUES ('Jarilo', true, false, NULL, 24, 10, 5);
INSERT INTO public.planet VALUES ('Xianzhou', true, false, NULL, 24, 11, 5);
INSERT INTO public.planet VALUES ('Beast', true, true, NULL, 25, 12, 6);
INSERT INTO public.planet VALUES ('Ham', true, true, NULL, 12, 13, 6);


--
-- Data for Name: sky; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sky VALUES (1, 'blue', NULL);
INSERT INTO public.sky VALUES (2, 'red', NULL);
INSERT INTO public.sky VALUES (3, 'green', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Rouxls', 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Trash', 2, 2, NULL, NULL);
INSERT INTO public.star VALUES ('Zant', 3, 3, NULL, NULL);
INSERT INTO public.star VALUES ('Expo', 4, 4, NULL, NULL);
INSERT INTO public.star VALUES ('Aha', 5, 5, NULL, NULL);
INSERT INTO public.star VALUES ('Silva', 6, 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: sky_sky_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sky_sky_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: sky sky_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sky
    ADD CONSTRAINT sky_name_key UNIQUE (name);


--
-- Name: sky sky_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sky
    ADD CONSTRAINT sky_pkey PRIMARY KEY (sky_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_plant_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_plant_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

