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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    score integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 2);
INSERT INTO public.games VALUES (2, 2, 939);
INSERT INTO public.games VALUES (3, 2, 138);
INSERT INTO public.games VALUES (4, 3, 846);
INSERT INTO public.games VALUES (5, 3, 928);
INSERT INTO public.games VALUES (6, 2, 2);
INSERT INTO public.games VALUES (7, 2, 939);
INSERT INTO public.games VALUES (8, 2, 939);
INSERT INTO public.games VALUES (9, 2, 204);
INSERT INTO public.games VALUES (10, 4, 1);
INSERT INTO public.games VALUES (11, 1, 1);
INSERT INTO public.games VALUES (12, 5, 898);
INSERT INTO public.games VALUES (13, 5, 829);
INSERT INTO public.games VALUES (14, 6, 68);
INSERT INTO public.games VALUES (15, 6, 34);
INSERT INTO public.games VALUES (16, 5, 2);
INSERT INTO public.games VALUES (17, 5, 650);
INSERT INTO public.games VALUES (18, 5, 650);
INSERT INTO public.games VALUES (19, 5, 961);
INSERT INTO public.games VALUES (20, 7, 388);
INSERT INTO public.games VALUES (21, 7, 806);
INSERT INTO public.games VALUES (22, 8, 724);
INSERT INTO public.games VALUES (23, 8, 978);
INSERT INTO public.games VALUES (24, 7, 64);
INSERT INTO public.games VALUES (25, 7, 952);
INSERT INTO public.games VALUES (26, 7, 952);
INSERT INTO public.games VALUES (27, 7, 68);
INSERT INTO public.games VALUES (28, 9, 128);
INSERT INTO public.games VALUES (29, 9, 841);
INSERT INTO public.games VALUES (30, 10, 549);
INSERT INTO public.games VALUES (31, 10, 308);
INSERT INTO public.games VALUES (32, 9, 464);
INSERT INTO public.games VALUES (33, 9, 915);
INSERT INTO public.games VALUES (34, 9, 340);
INSERT INTO public.games VALUES (35, 11, 278);
INSERT INTO public.games VALUES (36, 11, 772);
INSERT INTO public.games VALUES (37, 12, 838);
INSERT INTO public.games VALUES (38, 12, 762);
INSERT INTO public.games VALUES (39, 11, 298);
INSERT INTO public.games VALUES (40, 11, 323);
INSERT INTO public.games VALUES (41, 11, 323);
INSERT INTO public.games VALUES (42, 11, 875);
INSERT INTO public.games VALUES (43, 1, 6);
INSERT INTO public.games VALUES (44, 13, 136);
INSERT INTO public.games VALUES (45, 13, 599);
INSERT INTO public.games VALUES (46, 14, 844);
INSERT INTO public.games VALUES (47, 14, 520);
INSERT INTO public.games VALUES (48, 13, 814);
INSERT INTO public.games VALUES (49, 13, 669);
INSERT INTO public.games VALUES (50, 13, 669);
INSERT INTO public.games VALUES (51, 13, 239);
INSERT INTO public.games VALUES (52, 15, 206);
INSERT INTO public.games VALUES (53, 15, 857);
INSERT INTO public.games VALUES (54, 16, 685);
INSERT INTO public.games VALUES (55, 16, 204);
INSERT INTO public.games VALUES (56, 15, 107);
INSERT INTO public.games VALUES (57, 15, 116);
INSERT INTO public.games VALUES (58, 15, 116);
INSERT INTO public.games VALUES (59, 15, 89);
INSERT INTO public.games VALUES (60, 1, 8);
INSERT INTO public.games VALUES (61, 17, 988);
INSERT INTO public.games VALUES (62, 17, 628);
INSERT INTO public.games VALUES (63, 18, 422);
INSERT INTO public.games VALUES (64, 18, 184);
INSERT INTO public.games VALUES (65, 17, 829);
INSERT INTO public.games VALUES (66, 17, 667);
INSERT INTO public.games VALUES (67, 17, 516);
INSERT INTO public.games VALUES (68, 19, 669);
INSERT INTO public.games VALUES (69, 19, 68);
INSERT INTO public.games VALUES (70, 20, 732);
INSERT INTO public.games VALUES (71, 20, 901);
INSERT INTO public.games VALUES (72, 19, 455);
INSERT INTO public.games VALUES (73, 19, 851);
INSERT INTO public.games VALUES (74, 19, 247);
INSERT INTO public.games VALUES (75, 21, 855);
INSERT INTO public.games VALUES (76, 21, 326);
INSERT INTO public.games VALUES (77, 22, 243);
INSERT INTO public.games VALUES (78, 22, 991);
INSERT INTO public.games VALUES (79, 21, 661);
INSERT INTO public.games VALUES (80, 21, 237);
INSERT INTO public.games VALUES (81, 21, 41);
INSERT INTO public.games VALUES (82, 23, 1000);
INSERT INTO public.games VALUES (83, 23, 630);
INSERT INTO public.games VALUES (84, 24, 541);
INSERT INTO public.games VALUES (85, 24, 886);
INSERT INTO public.games VALUES (86, 23, 955);
INSERT INTO public.games VALUES (87, 23, 636);
INSERT INTO public.games VALUES (88, 23, 636);
INSERT INTO public.games VALUES (89, 23, 471);
INSERT INTO public.games VALUES (90, 25, 930);
INSERT INTO public.games VALUES (91, 25, 407);
INSERT INTO public.games VALUES (92, 26, 603);
INSERT INTO public.games VALUES (93, 26, 848);
INSERT INTO public.games VALUES (94, 25, 267);
INSERT INTO public.games VALUES (95, 25, 580);
INSERT INTO public.games VALUES (96, 25, 580);
INSERT INTO public.games VALUES (97, 25, 660);
INSERT INTO public.games VALUES (98, 27, 325);
INSERT INTO public.games VALUES (99, 27, 599);
INSERT INTO public.games VALUES (100, 28, 716);
INSERT INTO public.games VALUES (101, 28, 694);
INSERT INTO public.games VALUES (102, 27, 410);
INSERT INTO public.games VALUES (103, 27, 281);
INSERT INTO public.games VALUES (104, 27, 281);
INSERT INTO public.games VALUES (105, 27, 841);
INSERT INTO public.games VALUES (106, 29, 11);
INSERT INTO public.games VALUES (107, 30, 858);
INSERT INTO public.games VALUES (108, 30, 260);
INSERT INTO public.games VALUES (109, 31, 758);
INSERT INTO public.games VALUES (110, 31, 52);
INSERT INTO public.games VALUES (111, 30, 714);
INSERT INTO public.games VALUES (112, 30, 106);
INSERT INTO public.games VALUES (113, 30, 651);
INSERT INTO public.games VALUES (114, 32, 110);
INSERT INTO public.games VALUES (115, 32, 397);
INSERT INTO public.games VALUES (116, 33, 242);
INSERT INTO public.games VALUES (117, 33, 799);
INSERT INTO public.games VALUES (118, 32, 758);
INSERT INTO public.games VALUES (119, 32, 260);
INSERT INTO public.games VALUES (120, 32, 536);
INSERT INTO public.games VALUES (121, 34, 653);
INSERT INTO public.games VALUES (122, 34, 288);
INSERT INTO public.games VALUES (123, 35, 507);
INSERT INTO public.games VALUES (124, 35, 571);
INSERT INTO public.games VALUES (125, 34, 473);
INSERT INTO public.games VALUES (126, 34, 288);
INSERT INTO public.games VALUES (127, 34, 686);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'cceer');
INSERT INTO public.users VALUES (2, 'user_1674197424256');
INSERT INTO public.users VALUES (3, 'user_1674197424255');
INSERT INTO public.users VALUES (4, 'shishir');
INSERT INTO public.users VALUES (5, 'user_1674199451772');
INSERT INTO public.users VALUES (6, 'user_1674199451771');
INSERT INTO public.users VALUES (7, 'user_1674199469261');
INSERT INTO public.users VALUES (8, 'user_1674199469260');
INSERT INTO public.users VALUES (9, 'user_1674199552680');
INSERT INTO public.users VALUES (10, 'user_1674199552679');
INSERT INTO public.users VALUES (11, 'user_1674199599734');
INSERT INTO public.users VALUES (12, 'user_1674199599733');
INSERT INTO public.users VALUES (13, 'user_1674199691532');
INSERT INTO public.users VALUES (14, 'user_1674199691531');
INSERT INTO public.users VALUES (15, 'user_1674199736917');
INSERT INTO public.users VALUES (16, 'user_1674199736916');
INSERT INTO public.users VALUES (17, 'user_1674199875279');
INSERT INTO public.users VALUES (18, 'user_1674199875278');
INSERT INTO public.users VALUES (19, 'user_1674200002417');
INSERT INTO public.users VALUES (20, 'user_1674200002416');
INSERT INTO public.users VALUES (21, 'user_1674200024473');
INSERT INTO public.users VALUES (22, 'user_1674200024472');
INSERT INTO public.users VALUES (23, 'user_1674200182501');
INSERT INTO public.users VALUES (24, 'user_1674200182500');
INSERT INTO public.users VALUES (25, 'user_1674200208083');
INSERT INTO public.users VALUES (26, 'user_1674200208082');
INSERT INTO public.users VALUES (27, 'user_1674200225944');
INSERT INTO public.users VALUES (28, 'user_1674200225943');
INSERT INTO public.users VALUES (29, 'ram');
INSERT INTO public.users VALUES (30, 'user_1674200422555');
INSERT INTO public.users VALUES (31, 'user_1674200422554');
INSERT INTO public.users VALUES (32, 'user_1674200445316');
INSERT INTO public.users VALUES (33, 'user_1674200445315');
INSERT INTO public.users VALUES (34, 'user_1674200481495');
INSERT INTO public.users VALUES (35, 'user_1674200481494');


--
-- Name: game_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_game_id_seq', 127, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Name: games game_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT game_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games game_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT game_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

