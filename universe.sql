--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: constelations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelations (
    constelations_id integer NOT NULL,
    name character varying(50) NOT NULL,
    fact text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.constelations OWNER TO freecodecamp;

--
-- Name: constelations_constelations_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constelations_constelations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constelations_constelations_id_seq OWNER TO freecodecamp;

--
-- Name: constelations_constelations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constelations_constelations_id_seq OWNED BY public.constelations.constelations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    gal_size integer,
    inhabited boolean NOT NULL,
    description text
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
    name character varying(30) NOT NULL,
    size_km numeric,
    orbit_time numeric,
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
    name character varying(30) NOT NULL,
    habitable boolean,
    star_id integer NOT NULL,
    num_moons integer
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
    name character varying(40) NOT NULL,
    temp_in_c numeric,
    galaxy_id integer NOT NULL,
    type character varying(30)
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
-- Name: constelations constelations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelations ALTER COLUMN constelations_id SET DEFAULT nextval('public.constelations_constelations_id_seq'::regclass);


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
-- Data for Name: constelations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelations VALUES (1, 'Leo', 'Named after a creature slain by Hurculese', 1);
INSERT INTO public.constelations VALUES (2, 'Orion', 'Named after Orion', 1);
INSERT INTO public.constelations VALUES (3, 'Canis Major', 'Also known as the Little Bear', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 100000000, true, 'our home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', NULL, false, 'This galaxy will one day merge with ours');
INSERT INTO public.galaxy VALUES (3, 'Antennae Galaxies', 12345678, false, 'Got its name becasue it looks like antena of a bug');
INSERT INTO public.galaxy VALUES (4, 'Backward Galaxy', 2000000, false, 'This galaxy appears to rotate backwards compared to ours');
INSERT INTO public.galaxy VALUES (5, 'Bear Paw Galaxy', 12378945, false, 'This galaxy has to appearance of a bear paw');
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', 1, false, 'Also known as the sleeping beauty galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1740, 27.0, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 67, 0.736, 2);
INSERT INTO public.moon VALUES (3, 'Titan', 3200, 16.0, 3);
INSERT INTO public.moon VALUES (4, 'Titania', 1578, 8.706, 4);
INSERT INTO public.moon VALUES (5, 'Bens Moon', 2377, 0.5, 6);
INSERT INTO public.moon VALUES (6, 'Umbriel', 1200, 4.1, 4);
INSERT INTO public.moon VALUES (7, 'IO', 1821, 1.77, 9);
INSERT INTO public.moon VALUES (8, 'Ganymade', 5148, 7.155, 9);
INSERT INTO public.moon VALUES (9, 'Fake moon', 7145, 4.2, 10);
INSERT INTO public.moon VALUES (10, 'Mimas', 397, 0.2236, 3);
INSERT INTO public.moon VALUES (11, 'Cyllene', 5411, 3.4, 9);
INSERT INTO public.moon VALUES (12, 'Amalthea', 6324, 2.1, 9);
INSERT INTO public.moon VALUES (13, 'Kalyke', 944, 1.1, 9);
INSERT INTO public.moon VALUES (14, 'IDK the moon', 234, 0.23, 12);
INSERT INTO public.moon VALUES (15, 'pft', 445, 1.2, 10);
INSERT INTO public.moon VALUES (16, 'Kallichore', 1266, 26.1, 9);
INSERT INTO public.moon VALUES (17, 'Pasiphae', 332, 34.1, 9);
INSERT INTO public.moon VALUES (18, 'da moon pt 2', 1739, 27.1, 12);
INSERT INTO public.moon VALUES (19, 'Thelxinoe', 675, 0.16, 9);
INSERT INTO public.moon VALUES (20, 'Lazy Moon', 234, 123.67, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, 1);
INSERT INTO public.planet VALUES (2, 'Mars', true, 1, 2);
INSERT INTO public.planet VALUES (3, 'Saturn', false, 1, 146);
INSERT INTO public.planet VALUES (4, 'Uranus', false, 1, 28);
INSERT INTO public.planet VALUES (5, 'Mercury', false, 1, 0);
INSERT INTO public.planet VALUES (6, 'Bens Planet', true, 4, 3);
INSERT INTO public.planet VALUES (7, 'Venus', false, 1, 0);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 1, 16);
INSERT INTO public.planet VALUES (9, 'Jupiter', false, 1, 95);
INSERT INTO public.planet VALUES (10, 'Fake Planet', true, 2, 44);
INSERT INTO public.planet VALUES (11, 'Planet lazy name', true, 5, 1);
INSERT INTO public.planet VALUES (12, 'Earth 2.0', true, 3, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SOL', 5600, 1, 'Yellow Dwarf star');
INSERT INTO public.star VALUES (2, 'Methuselah star', 5777, 1, 'metal-poor subgiant star');
INSERT INTO public.star VALUES (3, 'Adhil', 4998, 2, 'Yellow Dwarf star');
INSERT INTO public.star VALUES (4, 'Unnamed star', 6000, 3, 'Yellow Dwarf star');
INSERT INTO public.star VALUES (5, 'Bear star', 9999, 4, 'Yellow Dwarf star');
INSERT INTO public.star VALUES (6, 'Black eyed star', 4800, 6, 'Yellow Dwarf star');


--
-- Name: constelations_constelations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constelations_constelations_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constelations constelations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelations
    ADD CONSTRAINT constelations_name_key UNIQUE (name);


--
-- Name: constelations constelations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelations
    ADD CONSTRAINT constelations_pkey PRIMARY KEY (constelations_id);


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
-- Name: constelations constelations_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelations
    ADD CONSTRAINT constelations_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

