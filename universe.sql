--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance_ly numeric,
    age_in_millions_of_years integer,
    galaxy_types text,
    description text,
    is_spiral boolean,
    num_of_stars_in_millions integer
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
-- Name: general_comments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.general_comments (
    name character varying(60),
    general_comments_id integer NOT NULL,
    username character varying(60) NOT NULL,
    date_of_change date NOT NULL,
    comment_text character varying(400) NOT NULL
);


ALTER TABLE public.general_comments OWNER TO freecodecamp;

--
-- Name: general_comments_general_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.general_comments_general_comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.general_comments_general_comments_id_seq OWNER TO freecodecamp;

--
-- Name: general_comments_general_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.general_comments_general_comments_id_seq OWNED BY public.general_comments.general_comments_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    radius_km numeric,
    color character varying(30),
    dist_from_planet_in_km character varying(30),
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    has_life boolean,
    radius integer,
    color character varying(30),
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance_from_center_ly numeric,
    spectral_type text,
    hr_index character varying(10),
    brightness numeric,
    is_in_hr boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: general_comments general_comments_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_comments ALTER COLUMN general_comments_id SET DEFAULT nextval('public.general_comments_general_comments_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2500000, NULL, 'barred spiral', 'some description goes here', true, 1000000);
INSERT INTO public.galaxy VALUES (2, 'Blayk Eye', 5300000, NULL, 'isolated spiral', 'some description goes here', true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Mice Galaxies', 290000000, NULL, 'pair spiral', 'some description goes here', true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 0.003, NULL, 'spiral', 'some description goes here', true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sunflower', 29000000, NULL, 'spiral', 'some description goes here', true, NULL);
INSERT INTO public.galaxy VALUES (7, 'Fantasy Galaxy', 42, NULL, 'circular', 'some description goes here', false, NULL);


--
-- Data for Name: general_comments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.general_comments VALUES ('comment-1', 1, 'user-1', '2022-10-10', 'this is important');
INSERT INTO public.general_comments VALUES ('comment-2', 2, 'user-1', '2022-10-10', 'this is important');
INSERT INTO public.general_comments VALUES ('comment-3', 3, 'user-1', '2022-10-10', 'this is important');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon-1', 2300, 'white', NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon-2', 2300, 'white', NULL, 1);
INSERT INTO public.moon VALUES (3, 'moon-3', 2300, 'white', NULL, 1);
INSERT INTO public.moon VALUES (4, 'moon-4', 2300, 'white', NULL, 1);
INSERT INTO public.moon VALUES (5, 'moon-5', 2300, 'white', NULL, 1);
INSERT INTO public.moon VALUES (6, 'moon-6', 2300, 'white', NULL, 1);
INSERT INTO public.moon VALUES (7, 'moon-7', 2300, 'white', NULL, 1);
INSERT INTO public.moon VALUES (8, 'moon-8', 2300, 'white', NULL, 1);
INSERT INTO public.moon VALUES (9, 'moon-9', 2300, 'white', NULL, 2);
INSERT INTO public.moon VALUES (10, 'moon-10', 2300, 'white', NULL, 2);
INSERT INTO public.moon VALUES (11, 'moon-11', 2300, 'white', NULL, 2);
INSERT INTO public.moon VALUES (12, 'moon-12', 2300, 'white', NULL, 2);
INSERT INTO public.moon VALUES (13, 'moon-13', 2300, 'white', NULL, 2);
INSERT INTO public.moon VALUES (14, 'moon-14', 2300, 'white', NULL, 2);
INSERT INTO public.moon VALUES (15, 'moon-15', 2300, 'white', NULL, 2);
INSERT INTO public.moon VALUES (16, 'moon-16', 2300, 'white', NULL, 2);
INSERT INTO public.moon VALUES (17, 'moon-17', 2300, 'white', NULL, 2);
INSERT INTO public.moon VALUES (18, 'moon-18', 2300, 'white', NULL, 2);
INSERT INTO public.moon VALUES (19, 'moon-19', 2300, 'white', NULL, 2);
INSERT INTO public.moon VALUES (20, 'moon-20', 2300, 'white', NULL, 2);
INSERT INTO public.moon VALUES (21, 'moon-21', 2300, 'white', NULL, 3);
INSERT INTO public.moon VALUES (22, 'moon-22', 2300, 'white', NULL, 3);
INSERT INTO public.moon VALUES (23, 'moon-23', 2300, 'white', NULL, 3);
INSERT INTO public.moon VALUES (24, 'moon-24', 2300, 'white', NULL, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'abc-1', false, NULL, 'blue', 1);
INSERT INTO public.planet VALUES (2, 'abc-2', true, NULL, 'blue', 1);
INSERT INTO public.planet VALUES (3, 'abc-3', true, NULL, 'blue', 1);
INSERT INTO public.planet VALUES (5, 'def-3', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (6, 'def-1', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (7, 'def-2', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (10, 'df-2', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (11, 'gef-2', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (12, 'def-16', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (13, 'def-11', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (14, 'def-13', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (15, 'def-15', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (16, 'gdf-2', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (17, 'g3f-2', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (18, 'def-23', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (19, 'def-22', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (20, 'def-21', false, NULL, 'red', 3);
INSERT INTO public.planet VALUES (21, 'def-20', false, NULL, 'red', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'test-1', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (3, 'test-2', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (4, 'test-3', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (5, 'test-5', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (6, 'test-reds', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (7, 'test-redsss', NULL, NULL, NULL, NULL, NULL, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: general_comments_general_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.general_comments_general_comments_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: general_comments general_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_comments
    ADD CONSTRAINT general_comments_pkey PRIMARY KEY (general_comments_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: general_comments name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.general_comments
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: galaxy name_unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique_galaxy UNIQUE (name);


--
-- Name: moon name_unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_unique_moon UNIQUE (name);


--
-- Name: planet name_unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique_planet UNIQUE (name);


--
-- Name: star name_unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique_star UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

