--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (97, 2018, 'Final', 27, 28, 4, 2);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 29, 30, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 28, 30, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 27, 29, 1, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 28, 31, 3, 2);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 30, 32, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 29, 33, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 27, 34, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 30, 35, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 32, 36, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 29, 37, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 33, 38, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 28, 39, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 31, 40, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 34, 41, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 27, 42, 4, 3);
INSERT INTO public.games VALUES (113, 2014, 'Final', 43, 42, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 44, 33, 3, 0);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 42, 44, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 43, 33, 7, 1);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 44, 45, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 42, 29, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 33, 35, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 43, 27, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 33, 46, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 35, 34, 2, 0);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 27, 47, 2, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 43, 48, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 44, 38, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 45, 49, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 42, 36, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 29, 50, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (27, 'France');
INSERT INTO public.teams VALUES (28, 'Croatia');
INSERT INTO public.teams VALUES (29, 'Belgium');
INSERT INTO public.teams VALUES (30, 'England');
INSERT INTO public.teams VALUES (31, 'Russia');
INSERT INTO public.teams VALUES (32, 'Sweden');
INSERT INTO public.teams VALUES (33, 'Brazil');
INSERT INTO public.teams VALUES (34, 'Uruguay');
INSERT INTO public.teams VALUES (35, 'Colombia');
INSERT INTO public.teams VALUES (36, 'Switzerland');
INSERT INTO public.teams VALUES (37, 'Japan');
INSERT INTO public.teams VALUES (38, 'Mexico');
INSERT INTO public.teams VALUES (39, 'Denmark');
INSERT INTO public.teams VALUES (40, 'Spain');
INSERT INTO public.teams VALUES (41, 'Portugal');
INSERT INTO public.teams VALUES (42, 'Argentina');
INSERT INTO public.teams VALUES (43, 'Germany');
INSERT INTO public.teams VALUES (44, 'Netherlands');
INSERT INTO public.teams VALUES (45, 'Costa Rica');
INSERT INTO public.teams VALUES (46, 'Chile');
INSERT INTO public.teams VALUES (47, 'Nigeria');
INSERT INTO public.teams VALUES (48, 'Algeria');
INSERT INTO public.teams VALUES (49, 'Greece');
INSERT INTO public.teams VALUES (50, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 50, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

