--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.10
-- Dumped by pg_dump version 9.4.10
-- Started on 2017-03-24 23:26:45 MSK

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 7 (class 2615 OID 16501)
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
-- TOC entry 2044 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = fin_tbls, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 174 (class 1259 OID 16502)
-- Name: account_type; Type: TABLE; Schema: fin_tbls; Owner: pi; Tablespace: 
--

CREATE TABLE account_type (
    acc_id integer NOT NULL,
    account character varying(100)
);


ALTER TABLE account_type OWNER TO pi;

--
-- TOC entry 175 (class 1259 OID 16505)
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
-- TOC entry 2045 (class 0 OID 0)
-- Dependencies: 175
-- Name: account_type_acc_id_seq; Type: SEQUENCE OWNED BY; Schema: fin_tbls; Owner: pi
--

ALTER SEQUENCE account_type_acc_id_seq OWNED BY account_type.acc_id;


--
-- TOC entry 176 (class 1259 OID 16507)
-- Name: expence_categorie; Type: TABLE; Schema: fin_tbls; Owner: pi; Tablespace: 
--

CREATE TABLE expence_categorie (
    cat_id integer NOT NULL,
    categorie character varying(100)
);


ALTER TABLE expence_categorie OWNER TO pi;

--
-- TOC entry 177 (class 1259 OID 16510)
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
-- TOC entry 2046 (class 0 OID 0)
-- Dependencies: 177
-- Name: expence_categorie_cat_id_seq; Type: SEQUENCE OWNED BY; Schema: fin_tbls; Owner: pi
--

ALTER SEQUENCE expence_categorie_cat_id_seq OWNED BY expence_categorie.cat_id;


--
-- TOC entry 181 (class 1259 OID 16558)
-- Name: income; Type: TABLE; Schema: fin_tbls; Owner: pi; Tablespace: 
--

CREATE TABLE income (
    inc_id integer NOT NULL,
    inc_date date,
    income_summ numeric,
    saving numeric,
    credit numeric
);


ALTER TABLE income OWNER TO pi;

--
-- TOC entry 180 (class 1259 OID 16556)
-- Name: income_inc_id_seq; Type: SEQUENCE; Schema: fin_tbls; Owner: pi
--

CREATE SEQUENCE income_inc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE income_inc_id_seq OWNER TO pi;

--
-- TOC entry 2047 (class 0 OID 0)
-- Dependencies: 180
-- Name: income_inc_id_seq; Type: SEQUENCE OWNED BY; Schema: fin_tbls; Owner: pi
--

ALTER SEQUENCE income_inc_id_seq OWNED BY income.inc_id;


--
-- TOC entry 178 (class 1259 OID 16512)
-- Name: transactions; Type: TABLE; Schema: fin_tbls; Owner: pi; Tablespace: 
--

CREATE TABLE transactions (
    trn_id integer NOT NULL,
    trn_date date NOT NULL,
    categorie integer NOT NULL,
    summ numeric NOT NULL,
    account integer NOT NULL,
    note character varying(100)
);


ALTER TABLE transactions OWNER TO pi;

--
-- TOC entry 179 (class 1259 OID 16518)
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
-- TOC entry 2048 (class 0 OID 0)
-- Dependencies: 179
-- Name: transactions_trn_id_seq; Type: SEQUENCE OWNED BY; Schema: fin_tbls; Owner: pi
--

ALTER SEQUENCE transactions_trn_id_seq OWNED BY transactions.trn_id;


--
-- TOC entry 1908 (class 2604 OID 16520)
-- Name: acc_id; Type: DEFAULT; Schema: fin_tbls; Owner: pi
--

ALTER TABLE ONLY account_type ALTER COLUMN acc_id SET DEFAULT nextval('account_type_acc_id_seq'::regclass);


--
-- TOC entry 1909 (class 2604 OID 16521)
-- Name: cat_id; Type: DEFAULT; Schema: fin_tbls; Owner: pi
--

ALTER TABLE ONLY expence_categorie ALTER COLUMN cat_id SET DEFAULT nextval('expence_categorie_cat_id_seq'::regclass);


--
-- TOC entry 1911 (class 2604 OID 16561)
-- Name: inc_id; Type: DEFAULT; Schema: fin_tbls; Owner: pi
--

ALTER TABLE ONLY income ALTER COLUMN inc_id SET DEFAULT nextval('income_inc_id_seq'::regclass);


--
-- TOC entry 1910 (class 2604 OID 16522)
-- Name: trn_id; Type: DEFAULT; Schema: fin_tbls; Owner: pi
--

ALTER TABLE ONLY transactions ALTER COLUMN trn_id SET DEFAULT nextval('transactions_trn_id_seq'::regclass);


--
-- TOC entry 1913 (class 2606 OID 16524)
-- Name: account_type_pkey; Type: CONSTRAINT; Schema: fin_tbls; Owner: pi; Tablespace: 
--

ALTER TABLE ONLY account_type
    ADD CONSTRAINT account_type_pkey PRIMARY KEY (acc_id);


--
-- TOC entry 1915 (class 2606 OID 16526)
-- Name: expence_categorie_pkey; Type: CONSTRAINT; Schema: fin_tbls; Owner: pi; Tablespace: 
--

ALTER TABLE ONLY expence_categorie
    ADD CONSTRAINT expence_categorie_pkey PRIMARY KEY (cat_id);


--
-- TOC entry 1925 (class 2606 OID 16566)
-- Name: income_pk; Type: CONSTRAINT; Schema: fin_tbls; Owner: pi; Tablespace: 
--

ALTER TABLE ONLY income
    ADD CONSTRAINT income_pk PRIMARY KEY (inc_id);


--
-- TOC entry 1917 (class 2606 OID 16528)
-- Name: transactions_pkey; Type: CONSTRAINT; Schema: fin_tbls; Owner: pi; Tablespace: 
--

ALTER TABLE ONLY transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (trn_id);


--
-- TOC entry 1920 (class 1259 OID 16567)
-- Name: income_i1; Type: INDEX; Schema: fin_tbls; Owner: pi; Tablespace: 
--

CREATE INDEX income_i1 ON income USING btree (inc_date);


--
-- TOC entry 1921 (class 1259 OID 16568)
-- Name: income_i2; Type: INDEX; Schema: fin_tbls; Owner: pi; Tablespace: 
--

CREATE INDEX income_i2 ON income USING btree (income_summ);


--
-- TOC entry 1922 (class 1259 OID 16569)
-- Name: income_i3; Type: INDEX; Schema: fin_tbls; Owner: pi; Tablespace: 
--

CREATE INDEX income_i3 ON income USING btree (saving);


--
-- TOC entry 1923 (class 1259 OID 16570)
-- Name: income_i4; Type: INDEX; Schema: fin_tbls; Owner: pi; Tablespace: 
--

CREATE INDEX income_i4 ON income USING btree (credit);


--
-- TOC entry 1918 (class 1259 OID 16529)
-- Name: trn_fk1; Type: INDEX; Schema: fin_tbls; Owner: pi; Tablespace: 
--

CREATE INDEX trn_fk1 ON transactions USING btree (account);


--
-- TOC entry 1919 (class 1259 OID 16530)
-- Name: trn_fk2; Type: INDEX; Schema: fin_tbls; Owner: pi; Tablespace: 
--

CREATE INDEX trn_fk2 ON transactions USING btree (categorie);


--
-- TOC entry 1926 (class 2606 OID 16531)
-- Name: acc_fk; Type: FK CONSTRAINT; Schema: fin_tbls; Owner: pi
--

ALTER TABLE ONLY transactions
    ADD CONSTRAINT acc_fk FOREIGN KEY (account) REFERENCES account_type(acc_id);


--
-- TOC entry 1927 (class 2606 OID 16536)
-- Name: cat_fk; Type: FK CONSTRAINT; Schema: fin_tbls; Owner: pi
--

ALTER TABLE ONLY transactions
    ADD CONSTRAINT cat_fk FOREIGN KEY (categorie) REFERENCES expence_categorie(cat_id);


--
-- TOC entry 2043 (class 0 OID 0)
-- Dependencies: 8
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-03-24 23:26:46 MSK

--
-- PostgreSQL database dump complete
--

