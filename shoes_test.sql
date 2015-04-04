--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: brands; Type: TABLE; Schema: public; Owner: chitra; Tablespace: 
--

CREATE TABLE brands (
    id integer NOT NULL,
    brand_name character varying
);


ALTER TABLE public.brands OWNER TO chitra;

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: chitra
--

CREATE SEQUENCE brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brands_id_seq OWNER TO chitra;

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chitra
--

ALTER SEQUENCE brands_id_seq OWNED BY brands.id;


--
-- Name: brands_stores; Type: TABLE; Schema: public; Owner: chitra; Tablespace: 
--

CREATE TABLE brands_stores (
    id integer NOT NULL,
    brand_id integer,
    store_id integer
);


ALTER TABLE public.brands_stores OWNER TO chitra;

--
-- Name: brands_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: chitra
--

CREATE SEQUENCE brands_stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brands_stores_id_seq OWNER TO chitra;

--
-- Name: brands_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chitra
--

ALTER SEQUENCE brands_stores_id_seq OWNED BY brands_stores.id;


--
-- Name: stores; Type: TABLE; Schema: public; Owner: chitra; Tablespace: 
--

CREATE TABLE stores (
    id integer NOT NULL,
    store_name character varying
);


ALTER TABLE public.stores OWNER TO chitra;

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: chitra
--

CREATE SEQUENCE stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stores_id_seq OWNER TO chitra;

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chitra
--

ALTER SEQUENCE stores_id_seq OWNED BY stores.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: chitra
--

ALTER TABLE ONLY brands ALTER COLUMN id SET DEFAULT nextval('brands_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: chitra
--

ALTER TABLE ONLY brands_stores ALTER COLUMN id SET DEFAULT nextval('brands_stores_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: chitra
--

ALTER TABLE ONLY stores ALTER COLUMN id SET DEFAULT nextval('stores_id_seq'::regclass);


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: chitra
--

COPY brands (id, brand_name) FROM stdin;
\.


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chitra
--

SELECT pg_catalog.setval('brands_id_seq', 29, true);


--
-- Data for Name: brands_stores; Type: TABLE DATA; Schema: public; Owner: chitra
--

COPY brands_stores (id, brand_id, store_id) FROM stdin;
9	14	16
10	15	16
11	13	14
12	14	14
13	13	13
14	15	13
15	13	16
16	24	17
17	25	18
18	25	19
19	26	28
20	27	29
21	28	29
\.


--
-- Name: brands_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chitra
--

SELECT pg_catalog.setval('brands_stores_id_seq', 21, true);


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: chitra
--

COPY stores (id, store_name) FROM stdin;
\.


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chitra
--

SELECT pg_catalog.setval('stores_id_seq', 31, true);


--
-- Name: brands_pkey; Type: CONSTRAINT; Schema: public; Owner: chitra; Tablespace: 
--

ALTER TABLE ONLY brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: brands_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: chitra; Tablespace: 
--

ALTER TABLE ONLY brands_stores
    ADD CONSTRAINT brands_stores_pkey PRIMARY KEY (id);


--
-- Name: stores_pkey; Type: CONSTRAINT; Schema: public; Owner: chitra; Tablespace: 
--

ALTER TABLE ONLY stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

