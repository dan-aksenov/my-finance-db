CREATE SCHEMA fin_tbls;

ALTER SCHEMA fin_tbls OWNER TO dbax;

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';

SET search_path = fin_tbls, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE transactions (
    trn_id serial,
	trn_date date,
    categorie character varying(100),
    summ numeric,
    account character varying(100),
    note character varying(100)
);

ALTER TABLE transactions OWNER TO dbax;

CREATE TABLE expence_categorie (
    cat_id serial,
    categorie character varying(100) 
);

ALTER TABLE expence_categorie OWNER TO dbax;

CREATE TABLE account_type (
    acc_id serial,
	account character varying(100)
);

ALTER TABLE accounts OWNER TO dbax;