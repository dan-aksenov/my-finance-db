--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.10
-- Dumped by pg_dump version 9.4.10
-- Started on 2017-03-05 18:30:02 MSK

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 8 (class 2615 OID 16410)
-- Name: fin_tbls; Type: SCHEMA; Schema: -; Owner: pi
--

CREATE SCHEMA fin_tbls;


ALTER SCHEMA fin_tbls OWNER TO pi;

--
-- TOC entry 1 (class 3079 OID 11863)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2032 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = fin_tbls, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 179 (class 1259 OID 16428)
-- Name: account_type; Type: TABLE; Schema: fin_tbls; Owner: pi; Tablespace: 
--

CREATE TABLE account_type (
    acc_id integer NOT NULL,
    account character varying(100)
);


ALTER TABLE account_type OWNER TO pi;

--
-- TOC entry 178 (class 1259 OID 16426)
-- Name: account_type_acc_id_seq; Type: SEQUENCE; Schema: fin_tbls; Owner: pi
--

CREATE SEQUENCE account_type_acc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_type_acc_id_seq OWNER TO pi;

--
-- TOC entry 2033 (class 0 OID 0)
-- Dependencies: 178
-- Name: account_type_acc_id_seq; Type: SEQUENCE OWNED BY; Schema: fin_tbls; Owner: pi
--

ALTER SEQUENCE account_type_acc_id_seq OWNED BY account_type.acc_id;


--
-- TOC entry 177 (class 1259 OID 16422)
-- Name: expence_categorie; Type: TABLE; Schema: fin_tbls; Owner: pi; Tablespace: 
--

CREATE TABLE expence_categorie (
    cat_id integer NOT NULL,
    categorie character varying(100)
);


ALTER TABLE expence_categorie OWNER TO pi;

--
-- TOC entry 176 (class 1259 OID 16420)
-- Name: expence_categorie_cat_id_seq; Type: SEQUENCE; Schema: fin_tbls; Owner: pi
--

CREATE SEQUENCE expence_categorie_cat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE expence_categorie_cat_id_seq OWNER TO pi;

--
-- TOC entry 2034 (class 0 OID 0)
-- Dependencies: 176
-- Name: expence_categorie_cat_id_seq; Type: SEQUENCE OWNED BY; Schema: fin_tbls; Owner: pi
--

ALTER SEQUENCE expence_categorie_cat_id_seq OWNED BY expence_categorie.cat_id;


--
-- TOC entry 175 (class 1259 OID 16413)
-- Name: transactions; Type: TABLE; Schema: fin_tbls; Owner: pi; Tablespace: 
--

CREATE TABLE transactions (
    trn_id integer NOT NULL,
    trn_date date,
    categorie character varying(100),
    summ numeric,
    account character varying(100),
    note character varying(100)
);


ALTER TABLE transactions OWNER TO pi;

--
-- TOC entry 174 (class 1259 OID 16411)
-- Name: transactions_trn_id_seq; Type: SEQUENCE; Schema: fin_tbls; Owner: pi
--

CREATE SEQUENCE transactions_trn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE transactions_trn_id_seq OWNER TO pi;

--
-- TOC entry 2035 (class 0 OID 0)
-- Dependencies: 174
-- Name: transactions_trn_id_seq; Type: SEQUENCE OWNED BY; Schema: fin_tbls; Owner: pi
--

ALTER SEQUENCE transactions_trn_id_seq OWNED BY transactions.trn_id;


--
-- TOC entry 1903 (class 2604 OID 16431)
-- Name: acc_id; Type: DEFAULT; Schema: fin_tbls; Owner: pi
--

ALTER TABLE ONLY account_type ALTER COLUMN acc_id SET DEFAULT nextval('account_type_acc_id_seq'::regclass);


--
-- TOC entry 1902 (class 2604 OID 16425)
-- Name: cat_id; Type: DEFAULT; Schema: fin_tbls; Owner: pi
--

ALTER TABLE ONLY expence_categorie ALTER COLUMN cat_id SET DEFAULT nextval('expence_categorie_cat_id_seq'::regclass);


--
-- TOC entry 1901 (class 2604 OID 16416)
-- Name: trn_id; Type: DEFAULT; Schema: fin_tbls; Owner: pi
--

ALTER TABLE ONLY transactions ALTER COLUMN trn_id SET DEFAULT nextval('transactions_trn_id_seq'::regclass);


--
-- TOC entry 2024 (class 0 OID 16428)
-- Dependencies: 179
-- Data for Name: account_type; Type: TABLE DATA; Schema: fin_tbls; Owner: pi
--

COPY account_type (acc_id, account) FROM stdin;
1	наличные
2	кредитная карта
3	дебетная карта
4	зарплатная карта
\.


--
-- TOC entry 2036 (class 0 OID 0)
-- Dependencies: 178
-- Name: account_type_acc_id_seq; Type: SEQUENCE SET; Schema: fin_tbls; Owner: pi
--

SELECT pg_catalog.setval('account_type_acc_id_seq', 4, true);


--
-- TOC entry 2022 (class 0 OID 16422)
-- Dependencies: 177
-- Data for Name: expence_categorie; Type: TABLE DATA; Schema: fin_tbls; Owner: pi
--

COPY expence_categorie (cat_id, categorie) FROM stdin;
1	Автомобиль
2	Продукты
3	развлечения
4	Кафе и рестораны
5	Обед на работе
6	Инвестиции
7	Бензин
8	Учёба
9	Промтовары
10	Подарки
11	Квартплата
12	Банк.комиссия
13	Мобильник
14	Интернет
15	Парковка
16	Медицина
17	Транспорт
18	Услуги
19	самолет
20	Гостиница
21	Поезд
22	Другое
23	Спорт
24	Чаевые
\.


--
-- TOC entry 2037 (class 0 OID 0)
-- Dependencies: 176
-- Name: expence_categorie_cat_id_seq; Type: SEQUENCE SET; Schema: fin_tbls; Owner: pi
--

SELECT pg_catalog.setval('expence_categorie_cat_id_seq', 24, true);


--
-- TOC entry 2020 (class 0 OID 16413)
-- Dependencies: 175
-- Data for Name: transactions; Type: TABLE DATA; Schema: fin_tbls; Owner: pi
--

COPY transactions (trn_id, trn_date, categorie, summ, account, note) FROM stdin;
\.


--
-- TOC entry 2038 (class 0 OID 0)
-- Dependencies: 174
-- Name: transactions_trn_id_seq; Type: SEQUENCE SET; Schema: fin_tbls; Owner: pi
--

SELECT pg_catalog.setval('transactions_trn_id_seq', 1, false);


--
-- TOC entry 1909 (class 2606 OID 16444)
-- Name: account_type_pkey; Type: CONSTRAINT; Schema: fin_tbls; Owner: pi; Tablespace: 
--

ALTER TABLE ONLY account_type
    ADD CONSTRAINT account_type_pkey PRIMARY KEY (acc_id);


--
-- TOC entry 1907 (class 2606 OID 16446)
-- Name: expence_categorie_pkey; Type: CONSTRAINT; Schema: fin_tbls; Owner: pi; Tablespace: 
--

ALTER TABLE ONLY expence_categorie
    ADD CONSTRAINT expence_categorie_pkey PRIMARY KEY (cat_id);


--
-- TOC entry 1905 (class 2606 OID 16442)
-- Name: transactions_pkey; Type: CONSTRAINT; Schema: fin_tbls; Owner: pi; Tablespace: 
--

ALTER TABLE ONLY transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (trn_id);


--
-- TOC entry 2031 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-03-05 18:30:03 MSK

--
-- PostgreSQL database dump complete
--

