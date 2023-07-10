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
-- Name: bigbang; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.bigbang (
    bigbang_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(60)
);


ALTER TABLE public.bigbang OWNER TO freecodecamp;

--
-- Name: bigbang_bigbang_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.bigbang_bigbang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bigbang_bigbang_id_seq OWNER TO freecodecamp;

--
-- Name: bigbang_bigbang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.bigbang_bigbang_id_seq OWNED BY public.bigbang.bigbang_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    mass numeric(3,1),
    size integer,
    type character varying(60)
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
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    size integer,
    mass numeric(4,2),
    surface text,
    solo boolean,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60),
    size integer,
    mass numeric(4,1),
    color character varying(60),
    composition character varying(60),
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    galaxy_id integer NOT NULL,
    mass integer,
    color character varying(60),
    galaxy_star boolean
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
-- Name: bigbang bigbang_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bigbang ALTER COLUMN bigbang_id SET DEFAULT nextval('public.bigbang_bigbang_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: bigbang; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.bigbang VALUES (14, 1, 1, 1, 'The Bath Item Gift Hypothesis');
INSERT INTO public.bigbang VALUES (15, 2, 6, 2, 'The Adhesive Duck Deficiency');
INSERT INTO public.bigbang VALUES (16, 1, 3, 4, 'The Lunar Excitation');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 1.5, 100000, 'Spiral Galaxy');
INSERT INTO public.galaxy VALUES (2, 'Triangulum Galaxy', 50.0, 60000, 'Spiral Galaxy');
INSERT INTO public.galaxy VALUES (3, 'Sombrero Galaxy', 80.0, 50000, 'Spiral Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 60.0, 60000, 'Spiral Galaxy');
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 10.0, 140000, 'Irregular Galaxy');
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 1.0, 600000, 'Elliptical Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Europa', 3122, 1.48, 'Smooth-ice', false, 6);
INSERT INTO public.moon VALUES (3, 'Titan', 5150, 1.45, 'Methane-lakes', false, 7);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5268, 1.28, 'Craters', false, 6);
INSERT INTO public.moon VALUES (5, 'Callisto', 4820, 1.35, 'Craters', false, 6);
INSERT INTO public.moon VALUES (6, 'Enceladus', 504, 1.18, 'Geysers', false, 7);
INSERT INTO public.moon VALUES (7, 'Io', 3643, 1.45, 'Volcanic', false, 6);
INSERT INTO public.moon VALUES (8, 'Triton', 2706, 1.89, 'Geysers', false, 9);
INSERT INTO public.moon VALUES (1, 'Luna', 3474, 1.81, 'Craters-maria', true, 4);
INSERT INTO public.moon VALUES (9, 'Mimas', 396, 1.10, 'Impact Crater', false, 7);
INSERT INTO public.moon VALUES (10, 'Phobos', 22, 1.10, 'Craters', false, 5);
INSERT INTO public.moon VALUES (11, 'Deimos', 12, 1.50, 'Craters', false, 7);
INSERT INTO public.moon VALUES (12, 'Rhea', 1528, 1.90, 'Craters', false, 7);
INSERT INTO public.moon VALUES (13, 'Lapetus', 1470, 1.70, 'Bright and dark', false, 7);
INSERT INTO public.moon VALUES (14, 'Hyperion', 270, 1.70, 'Irregular shape', false, 7);
INSERT INTO public.moon VALUES (15, 'Miranda', 472, 1.26, 'Tectonic', false, 8);
INSERT INTO public.moon VALUES (16, 'Oberon', 1523, 1.26, 'Tectonic', false, 8);
INSERT INTO public.moon VALUES (17, 'Titania', 1578, 1.45, 'Craters', false, 8);
INSERT INTO public.moon VALUES (18, 'Ariel', 1157, 1.29, 'Extensive grooves', false, 8);
INSERT INTO public.moon VALUES (19, 'Nereid', 340, 1.40, 'Irregular shape', true, 9);
INSERT INTO public.moon VALUES (20, 'Charon', 1212, 1.15, 'Impact craters', true, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4879, 0.5, 'Grayish-brown', 'Rocky', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 12104, 0.8, 'Yellowish-white', 'Rocky', 1);
INSERT INTO public.planet VALUES (4, 'Earth', 12742, 1.0, 'Blue and Green', 'Rocky', 3);
INSERT INTO public.planet VALUES (5, 'Mars', 6779, 0.1, 'Reddish', 'Rocky', 4);
INSERT INTO public.planet VALUES (6, 'Jupiter', 139820, 3.0, 'Yellow-brown', 'Hydrogen', 4);
INSERT INTO public.planet VALUES (7, 'Saturn', 116460, 95.0, 'Yellowish', 'Hydrogen', 4);
INSERT INTO public.planet VALUES (8, 'Uranus', 50724, 14.0, 'Pale-blue', 'Hydrogen', 4);
INSERT INTO public.planet VALUES (9, 'Neptune', 49244, 17.0, 'Bluish', 'Hydrogen', 6);
INSERT INTO public.planet VALUES (10, 'Pluto', 2377, 0.0, 'Brown-white', 'Rock and Ice', 6);
INSERT INTO public.planet VALUES (11, 'Kepler', 18775, 4.6, 'Unknown', 'Rocky', 7);
INSERT INTO public.planet VALUES (12, 'HD 189733b', 198325, 1.1, 'Deep-blue', 'Gas', 7);
INSERT INTO public.planet VALUES (13, 'WASP-12b', 160000, 1.4, 'Unknown', 'Gas', 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 1, 2, 'White-Blue', true);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 2, 10, 'Reddish-Orange', false);
INSERT INTO public.star VALUES (4, 'Rigel', 3, 23, 'Blue-White', false);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 4, 12, 'Dim red', false);
INSERT INTO public.star VALUES (7, 'Vega', 5, 21, 'Bluish-White', true);
INSERT INTO public.star VALUES (8, 'Antares', 6, 15, 'Reddish', true);


--
-- Name: bigbang_bigbang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.bigbang_bigbang_id_seq', 16, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: bigbang bigbang_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bigbang
    ADD CONSTRAINT bigbang_name_key UNIQUE (name);


--
-- Name: bigbang bigbang_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bigbang
    ADD CONSTRAINT bigbang_pkey PRIMARY KEY (bigbang_id);


--
-- Name: bigbang bigbang_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bigbang
    ADD CONSTRAINT bigbang_star_id_key UNIQUE (star_id);


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
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: bigbang bigbang_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bigbang
    ADD CONSTRAINT bigbang_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: bigbang bigbang_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bigbang
    ADD CONSTRAINT bigbang_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: bigbang bigbang_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bigbang
    ADD CONSTRAINT bigbang_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

