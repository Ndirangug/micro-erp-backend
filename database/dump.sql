--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5 (Ubuntu 13.5-1.pgdg18.04+1)
-- Dumped by pg_dump version 14.1 (Ubuntu 14.1-1.pgdg18.04+1)

-- Started on 2021-12-25 08:50:01 EAT

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

DROP DATABASE "micro-erp";
--
-- TOC entry 3399 (class 1262 OID 34464)
-- Name: micro-erp; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "micro-erp" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE "micro-erp" OWNER TO postgres;

\connect -reuse-previous=on "dbname='micro-erp'"

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
-- TOC entry 218 (class 1259 OID 34588)
-- Name: brands; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.brands (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    bio character varying(1000) NOT NULL,
    "photoUrl" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.brands OWNER TO microerp;

--
-- TOC entry 217 (class 1259 OID 34586)
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brands_id_seq OWNER TO microerp;

--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 217
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;


--
-- TOC entry 220 (class 1259 OID 34599)
-- Name: categories; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    "photoUrl" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.categories OWNER TO microerp;

--
-- TOC entry 219 (class 1259 OID 34597)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO microerp;

--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 219
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 228 (class 1259 OID 34662)
-- Name: credit_notes; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.credit_notes (
    id bigint NOT NULL,
    amount double precision NOT NULL,
    deadline timestamp(0) without time zone NOT NULL,
    customer_id integer NOT NULL,
    shop_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.credit_notes OWNER TO microerp;

--
-- TOC entry 227 (class 1259 OID 34660)
-- Name: credit_notes_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.credit_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.credit_notes_id_seq OWNER TO microerp;

--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 227
-- Name: credit_notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.credit_notes_id_seq OWNED BY public.credit_notes.id;


--
-- TOC entry 212 (class 1259 OID 34542)
-- Name: customers; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.customers (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    "firstName" character varying(100) NOT NULL,
    "lastName" character varying(100) NOT NULL,
    "photoUrl" character varying(255) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.customers OWNER TO microerp;

--
-- TOC entry 211 (class 1259 OID 34540)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO microerp;

--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 211
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- TOC entry 230 (class 1259 OID 34680)
-- Name: debit_notes; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.debit_notes (
    id bigint NOT NULL,
    amount double precision NOT NULL,
    deadline timestamp(0) without time zone NOT NULL,
    supplier_id integer NOT NULL,
    shop_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.debit_notes OWNER TO microerp;

--
-- TOC entry 229 (class 1259 OID 34678)
-- Name: debit_notes_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.debit_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.debit_notes_id_seq OWNER TO microerp;

--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 229
-- Name: debit_notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.debit_notes_id_seq OWNED BY public.debit_notes.id;


--
-- TOC entry 206 (class 1259 OID 34499)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO microerp;

--
-- TOC entry 205 (class 1259 OID 34497)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO microerp;

--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 205
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 224 (class 1259 OID 34626)
-- Name: inventory_items; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.inventory_items (
    id bigint NOT NULL,
    "initialStock" integer NOT NULL,
    "currentStock" integer NOT NULL,
    "boughtAt" double precision NOT NULL,
    "sellAt" double precision NOT NULL,
    shop_id integer NOT NULL,
    product_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.inventory_items OWNER TO microerp;

--
-- TOC entry 223 (class 1259 OID 34624)
-- Name: inventory_items_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.inventory_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventory_items_id_seq OWNER TO microerp;

--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 223
-- Name: inventory_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.inventory_items_id_seq OWNED BY public.inventory_items.id;


--
-- TOC entry 240 (class 1259 OID 34809)
-- Name: metas; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.metas (
    id bigint NOT NULL,
    key character varying(255) NOT NULL,
    value character varying(255) NOT NULL,
    for_type character varying(255) NOT NULL,
    user_id integer,
    shop_owner_id integer,
    customer_id integer,
    supplier_id integer,
    shop_id integer,
    product_id integer,
    brand_id integer,
    inventory_item_id integer,
    supplier_item_id integer,
    purchase_order_id integer,
    sales_order_id integer,
    credit_note_id integer,
    debit_note_id integer,
    transaction_id integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.metas OWNER TO microerp;

--
-- TOC entry 239 (class 1259 OID 34807)
-- Name: metas_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.metas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.metas_id_seq OWNER TO microerp;

--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 239
-- Name: metas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.metas_id_seq OWNED BY public.metas.id;


--
-- TOC entry 201 (class 1259 OID 34467)
-- Name: migrations; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO microerp;

--
-- TOC entry 200 (class 1259 OID 34465)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO microerp;

--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 200
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 236 (class 1259 OID 34748)
-- Name: order_items; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.order_items (
    id bigint NOT NULL,
    quantity integer NOT NULL,
    supplier_item_id integer,
    inventory_item_id integer,
    sales_order_id integer,
    purchase_order_id integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.order_items OWNER TO microerp;

--
-- TOC entry 235 (class 1259 OID 34746)
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_items_id_seq OWNER TO microerp;

--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 235
-- Name: order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;


--
-- TOC entry 204 (class 1259 OID 34490)
-- Name: password_resets; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO microerp;

--
-- TOC entry 208 (class 1259 OID 34513)
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO microerp;

--
-- TOC entry 207 (class 1259 OID 34511)
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO microerp;

--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 207
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- TOC entry 242 (class 1259 OID 34890)
-- Name: product_categories; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.product_categories (
    id bigint NOT NULL,
    category_id integer NOT NULL,
    product_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.product_categories OWNER TO microerp;

--
-- TOC entry 241 (class 1259 OID 34888)
-- Name: product_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.product_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_categories_id_seq OWNER TO microerp;

--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 241
-- Name: product_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.product_categories_id_seq OWNED BY public.product_categories.id;


--
-- TOC entry 222 (class 1259 OID 34610)
-- Name: products; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "mainImage" character varying(255) NOT NULL,
    brand_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.products OWNER TO microerp;

--
-- TOC entry 221 (class 1259 OID 34608)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO microerp;

--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 221
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 232 (class 1259 OID 34698)
-- Name: purchase_orders; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.purchase_orders (
    id bigint NOT NULL,
    amount double precision NOT NULL,
    supplier_id integer NOT NULL,
    shop_id integer NOT NULL,
    debit_note_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    order_no character varying
);


ALTER TABLE public.purchase_orders OWNER TO microerp;

--
-- TOC entry 231 (class 1259 OID 34696)
-- Name: purchase_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.purchase_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_orders_id_seq OWNER TO microerp;

--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 231
-- Name: purchase_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.purchase_orders_id_seq OWNED BY public.purchase_orders.id;


--
-- TOC entry 234 (class 1259 OID 34723)
-- Name: sales_orders; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.sales_orders (
    id bigint NOT NULL,
    amount double precision NOT NULL,
    customer_id integer NOT NULL,
    shop_id integer NOT NULL,
    credit_note_id integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    order_no character varying
);


ALTER TABLE public.sales_orders OWNER TO microerp;

--
-- TOC entry 233 (class 1259 OID 34721)
-- Name: sales_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.sales_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_orders_id_seq OWNER TO microerp;

--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 233
-- Name: sales_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.sales_orders_id_seq OWNED BY public.sales_orders.id;


--
-- TOC entry 210 (class 1259 OID 34527)
-- Name: shop_owners; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.shop_owners (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    "firstName" character varying(100) NOT NULL,
    "lastName" character varying(100) NOT NULL,
    "photoUrl" character varying(255) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.shop_owners OWNER TO microerp;

--
-- TOC entry 209 (class 1259 OID 34525)
-- Name: shop_owners_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.shop_owners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_owners_id_seq OWNER TO microerp;

--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 209
-- Name: shop_owners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.shop_owners_id_seq OWNED BY public.shop_owners.id;


--
-- TOC entry 216 (class 1259 OID 34572)
-- Name: shops; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.shops (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    "photoUrl" character varying(255) NOT NULL,
    bio character varying(1000) NOT NULL,
    phone character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    shop_owner_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.shops OWNER TO microerp;

--
-- TOC entry 215 (class 1259 OID 34570)
-- Name: shops_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.shops_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shops_id_seq OWNER TO microerp;

--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 215
-- Name: shops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.shops_id_seq OWNED BY public.shops.id;


--
-- TOC entry 226 (class 1259 OID 34644)
-- Name: supplier_items; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.supplier_items (
    id bigint NOT NULL,
    "unitsAvailable" integer NOT NULL,
    "supplyAt" double precision NOT NULL,
    supplier_id integer NOT NULL,
    product_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.supplier_items OWNER TO microerp;

--
-- TOC entry 225 (class 1259 OID 34642)
-- Name: supplier_items_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.supplier_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_items_id_seq OWNER TO microerp;

--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 225
-- Name: supplier_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.supplier_items_id_seq OWNED BY public.supplier_items.id;


--
-- TOC entry 214 (class 1259 OID 34557)
-- Name: suppliers; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.suppliers (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(100) NOT NULL,
    "photoUrl" character varying(255) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.suppliers OWNER TO microerp;

--
-- TOC entry 213 (class 1259 OID 34555)
-- Name: suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.suppliers_id_seq OWNER TO microerp;

--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 213
-- Name: suppliers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.suppliers_id_seq OWNED BY public.suppliers.id;


--
-- TOC entry 238 (class 1259 OID 34776)
-- Name: transactions; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.transactions (
    id bigint NOT NULL,
    amount double precision NOT NULL,
    comment character varying(255),
    shop_id integer NOT NULL,
    supplier_id integer,
    customer_id integer,
    purchase_order_id integer,
    sales_order_id integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    method character varying(255) NOT NULL,
    ref character varying(255)
);


ALTER TABLE public.transactions OWNER TO microerp;

--
-- TOC entry 237 (class 1259 OID 34774)
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transactions_id_seq OWNER TO microerp;

--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 237
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- TOC entry 203 (class 1259 OID 34475)
-- Name: users; Type: TABLE; Schema: public; Owner: microerp
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    api_token character varying(80),
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO microerp;

--
-- TOC entry 202 (class 1259 OID 34473)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: microerp
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO microerp;

--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 202
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: microerp
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3100 (class 2604 OID 34591)
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);


--
-- TOC entry 3101 (class 2604 OID 34602)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 3105 (class 2604 OID 34665)
-- Name: credit_notes id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.credit_notes ALTER COLUMN id SET DEFAULT nextval('public.credit_notes_id_seq'::regclass);


--
-- TOC entry 3097 (class 2604 OID 34545)
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- TOC entry 3106 (class 2604 OID 34683)
-- Name: debit_notes id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.debit_notes ALTER COLUMN id SET DEFAULT nextval('public.debit_notes_id_seq'::regclass);


--
-- TOC entry 3093 (class 2604 OID 34502)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 3103 (class 2604 OID 34629)
-- Name: inventory_items id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.inventory_items ALTER COLUMN id SET DEFAULT nextval('public.inventory_items_id_seq'::regclass);


--
-- TOC entry 3111 (class 2604 OID 34812)
-- Name: metas id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas ALTER COLUMN id SET DEFAULT nextval('public.metas_id_seq'::regclass);


--
-- TOC entry 3091 (class 2604 OID 34470)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 3109 (class 2604 OID 34751)
-- Name: order_items id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);


--
-- TOC entry 3095 (class 2604 OID 34516)
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- TOC entry 3112 (class 2604 OID 34893)
-- Name: product_categories id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.product_categories ALTER COLUMN id SET DEFAULT nextval('public.product_categories_id_seq'::regclass);


--
-- TOC entry 3102 (class 2604 OID 34613)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 3107 (class 2604 OID 34701)
-- Name: purchase_orders id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.purchase_orders ALTER COLUMN id SET DEFAULT nextval('public.purchase_orders_id_seq'::regclass);


--
-- TOC entry 3108 (class 2604 OID 34726)
-- Name: sales_orders id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.sales_orders ALTER COLUMN id SET DEFAULT nextval('public.sales_orders_id_seq'::regclass);


--
-- TOC entry 3096 (class 2604 OID 34530)
-- Name: shop_owners id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.shop_owners ALTER COLUMN id SET DEFAULT nextval('public.shop_owners_id_seq'::regclass);


--
-- TOC entry 3099 (class 2604 OID 34575)
-- Name: shops id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.shops ALTER COLUMN id SET DEFAULT nextval('public.shops_id_seq'::regclass);


--
-- TOC entry 3104 (class 2604 OID 34647)
-- Name: supplier_items id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.supplier_items ALTER COLUMN id SET DEFAULT nextval('public.supplier_items_id_seq'::regclass);


--
-- TOC entry 3098 (class 2604 OID 34560)
-- Name: suppliers id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.suppliers ALTER COLUMN id SET DEFAULT nextval('public.suppliers_id_seq'::regclass);


--
-- TOC entry 3110 (class 2604 OID 34779)
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- TOC entry 3092 (class 2604 OID 34478)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3369 (class 0 OID 34588)
-- Dependencies: 218
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.brands (id, name, bio, "photoUrl", created_at, updated_at) FROM stdin;
1	soluta	Harum aperiam culpa placeat quisquam sequi ut vitae. Vero nulla nulla necessitatibus aut. Ratione recusandae quam cumque. Optio repudiandae minima sed tempore minus harum.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:58	2021-10-15 18:12:58
2	eum	Nisi non aliquid vitae iusto. Eum nihil molestiae mollitia ab ut repellat totam. In alias in sit id quo quibusdam consequatur fugit.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:58	2021-10-15 18:12:58
3	voluptatem	Assumenda dolor id deleniti vero. Sit qui temporibus dolor nostrum et quod odio. Eum minus nam qui ex enim sequi. Quis quae voluptatem qui.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:58	2021-10-15 18:12:58
4	quo	Consectetur minus esse ex incidunt. Aut et debitis nulla eos facere. Libero voluptatem et ipsum nostrum sequi nesciunt nesciunt.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:58	2021-10-15 18:12:58
5	unde	Est ea nobis atque velit odio minus rerum. Quibusdam aut possimus mollitia modi dolore. Eaque id omnis distinctio nostrum. Ab eaque esse aut quas.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
6	dolor	Consectetur atque atque illo et. Ipsam accusamus accusamus dolore atque nihil. Et accusamus ab non amet. Ex et qui sapiente rem natus.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
7	qui	Ut velit et et laudantium impedit. Fugit soluta quia aspernatur omnis cupiditate at aspernatur. A architecto et placeat corrupti assumenda omnis tenetur.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
8	mollitia	Autem tempora nostrum natus alias facilis consequuntur non. Necessitatibus voluptatem culpa rerum et. Et sunt distinctio rerum iusto nulla labore.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
9	eos	Voluptatem sapiente in provident non ab. A sit quae aut aut facilis voluptas occaecati. Nam omnis consequatur praesentium consequuntur et est.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
10	explicabo	Tenetur accusantium odio vitae et eum. Est eligendi odit iusto et eum. Eum in occaecati voluptas maxime molestiae. Quas magni inventore a voluptate architecto eum.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
11	nobis	Sed voluptatem necessitatibus magni non sint. Et est dolor repellat non minus non consequuntur. At sit recusandae accusamus debitis dolor sit. Enim eaque eum sapiente iste quod dolor non.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
12	hic	Autem incidunt expedita aperiam nisi esse eos. Illum recusandae non omnis illum harum debitis consequatur. Dolorum quasi quibusdam numquam molestias iste laboriosam dolor occaecati. Eligendi occaecati libero mollitia et repellendus natus. Autem autem expedita id.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
13	voluptatibus	Quis ipsam aut magni saepe aut nisi ipsum. Sed ut dolor ipsa expedita deleniti error aspernatur ut. Laborum aut nesciunt esse inventore repellat. Dolor odit ipsum praesentium ex quidem quae eaque.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
14	suscipit	Ipsa voluptatem aliquam quia totam qui molestias cupiditate quia. Sit quia quisquam delectus neque. Delectus voluptates aut minus tempora officiis aspernatur. Asperiores asperiores quis amet deserunt in nihil.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
15	adipisci	Eum occaecati quasi omnis at illo. Nulla nisi consequuntur et mollitia. Optio illo accusantium iure et repellat quia animi ratione.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
16	est	Sit cumque maxime repellendus accusamus aut doloremque assumenda. Nesciunt distinctio et dolore natus sapiente. Fuga repudiandae voluptas et molestiae ipsa alias. Quos eum voluptate quia at officiis.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
17	beatae	Sed ea aperiam velit modi totam amet laborum sunt. Odit esse hic veniam doloremque. Consequatur maxime autem et veritatis sequi modi odit quia. Ut possimus voluptatem vero vel molestias et.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
18	distinctio	Porro velit atque quasi ea. Veritatis autem ratione sunt omnis qui at. Autem deserunt ut beatae magni id quod rerum. Est repellat soluta quo rerum.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
19	autem	Nisi temporibus quia quas iusto tempore. Natus deleniti provident ut laborum adipisci vel. Dolore eum veniam ea eveniet recusandae.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
20	consequuntur	Deserunt velit eveniet est aliquam ut et. Rem unde vitae saepe excepturi suscipit omnis placeat. Cum numquam et perspiciatis ut aut a.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
21	quia	Necessitatibus quia vel eveniet facilis ipsum. Fugiat dolorum qui impedit mollitia. Vero adipisci in eveniet impedit alias sed.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
22	non	Doloribus consequuntur sit nostrum eos. Quia sunt ab dolorem odit aut saepe. Quia rerum nihil cumque.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
23	et	Voluptas aut quo qui placeat. Dolore tempore dolores eligendi iure eos. Rerum voluptates rem necessitatibus aut et vitae. Laudantium ullam unde eaque recusandae rerum.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
24	in	Commodi animi corporis eos. Pariatur sequi incidunt accusantium. Voluptatem voluptas at recusandae magni pariatur aliquid cumque. Doloribus tempore reiciendis optio id. Eligendi et consequuntur et sit.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
25	earum	Consequatur sed explicabo amet. Id at deserunt consequatur sequi.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
26	tempore	Autem sunt sit molestias in. Rem praesentium cupiditate esse dolore. In at et dolor et asperiores blanditiis iste. Culpa magni cumque excepturi quas. Et ut impedit dignissimos corrupti vero.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
27	perferendis	Omnis perspiciatis delectus sapiente animi neque a. Iste recusandae maiores explicabo velit non eos. Fuga voluptas mollitia quo alias.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
28	ut	Laudantium soluta nostrum error et. Harum debitis consequuntur officiis est doloribus deleniti et. Architecto et animi et vel vitae aspernatur. Blanditiis quaerat qui minima cum quia esse.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
29	minus	Quis dolorem inventore consequatur numquam qui a libero maxime. Rerum autem mollitia eius hic omnis quas. Consequatur excepturi consequatur qui magni.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
30	et	Commodi id rerum rerum delectus nam suscipit vero. Est maxime ab rerum omnis voluptas. Aliquid quis laborum veniam ullam quam et.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
31	quae	Consequatur accusamus labore hic quibusdam ullam quis sit. Ea nam ratione illum voluptatem fuga sed beatae. Eligendi qui sed vel quia.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
32	libero	Asperiores perferendis rerum id excepturi autem voluptas consequatur. Minus beatae repellendus aut commodi enim aut inventore. Suscipit deserunt occaecati consequuntur dignissimos voluptatum repudiandae voluptas.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
33	ducimus	Modi repudiandae distinctio aliquam qui. Et aliquid corrupti consequatur rem. Sint est blanditiis praesentium. Quae omnis recusandae hic soluta ea deserunt soluta.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
34	dolor	Dolorum perspiciatis distinctio magni architecto aut. Dolorum eum perspiciatis nihil voluptas ab expedita quis. Voluptatem et velit facilis molestiae fuga voluptas.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
35	est	Dignissimos aut odit non eum. Vero id voluptas et magnam voluptate. Sint consequatur nemo iusto cumque. Possimus voluptatibus nostrum occaecati ea.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
36	soluta	Aperiam dolor id libero aperiam dolore corporis delectus velit. At vitae doloribus omnis fuga et. Cumque praesentium et atque non ad fugiat aperiam.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
37	aut	Aliquam possimus deleniti mollitia. Alias ea totam sed doloribus nulla officia. Omnis ex voluptatem vel molestiae tempore.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
38	blanditiis	Consequatur quo nesciunt repudiandae porro qui. Explicabo rerum quas saepe tenetur reprehenderit possimus dolores. Qui quam consequatur quibusdam rerum.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
39	aliquam	Optio et reprehenderit ipsa. Possimus nostrum fugiat doloribus ex necessitatibus.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
40	ut	Et vel perferendis reprehenderit qui ut ut. Saepe non esse quas quis eligendi magni aut. Quo officia eum sapiente ut ut itaque. Vel aut id a consequatur sint.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
41	nihil	Et eum natus qui laboriosam natus. Voluptas quos sed magni molestiae nobis. Numquam non nostrum rerum voluptatum.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
42	eaque	Aspernatur maxime facere eos harum accusamus corporis voluptatem eos. Cumque eligendi atque adipisci fuga quo vel facere. Quia qui sit est.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
43	id	Aperiam libero quis qui deleniti aut. Vel voluptatem vel molestias ratione quis veritatis. Consequatur aliquam non amet rerum omnis. Expedita porro voluptatem error fuga deserunt explicabo omnis et.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
44	quam	Voluptatum fugit amet amet qui nam maxime recusandae. Fugit magni rem quasi dolore voluptas sint autem.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
45	nisi	Harum aliquid veritatis inventore. Consequatur ratione quia rerum dolor. Optio optio omnis quis facere blanditiis. Quae ipsa et repellat qui est doloremque qui.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
46	veniam	Expedita aut eos omnis laudantium et excepturi. Incidunt aut et in doloremque cum.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
47	nam	Atque sed eum necessitatibus ea eveniet. Explicabo quo quas dolor beatae ullam placeat. Non aut enim sint incidunt ratione. Eaque dicta quia aut.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
48	quibusdam	Dolores eligendi illo assumenda qui ex voluptate. Voluptas doloribus est illum aspernatur. Odit vel voluptatem maxime quidem aut fuga laborum. Eius sed iusto modi.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
49	possimus	Fuga aliquam accusamus cumque dolor. Quidem quidem ut eveniet velit porro ex. Nihil voluptas amet est quidem sunt inventore nihil earum.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
50	est	Unde exercitationem minima consequuntur voluptatibus quas amet. Reprehenderit quia nam et ut ea eum sapiente. Recusandae sapiente corrupti officiis rem est velit nihil. Quo beatae dolorum quis deleniti. Ipsam beatae ab non eum aut quia.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
51	cumque	Qui porro laudantium omnis incidunt amet eveniet perspiciatis. Quasi vitae dicta laudantium. Voluptatem beatae numquam fugiat ut veritatis.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
52	voluptatem	Quam accusantium adipisci quia nihil laboriosam animi architecto. Numquam ipsum modi unde in enim sapiente in fugiat. Placeat consequatur quae sit aut. Consectetur libero voluptatem harum non nam.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
53	ut	Ad est qui id laborum reiciendis iure doloremque. Enim in similique eius ab cum reprehenderit et. Dolor impedit ipsum illum dicta. Reiciendis praesentium ratione distinctio sunt cum.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
54	rem	Blanditiis eum quae libero sunt ut dolor. Doloremque molestiae exercitationem nam quis nostrum. Animi voluptatibus dolorem eligendi ut distinctio voluptatem doloremque ipsa. Quam earum voluptas qui cum.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
55	non	Commodi inventore ut sapiente vel. Rerum sunt est eos corrupti id at molestiae. Optio dignissimos dolores fugit eaque exercitationem est vel. Sunt sit eos ipsa nihil.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
56	id	Ab vero ducimus qui. Sit voluptatem est voluptatibus eum. Corporis exercitationem nulla autem. Consectetur aut modi aut magni neque.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
57	enim	Rerum dolore iusto eligendi ipsum aut consequatur. Provident molestiae voluptatem nihil ab. Quis consequatur doloribus distinctio asperiores.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
58	molestias	Veritatis dolor fuga consequatur voluptatem cupiditate ipsum magni. Nemo enim ducimus occaecati. Sapiente laudantium commodi vel.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
59	dicta	Reprehenderit quis expedita qui ipsum ea. Recusandae facere illum vitae culpa nemo tempore.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
60	odio	Et illum maxime nisi. Facere consequuntur tenetur velit omnis aut. Et rem quo sed illum. Nesciunt animi et praesentium voluptatibus enim.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
61	qui	Blanditiis tempore expedita est. Mollitia nesciunt et voluptatum. At quas harum vero dicta assumenda dolor. Unde itaque ipsa numquam et.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
62	deserunt	Doloremque vel et qui quo. Rerum id quod et ipsum enim. Temporibus et sed ipsa dicta.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
63	alias	Voluptas illo non esse sint. Eum dolores voluptate delectus rerum accusantium occaecati. Et et aspernatur omnis voluptatibus dolores veniam alias. Esse magnam doloribus ut ab dolor nobis ut.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
64	voluptatem	Sint et quas beatae. Necessitatibus voluptas rerum non nesciunt voluptates magni. Voluptates cupiditate eum magnam sint hic quia voluptatum expedita.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
65	voluptatum	Sit delectus maiores sit perferendis quia et. Cum quia a ea dolor nostrum. Porro libero omnis iusto exercitationem necessitatibus quia architecto. Hic vero quas consequuntur ratione libero ut hic.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
66	quia	Iste eum non voluptatum. Eos ab ipsa quidem. Sint perferendis nihil reprehenderit eligendi soluta. Asperiores molestiae voluptatem aliquid qui voluptate.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
67	eius	Natus soluta voluptas culpa qui rerum. Omnis temporibus rerum enim et commodi exercitationem est rem. Eius deserunt repellat incidunt culpa.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
68	et	Temporibus et beatae sed accusamus totam ut error dolor. Totam voluptatem deleniti voluptatem ea. Labore doloribus laudantium dolorum incidunt provident mollitia. Veniam sint impedit iste sapiente numquam molestiae et.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
69	est	Laudantium vel et qui officiis. Voluptatum veniam non iste quia quasi. Cum ut qui laudantium necessitatibus. Expedita est consequatur deserunt ex sed nihil.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
70	fuga	Mollitia quas praesentium dolorem voluptas est consectetur eos. Ut aut et sint esse est. Nisi velit quo ab facere voluptas animi veritatis.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
71	soluta	Voluptate quasi quae veritatis. Ipsum consequatur provident incidunt. Optio consequatur magnam optio corrupti atque vel doloribus.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
72	consequuntur	Sint amet in et. Et deleniti deleniti consequuntur rerum sequi rem atque. Ipsam eveniet perspiciatis cumque debitis nulla.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
73	molestiae	Harum quisquam et natus. Consequatur voluptatem deserunt ad dolorem modi ea. Dolore voluptatem fugiat repudiandae sit similique sit.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
74	provident	Facere sint culpa sint. Similique nihil mollitia illo veritatis praesentium eum quo. Quod illo molestiae dolor ad occaecati.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
75	consectetur	Aperiam sint earum illo eius tempore ea ut est. A voluptates et qui consectetur eveniet. Cupiditate in voluptatum recusandae quas. Eveniet soluta eum beatae. Et libero minus sed omnis reiciendis alias odio.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
76	laboriosam	Asperiores eaque magni error a ut perspiciatis praesentium. Odio autem dolores perspiciatis ducimus odit. Neque ut debitis provident optio vel modi.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
77	maiores	Aut dicta officia tempora vel ut veniam accusantium. Ratione voluptas accusantium magnam quis molestiae. Dolor deleniti perspiciatis accusantium adipisci.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
78	beatae	Et et est ratione doloremque dolorem doloremque sed. Quo nostrum cum est aut incidunt. Delectus praesentium ipsa vitae sed ea.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
79	aliquid	Mollitia ab rerum sit corporis enim reprehenderit aut. Sunt voluptatem consequatur omnis eum. Facere accusamus sed facilis nihil corporis illo. Ut a esse natus.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
80	dolores	Eos rerum laborum sed iste sunt. Numquam autem voluptatibus voluptatum aut voluptatem mollitia. Facere ut nam id soluta sequi.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
81	dolor	Iusto saepe nulla quidem cum enim ipsam fuga voluptate. Aut et minima dolores tempore ut beatae. Ut illo consequatur quidem aperiam doloremque velit.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
82	nesciunt	Quo est sit quam necessitatibus facilis et impedit architecto. Quo delectus soluta explicabo eius ut. Sed doloribus officia eaque non voluptatum.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
83	modi	Quidem nesciunt cupiditate voluptatem voluptatem qui vitae. Nisi sed in incidunt similique voluptate consequatur eligendi. Nobis sed aut veritatis sint ea quia itaque nemo. Molestias sed adipisci ipsam iure dolor dolor.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
84	et	Et quia fugiat in aut. Maxime illo harum est voluptas. Sapiente dolores soluta ex natus est velit.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
85	quod	Quam sed ullam repellat occaecati debitis. Dolorem voluptas at tempora ipsum repellat at numquam.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
86	at	Officia debitis illum dolor est. Voluptate autem aliquam eos debitis dolor in. Voluptatem sint ducimus voluptatibus est. Quaerat qui dolor commodi quae voluptatem odio.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
87	ut	Facilis veniam excepturi placeat fugiat eum. Ad illo qui unde quia laudantium illum. Ad dolor earum rerum dicta in veniam.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
88	veritatis	Itaque debitis nesciunt quis quasi magnam dolor dolores. Doloribus modi omnis inventore ab rerum est et. Quisquam voluptas at est molestiae vel consequatur sunt.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
89	officia	Aperiam ea corrupti suscipit nisi aut nostrum. Ullam eum ut atque. Qui earum minima molestias praesentium. Aliquam aut praesentium quis beatae ad.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
90	et	Qui in rem temporibus nobis sed doloremque. Pariatur reiciendis similique similique non. Nobis omnis aut dignissimos rem. Quo enim et provident minima. Minima assumenda vel provident modi deleniti.	https://ui-avatars.com/api/?background=random	2021-10-15 18:12:59	2021-10-15 18:12:59
91	reprehenderit	Unde architecto dolorem omnis enim qui unde. Autem veniam et facilis laboriosam tempore consectetur. Expedita nihil velit quia doloremque ab commodi. Cupiditate consequatur est velit accusamus atque.	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:00	2021-10-15 18:13:00
92	perferendis	Ut delectus perspiciatis nostrum eos eligendi. Amet ipsa molestias mollitia ducimus. Quos ea et minus.	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:00	2021-10-15 18:13:00
93	incidunt	Quam iusto ex et quia illo corrupti. Perferendis aut sint animi vel quo sunt. Nam accusamus est nihil ut mollitia vitae dolor. Qui nam neque non autem suscipit. Omnis vero tenetur doloremque laborum neque.	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:00	2021-10-15 18:13:00
94	voluptates	Voluptatem blanditiis quis iste est id quas repellendus. Et consequatur explicabo eligendi possimus qui nesciunt. Aut quibusdam neque dolores nobis impedit at error magni. Quis enim asperiores sed quo dolorem qui.	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:00	2021-10-15 18:13:00
95	accusamus	Consectetur et voluptas ad excepturi mollitia maxime. Quisquam molestiae magnam ex voluptas vero sint accusantium. Eaque qui architecto esse cupiditate maxime nostrum et. Fugit eius assumenda quod qui quia rem.	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:00	2021-10-15 18:13:00
96	nihil	Et necessitatibus dolores sit quia velit suscipit maiores. Expedita quas magnam qui soluta illum. Sapiente ut qui accusantium.	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:00	2021-10-15 18:13:00
97	ea	Tenetur molestiae totam vitae vel occaecati autem. Velit ducimus provident quas et voluptate minus iure. Odio voluptate molestiae rem et dolor asperiores.	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:00	2021-10-15 18:13:00
98	voluptatem	Alias amet et tempora doloribus accusantium a molestiae numquam. Recusandae rerum ducimus corrupti. Ut ut iusto aliquam eos doloribus. Nobis repellendus sequi maxime distinctio soluta nam eos sint.	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:00	2021-10-15 18:13:00
99	debitis	Nihil corrupti quo est non sed reiciendis. Aperiam distinctio occaecati quia error iure provident. Aut dolor occaecati ut qui quos. Veritatis tempora delectus repudiandae quia.	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:00	2021-10-15 18:13:00
100	soluta	Occaecati voluptas harum quia maxime voluptatem molestias. Qui doloremque quis quia voluptas. In ab voluptatem iure mollitia magnam perferendis consequatur.	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:00	2021-10-15 18:13:00
101	Cocacola	fhf  sdfdjfhsd fsfjsjkfhsd fskjfhsdkf sdfjksfh skf shkfjs hfsk	https://ui-avatars.com/api/?background=random	2021-10-19 13:16:19	2021-10-19 13:16:19
102	Cocacola	fhf  sdfdjfhsd fsfjsjkfhsd fskjfhsdkf sdfjksfh skf shkfjs hfsk	https://ui-avatars.com/api/?background=random	2021-10-19 13:16:29	2021-10-19 13:16:29
\.


--
-- TOC entry 3371 (class 0 OID 34599)
-- Dependencies: 220
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.categories (id, name, "photoUrl", created_at, updated_at) FROM stdin;
1	eligendi	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
2	omnis	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
3	dolor	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
4	veritatis	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
5	exercitationem	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
6	et	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
7	consequuntur	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
8	ut	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
9	repellendus	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
10	quaerat	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
11	dolor	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
12	adipisci	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
13	dolor	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
14	consequuntur	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
15	voluptatibus	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
16	tempore	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
17	consectetur	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
18	quasi	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
19	ullam	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
20	quasi	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
21	architecto	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
22	eaque	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
23	quae	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
24	adipisci	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
25	vitae	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
26	autem	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
27	est	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
28	commodi	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
29	autem	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
30	non	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
31	sint	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
32	doloribus	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
33	error	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
34	nihil	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
35	vitae	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
36	ea	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
37	reprehenderit	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
38	veritatis	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
39	error	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
40	a	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
41	aut	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
42	aut	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
43	consequatur	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
44	perspiciatis	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
45	nulla	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
46	consequatur	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
47	sunt	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
48	sed	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
49	dolorem	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
50	voluptas	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
51	quia	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
52	commodi	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
53	maiores	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
54	ratione	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
55	ipsum	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
56	et	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
57	incidunt	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:01	2021-10-15 18:13:01
58	non	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
59	aspernatur	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
60	ut	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
61	magni	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
62	vitae	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
63	temporibus	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
64	labore	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
65	aspernatur	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
66	esse	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
67	voluptatibus	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
68	iusto	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
69	sit	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
70	sunt	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
71	earum	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
72	ex	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
73	accusamus	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
74	quod	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
75	laboriosam	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
76	eveniet	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
77	temporibus	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
78	dolores	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
79	quia	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
80	facere	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
81	sed	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
82	ipsum	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
83	voluptatem	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
84	ut	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
85	esse	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
86	tenetur	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
87	numquam	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
88	velit	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
89	placeat	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
90	ad	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
91	ad	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
92	ullam	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
93	ullam	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
94	vitae	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
95	iste	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
96	perferendis	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
97	harum	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
98	dolores	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
99	tempora	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
100	soluta	https://ui-avatars.com/api/?background=random	2021-10-15 18:13:02	2021-10-15 18:13:02
\.


--
-- TOC entry 3379 (class 0 OID 34662)
-- Dependencies: 228
-- Data for Name: credit_notes; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.credit_notes (id, amount, deadline, customer_id, shop_id, created_at, updated_at) FROM stdin;
1	0.36	1980-12-04 22:20:09	23	71	2021-10-15 18:13:08	2021-10-15 18:13:08
2	271.66	1979-10-20 09:50:44	15	32	2021-10-15 18:13:08	2021-10-15 18:13:08
3	373.74	1978-10-09 06:25:33	15	55	2021-10-15 18:13:08	2021-10-15 18:13:08
4	2850329	1982-07-12 09:36:45	1	19	2021-10-15 18:13:08	2021-10-15 18:13:08
5	69.23	2020-06-12 13:11:04	32	29	2021-10-15 18:13:08	2021-10-15 18:13:08
6	19.85	1973-02-14 02:48:42	35	95	2021-10-15 18:13:08	2021-10-15 18:13:08
7	110536.85	1987-07-18 19:34:34	12	9	2021-10-15 18:13:08	2021-10-15 18:13:08
8	2.9	2012-09-12 21:50:46	13	83	2021-10-15 18:13:08	2021-10-15 18:13:08
9	192331.09	1982-04-09 14:08:09	9	72	2021-10-15 18:13:08	2021-10-15 18:13:08
10	23384819.91	2021-09-23 20:07:15	29	44	2021-10-15 18:13:08	2021-10-15 18:13:08
11	422675.19	2007-08-17 22:28:32	24	49	2021-10-15 18:13:08	2021-10-15 18:13:08
12	71762083.6	1976-06-09 23:59:00	7	43	2021-10-15 18:13:08	2021-10-15 18:13:08
13	5969.35	2012-02-23 10:42:36	1	63	2021-10-15 18:13:08	2021-10-15 18:13:08
14	281.94	2010-05-24 13:19:23	36	15	2021-10-15 18:13:08	2021-10-15 18:13:08
15	821005.43	1994-11-28 04:21:58	14	36	2021-10-15 18:13:08	2021-10-15 18:13:08
16	24275395.24	1973-03-30 13:50:55	32	57	2021-10-15 18:13:08	2021-10-15 18:13:08
17	313509.81	1989-07-06 17:58:12	21	52	2021-10-15 18:13:08	2021-10-15 18:13:08
19	595105.52	1983-06-07 17:00:20	31	87	2021-10-15 18:13:08	2021-10-15 18:13:08
20	18801736.66	2004-10-19 01:53:00	40	77	2021-10-15 18:13:08	2021-10-15 18:13:08
21	558447.77	1994-05-10 11:34:19	34	7	2021-10-15 18:13:08	2021-10-15 18:13:08
22	1983.06	2018-04-12 00:36:54	39	92	2021-10-15 18:13:08	2021-10-15 18:13:08
23	8.04	2010-10-23 00:53:44	30	28	2021-10-15 18:13:08	2021-10-15 18:13:08
24	6261641.49	2003-11-08 17:14:51	8	74	2021-10-15 18:13:08	2021-10-15 18:13:08
25	2362.95	1989-07-02 02:17:28	10	70	2021-10-15 18:13:08	2021-10-15 18:13:08
26	62110990.41	2008-12-19 19:51:53	3	99	2021-10-15 18:13:08	2021-10-15 18:13:08
27	21.4	2001-10-11 19:42:27	39	56	2021-10-15 18:13:08	2021-10-15 18:13:08
28	544.93	1991-01-30 06:29:50	12	7	2021-10-15 18:13:08	2021-10-15 18:13:08
30	773133.66	1994-03-14 04:39:16	29	48	2021-10-15 18:13:08	2021-10-15 18:13:08
31	2.1	1981-06-05 15:48:00	1	35	2021-10-15 18:13:08	2021-10-15 18:13:08
32	5.59	2020-06-07 08:40:36	12	97	2021-10-15 18:13:08	2021-10-15 18:13:08
33	36865.8	1978-06-15 11:05:02	40	77	2021-10-15 18:13:08	2021-10-15 18:13:08
34	9052.42	1980-08-16 14:18:55	10	97	2021-10-15 18:13:09	2021-10-15 18:13:09
35	479.64	2013-11-12 15:12:01	6	46	2021-10-15 18:13:09	2021-10-15 18:13:09
36	1.55	2013-09-25 14:06:10	11	16	2021-10-15 18:13:09	2021-10-15 18:13:09
37	0	2006-09-08 18:22:52	34	29	2021-10-15 18:13:09	2021-10-15 18:13:09
38	517838964.83	2003-05-14 08:42:14	4	47	2021-10-15 18:13:09	2021-10-15 18:13:09
39	60.56	1984-08-28 21:32:31	28	23	2021-10-15 18:13:09	2021-10-15 18:13:09
40	45.07	2013-04-21 22:57:41	19	43	2021-10-15 18:13:09	2021-10-15 18:13:09
41	58945.18	2012-09-04 06:03:57	19	20	2021-10-15 18:13:09	2021-10-15 18:13:09
42	99975.13	1999-05-26 00:15:25	9	61	2021-10-15 18:13:09	2021-10-15 18:13:09
43	2395605.52	1986-08-31 04:27:55	26	66	2021-10-15 18:13:09	2021-10-15 18:13:09
44	901.95	2011-01-26 00:20:16	25	56	2021-10-15 18:13:09	2021-10-15 18:13:09
45	0.61	2007-10-29 22:21:13	13	95	2021-10-15 18:13:09	2021-10-15 18:13:09
46	0.15	1986-05-28 12:52:22	13	68	2021-10-15 18:13:09	2021-10-15 18:13:09
47	201791.45	2001-08-31 03:52:17	13	1	2021-10-15 18:13:09	2021-10-15 18:13:09
48	441714.66	2015-12-03 21:18:22	21	81	2021-10-15 18:13:09	2021-10-15 18:13:09
49	873.88	1991-07-31 18:52:24	14	44	2021-10-15 18:13:09	2021-10-15 18:13:09
50	29.92	2003-02-15 07:40:29	3	24	2021-10-15 18:13:09	2021-10-15 18:13:09
51	291300336.06	1992-02-10 01:21:30	16	12	2021-10-15 18:13:09	2021-10-15 18:13:09
52	1942219.44	2016-09-13 03:32:42	23	53	2021-10-15 18:13:09	2021-10-15 18:13:09
53	6678544.24	1991-10-25 07:52:26	15	55	2021-10-15 18:13:09	2021-10-15 18:13:09
54	5608.59	2018-05-07 01:34:53	32	18	2021-10-15 18:13:09	2021-10-15 18:13:09
55	355.6	1986-08-09 06:12:54	23	94	2021-10-15 18:13:09	2021-10-15 18:13:09
56	389.16	1990-12-27 20:50:21	38	64	2021-10-15 18:13:09	2021-10-15 18:13:09
58	431339.89	1993-03-02 00:48:29	19	1	2021-10-15 18:13:09	2021-10-15 18:13:09
59	126.19	2001-01-21 13:16:06	34	23	2021-10-15 18:13:09	2021-10-15 18:13:09
60	85.72	1974-01-29 15:31:56	25	32	2021-10-15 18:13:09	2021-10-15 18:13:09
61	73169.25	2013-06-22 14:03:14	39	68	2021-10-15 18:13:09	2021-10-15 18:13:09
62	25.72	1999-01-27 13:48:46	36	43	2021-10-15 18:13:09	2021-10-15 18:13:09
63	1231.42	1975-04-01 02:35:02	35	8	2021-10-15 18:13:09	2021-10-15 18:13:09
64	5.74	1987-06-28 19:11:21	33	71	2021-10-15 18:13:09	2021-10-15 18:13:09
65	15843.93	1974-08-19 01:17:57	4	52	2021-10-15 18:13:09	2021-10-15 18:13:09
66	77441.52	2012-05-08 14:33:38	23	27	2021-10-15 18:13:09	2021-10-15 18:13:09
67	47.82	2014-07-07 03:44:41	33	48	2021-10-15 18:13:09	2021-10-15 18:13:09
68	255482688.03	1988-07-08 21:38:07	12	55	2021-10-15 18:13:09	2021-10-15 18:13:09
69	308832876.92	1983-11-18 06:27:00	5	73	2021-10-15 18:13:09	2021-10-15 18:13:09
70	675861.33	2000-04-09 17:50:15	33	8	2021-10-15 18:13:09	2021-10-15 18:13:09
71	39.14	1982-06-11 09:47:25	20	99	2021-10-15 18:13:09	2021-10-15 18:13:09
72	422.49	2016-09-25 05:28:44	1	52	2021-10-15 18:13:09	2021-10-15 18:13:09
73	59531.02	1989-07-05 02:07:52	27	67	2021-10-15 18:13:09	2021-10-15 18:13:09
74	5409553.53	2017-10-02 19:14:47	19	91	2021-10-15 18:13:09	2021-10-15 18:13:09
75	35875731.76	1976-03-31 19:28:31	9	7	2021-10-15 18:13:09	2021-10-15 18:13:09
76	2526.66	2007-06-29 19:52:54	16	48	2021-10-15 18:13:09	2021-10-15 18:13:09
77	523857.2	1996-08-25 08:44:52	4	24	2021-10-15 18:13:09	2021-10-15 18:13:09
78	279.81	2014-01-07 15:51:32	26	30	2021-10-15 18:13:09	2021-10-15 18:13:09
79	70956458.24	2000-08-02 14:46:00	1	33	2021-10-15 18:13:09	2021-10-15 18:13:09
80	29915.47	2013-12-18 10:01:02	24	21	2021-10-15 18:13:09	2021-10-15 18:13:09
81	6.95	2012-07-14 11:40:02	35	75	2021-10-15 18:13:09	2021-10-15 18:13:09
82	22793332.84	1983-06-21 19:16:24	28	62	2021-10-15 18:13:09	2021-10-15 18:13:09
83	136072175.48	2000-02-17 02:43:52	11	1	2021-10-15 18:13:09	2021-10-15 18:13:09
84	23.17	2003-11-22 23:56:13	21	42	2021-10-15 18:13:09	2021-10-15 18:13:09
85	145159372.3	1984-09-08 05:18:29	25	55	2021-10-15 18:13:09	2021-10-15 18:13:09
86	751024328.89	1989-02-14 17:07:25	10	80	2021-10-15 18:13:09	2021-10-15 18:13:09
87	4264.03	1998-08-17 10:49:35	16	86	2021-10-15 18:13:09	2021-10-15 18:13:09
88	369153371.93	1973-07-25 03:09:45	36	82	2021-10-15 18:13:09	2021-10-15 18:13:09
89	42755094.68	2008-03-08 12:16:57	30	81	2021-10-15 18:13:09	2021-10-15 18:13:09
90	10.41	2021-09-19 22:20:58	33	81	2021-10-15 18:13:09	2021-10-15 18:13:09
91	1652432.13	2002-03-16 19:56:16	20	26	2021-10-15 18:13:09	2021-10-15 18:13:09
92	255.95	1971-10-23 13:06:26	6	98	2021-10-15 18:13:09	2021-10-15 18:13:09
93	2014.88	2014-05-21 17:07:37	31	58	2021-10-15 18:13:09	2021-10-15 18:13:09
94	426653998.26	1993-04-28 17:25:54	30	64	2021-10-15 18:13:09	2021-10-15 18:13:09
95	120039917.64	2016-12-25 10:54:46	13	58	2021-10-15 18:13:09	2021-10-15 18:13:09
96	1.87	2002-05-10 08:58:38	10	89	2021-10-15 18:13:09	2021-10-15 18:13:09
97	1602.25	1981-06-21 04:35:29	5	33	2021-10-15 18:13:09	2021-10-15 18:13:09
98	125964.8	2013-07-03 01:02:42	1	70	2021-10-15 18:13:09	2021-10-15 18:13:09
99	2.17	1991-03-26 19:25:22	29	49	2021-10-15 18:13:09	2021-10-15 18:13:09
100	65467.71	2013-01-09 03:40:58	29	86	2021-10-15 18:13:09	2021-10-15 18:13:09
103	30	2021-10-27 12:18:25	2	3	2021-10-27 12:52:29	2021-10-27 12:52:29
104	30	2021-10-27 12:18:25	2	3	2021-10-27 12:53:36	2021-10-27 12:53:36
105	30	2021-10-27 12:18:25	2	3	2021-10-27 12:54:03	2021-10-27 12:54:03
106	30	2021-10-27 12:18:25	2	3	2021-10-27 12:54:26	2021-10-27 12:54:26
107	30	2021-10-27 12:18:25	2	3	2021-10-27 12:54:39	2021-10-27 12:54:39
108	30	2021-10-27 12:18:25	2	3	2021-10-27 12:54:43	2021-10-27 12:54:43
109	30	2021-10-27 12:18:25	2	3	2021-10-27 12:54:45	2021-10-27 12:54:45
110	30	2021-10-27 12:18:25	2	3	2021-10-27 12:54:47	2021-10-27 12:54:47
\.


--
-- TOC entry 3363 (class 0 OID 34542)
-- Dependencies: 212
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.customers (id, created_at, updated_at, "firstName", "lastName", "photoUrl", user_id) FROM stdin;
1	2021-10-15 18:12:58	2021-10-15 18:12:58	Savion	Melyssa	https://ui-avatars.com/api/?background=random	102
2	2021-10-15 18:12:58	2021-10-15 18:12:58	Cole	Ike	https://ui-avatars.com/api/?background=random	40
3	2021-10-15 18:12:58	2021-10-15 18:12:58	Nikko	Joana	https://ui-avatars.com/api/?background=random	118
4	2021-10-15 18:12:58	2021-10-15 18:12:58	Chad	Ima	https://ui-avatars.com/api/?background=random	66
5	2021-10-15 18:12:58	2021-10-15 18:12:58	Rylee	Berniece	https://ui-avatars.com/api/?background=random	85
6	2021-10-15 18:12:58	2021-10-15 18:12:58	Dallas	Carley	https://ui-avatars.com/api/?background=random	52
7	2021-10-15 18:12:58	2021-10-15 18:12:58	Domenica	Duane	https://ui-avatars.com/api/?background=random	103
8	2021-10-15 18:12:58	2021-10-15 18:12:58	Jerad	Watson	https://ui-avatars.com/api/?background=random	108
9	2021-10-15 18:12:58	2021-10-15 18:12:58	Earline	Brando	https://ui-avatars.com/api/?background=random	109
10	2021-10-15 18:12:58	2021-10-15 18:12:58	Thora	Lucienne	https://ui-avatars.com/api/?background=random	101
11	2021-10-15 18:12:58	2021-10-15 18:12:58	Marina	Joey	https://ui-avatars.com/api/?background=random	8
12	2021-10-15 18:12:58	2021-10-15 18:12:58	Camryn	Yvette	https://ui-avatars.com/api/?background=random	23
13	2021-10-15 18:12:58	2021-10-15 18:12:58	Leo	Clara	https://ui-avatars.com/api/?background=random	77
14	2021-10-15 18:12:58	2021-10-15 18:12:58	Alec	Felix	https://ui-avatars.com/api/?background=random	114
15	2021-10-15 18:12:58	2021-10-15 18:12:58	Lurline	Jess	https://ui-avatars.com/api/?background=random	115
16	2021-10-15 18:12:58	2021-10-15 18:12:58	Lenore	Elsa	https://ui-avatars.com/api/?background=random	117
18	2021-10-15 18:12:58	2021-10-15 18:12:58	Emily	Fiona	https://ui-avatars.com/api/?background=random	32
19	2021-10-15 18:12:58	2021-10-15 18:12:58	Martin	Guiseppe	https://ui-avatars.com/api/?background=random	106
20	2021-10-15 18:12:58	2021-10-15 18:12:58	Casimer	Hudson	https://ui-avatars.com/api/?background=random	88
21	2021-10-15 18:12:58	2021-10-15 18:12:58	Cydney	Jakayla	https://ui-avatars.com/api/?background=random	45
23	2021-10-15 18:12:58	2021-10-15 18:12:58	Tatum	Kelli	https://ui-avatars.com/api/?background=random	48
24	2021-10-15 18:12:58	2021-10-15 18:12:58	Grady	Jonas	https://ui-avatars.com/api/?background=random	110
25	2021-10-15 18:12:58	2021-10-15 18:12:58	Aletha	Green	https://ui-avatars.com/api/?background=random	104
26	2021-10-15 18:12:58	2021-10-15 18:12:58	Tom	Lilyan	https://ui-avatars.com/api/?background=random	89
27	2021-10-15 18:12:58	2021-10-15 18:12:58	Brant	Ethan	https://ui-avatars.com/api/?background=random	1
28	2021-10-15 18:12:58	2021-10-15 18:12:58	Alf	Mellie	https://ui-avatars.com/api/?background=random	107
29	2021-10-15 18:12:58	2021-10-15 18:12:58	Ola	Reymundo	https://ui-avatars.com/api/?background=random	31
30	2021-10-15 18:12:58	2021-10-15 18:12:58	Dee	Caleigh	https://ui-avatars.com/api/?background=random	105
31	2021-10-15 18:12:58	2021-10-15 18:12:58	Margarett	Madelyn	https://ui-avatars.com/api/?background=random	116
32	2021-10-15 18:12:58	2021-10-15 18:12:58	Edna	Thea	https://ui-avatars.com/api/?background=random	119
33	2021-10-15 18:12:58	2021-10-15 18:12:58	Estevan	Suzanne	https://ui-avatars.com/api/?background=random	120
34	2021-10-15 18:12:58	2021-10-15 18:12:58	Earnestine	Karolann	https://ui-avatars.com/api/?background=random	84
35	2021-10-15 18:12:58	2021-10-15 18:12:58	Elyse	Jane	https://ui-avatars.com/api/?background=random	86
36	2021-10-15 18:12:58	2021-10-15 18:12:58	Hector	Chauncey	https://ui-avatars.com/api/?background=random	112
37	2021-10-15 18:12:58	2021-10-15 18:12:58	Gussie	Willie	https://ui-avatars.com/api/?background=random	113
38	2021-10-15 18:12:58	2021-10-15 18:12:58	Jason	Buster	https://ui-avatars.com/api/?background=random	111
39	2021-10-15 18:12:58	2021-10-15 18:12:58	Bernita	Raegan	https://ui-avatars.com/api/?background=random	16
40	2021-10-15 18:12:58	2021-10-15 18:12:58	Sheila	Kaylie	https://ui-avatars.com/api/?background=random	94
41	2021-10-19 11:17:08	2021-10-19 11:17:08	George	Ndiranguu	http	130
42	2021-10-19 11:17:50	2021-10-19 11:17:50	George	Ndiranguu	http	131
43	2021-10-19 11:18:28	2021-10-19 11:18:28	George	Ndiranguu	http	132
44	2021-10-19 11:19:03	2021-10-19 11:19:03	George	Ndiranguu	http	133
45	2021-10-19 11:21:26	2021-10-19 11:21:26	George	Ndiranguu	https://ui-avatars.com/api/?background=random	134
47	2021-10-19 12:11:00	2021-10-19 12:11:00	George	Ndirangu	https://ui-avatars.com/api/?background=random	2
49	2021-10-19 12:17:02	2021-10-19 12:17:02	George	Ndirangu	https://ui-avatars.com/api/?background=random	137
50	2021-10-19 12:17:43	2021-10-19 12:17:43	George	Ndirangu	https://ui-avatars.com/api/?background=random	3
51	2021-10-19 19:38:39	2021-10-19 19:38:39	mega wholesalers	gjgjg	https://ui-avatars.com/api/?background=random	143
\.


--
-- TOC entry 3381 (class 0 OID 34680)
-- Dependencies: 230
-- Data for Name: debit_notes; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.debit_notes (id, amount, deadline, supplier_id, shop_id, created_at, updated_at) FROM stdin;
1	648.58	1979-01-27 23:33:03	19	13	2021-10-15 18:13:09	2021-10-15 18:13:09
2	27266.33	2009-08-27 02:25:59	23	55	2021-10-15 18:13:09	2021-10-15 18:13:09
3	743.53	2016-01-19 21:37:50	37	70	2021-10-15 18:13:09	2021-10-15 18:13:09
4	7.65	2008-03-22 19:00:41	37	36	2021-10-15 18:13:09	2021-10-15 18:13:09
5	28.21	2009-10-09 01:09:48	18	30	2021-10-15 18:13:09	2021-10-15 18:13:09
6	100.61	2020-08-27 21:09:39	19	48	2021-10-15 18:13:09	2021-10-15 18:13:09
7	0	2002-11-02 01:42:49	10	58	2021-10-15 18:13:09	2021-10-15 18:13:09
8	425885.61	1979-11-26 01:00:00	33	87	2021-10-15 18:13:09	2021-10-15 18:13:09
9	4698756.8	2004-05-14 08:36:43	30	34	2021-10-15 18:13:09	2021-10-15 18:13:09
10	37.51	1982-02-28 16:44:44	31	53	2021-10-15 18:13:09	2021-10-15 18:13:09
11	895175.6	1973-10-11 03:17:56	10	5	2021-10-15 18:13:09	2021-10-15 18:13:09
12	85.04	2010-02-13 05:23:23	7	59	2021-10-15 18:13:09	2021-10-15 18:13:09
13	489669.7	2014-10-17 00:30:19	27	92	2021-10-15 18:13:09	2021-10-15 18:13:09
14	249.04	2015-07-23 09:31:57	36	36	2021-10-15 18:13:09	2021-10-15 18:13:09
15	567722	1986-02-14 19:38:53	28	79	2021-10-15 18:13:09	2021-10-15 18:13:09
16	13.25	2007-07-24 08:51:32	5	33	2021-10-15 18:13:09	2021-10-15 18:13:09
17	153484269.67	2013-08-12 03:21:03	18	9	2021-10-15 18:13:09	2021-10-15 18:13:09
18	54.96	2005-11-10 10:32:12	14	3	2021-10-15 18:13:09	2021-10-15 18:13:09
19	35637060.72	1985-11-14 07:18:23	9	59	2021-10-15 18:13:09	2021-10-15 18:13:09
20	236295.39	1972-11-22 08:22:13	19	5	2021-10-15 18:13:09	2021-10-15 18:13:09
21	48315.79	1974-01-13 14:49:27	16	19	2021-10-15 18:13:10	2021-10-15 18:13:10
22	6447252.85	1975-03-27 02:57:42	28	89	2021-10-15 18:13:10	2021-10-15 18:13:10
23	134.76	2020-12-19 01:08:11	6	45	2021-10-15 18:13:10	2021-10-15 18:13:10
24	50294414.98	1978-12-21 16:44:53	23	54	2021-10-15 18:13:10	2021-10-15 18:13:10
25	304.83	1989-02-21 23:19:20	22	78	2021-10-15 18:13:10	2021-10-15 18:13:10
26	1.24	2010-01-04 12:54:12	11	67	2021-10-15 18:13:10	2021-10-15 18:13:10
27	260547.75	2018-05-28 22:41:20	11	48	2021-10-15 18:13:10	2021-10-15 18:13:10
28	9.25	2004-06-19 21:53:48	40	76	2021-10-15 18:13:10	2021-10-15 18:13:10
29	675.47	1995-02-22 14:58:54	13	20	2021-10-15 18:13:10	2021-10-15 18:13:10
30	8828285.08	1975-07-16 10:08:13	13	19	2021-10-15 18:13:10	2021-10-15 18:13:10
31	329.8	2016-06-04 20:37:18	11	43	2021-10-15 18:13:10	2021-10-15 18:13:10
32	103613.28	1984-01-11 04:29:54	9	62	2021-10-15 18:13:10	2021-10-15 18:13:10
33	48.33	1988-10-31 04:16:36	8	90	2021-10-15 18:13:10	2021-10-15 18:13:10
34	7.06	1977-08-01 23:49:22	14	2	2021-10-15 18:13:10	2021-10-15 18:13:10
35	854083.41	2003-02-04 20:25:31	38	42	2021-10-15 18:13:10	2021-10-15 18:13:10
36	564203.09	1978-04-25 09:06:17	11	18	2021-10-15 18:13:10	2021-10-15 18:13:10
37	4160222.49	1988-11-01 07:13:48	17	31	2021-10-15 18:13:10	2021-10-15 18:13:10
38	260227125.11	1973-06-27 15:46:48	37	35	2021-10-15 18:13:10	2021-10-15 18:13:10
39	780646942.64	1976-04-02 10:20:40	9	25	2021-10-15 18:13:10	2021-10-15 18:13:10
40	1833711.01	2018-06-01 05:44:43	12	99	2021-10-15 18:13:10	2021-10-15 18:13:10
41	2227360.23	2011-01-24 13:25:47	39	29	2021-10-15 18:13:10	2021-10-15 18:13:10
42	1530.55	1975-12-22 22:14:24	37	2	2021-10-15 18:13:10	2021-10-15 18:13:10
43	17760.86	1978-10-08 06:45:35	21	75	2021-10-15 18:13:10	2021-10-15 18:13:10
44	550474.28	2002-03-09 15:55:48	32	18	2021-10-15 18:13:10	2021-10-15 18:13:10
45	9898.53	2008-10-06 11:58:03	5	72	2021-10-15 18:13:10	2021-10-15 18:13:10
46	53.43	1990-03-01 15:39:15	31	2	2021-10-15 18:13:10	2021-10-15 18:13:10
47	3239149.02	1973-10-10 03:11:34	17	26	2021-10-15 18:13:10	2021-10-15 18:13:10
48	407821.67	2014-03-30 00:03:40	39	11	2021-10-15 18:13:10	2021-10-15 18:13:10
49	278.53	1971-04-09 08:21:36	4	82	2021-10-15 18:13:10	2021-10-15 18:13:10
50	357678.87	2014-09-05 02:35:00	4	25	2021-10-15 18:13:10	2021-10-15 18:13:10
51	93513483.1	1994-02-05 16:28:50	7	72	2021-10-15 18:13:10	2021-10-15 18:13:10
52	985.6	1977-11-24 06:03:50	36	99	2021-10-15 18:13:10	2021-10-15 18:13:10
53	6697115.18	1971-05-09 23:16:13	13	51	2021-10-15 18:13:10	2021-10-15 18:13:10
54	503253.37	1994-05-29 07:14:10	12	98	2021-10-15 18:13:10	2021-10-15 18:13:10
55	1600.63	1995-10-06 15:29:13	15	70	2021-10-15 18:13:10	2021-10-15 18:13:10
56	5266.03	1975-10-19 03:52:55	40	97	2021-10-15 18:13:10	2021-10-15 18:13:10
57	1790.3	2000-12-04 11:51:01	28	56	2021-10-15 18:13:10	2021-10-15 18:13:10
58	138589.01	1983-08-31 04:02:25	24	7	2021-10-15 18:13:10	2021-10-15 18:13:10
59	667.78	2016-07-05 03:40:21	7	45	2021-10-15 18:13:10	2021-10-15 18:13:10
60	15002.74	2015-04-18 02:24:28	17	95	2021-10-15 18:13:10	2021-10-15 18:13:10
61	3.39	1993-06-06 18:51:12	20	89	2021-10-15 18:13:10	2021-10-15 18:13:10
62	7.52	1992-03-10 07:20:21	28	8	2021-10-15 18:13:10	2021-10-15 18:13:10
63	2843212.23	2007-01-15 10:55:56	19	77	2021-10-15 18:13:10	2021-10-15 18:13:10
64	4.62	2010-12-28 17:52:30	29	14	2021-10-15 18:13:10	2021-10-15 18:13:10
65	365706519.17	2008-03-14 19:55:40	1	70	2021-10-15 18:13:10	2021-10-15 18:13:10
66	159.49	1997-08-19 18:58:11	11	25	2021-10-15 18:13:10	2021-10-15 18:13:10
67	4819205.4	2001-06-28 00:12:29	1	80	2021-10-15 18:13:10	2021-10-15 18:13:10
68	3878094.37	2006-08-20 21:18:55	36	65	2021-10-15 18:13:10	2021-10-15 18:13:10
69	45262.92	1993-06-02 09:35:24	30	44	2021-10-15 18:13:10	2021-10-15 18:13:10
70	2.14	2006-06-11 02:51:34	3	55	2021-10-15 18:13:10	2021-10-15 18:13:10
71	2.46	2021-01-06 13:21:49	28	86	2021-10-15 18:13:10	2021-10-15 18:13:10
72	363611.18	2011-02-27 18:30:08	8	3	2021-10-15 18:13:10	2021-10-15 18:13:10
73	5549559.75	2018-02-03 20:18:12	30	65	2021-10-15 18:13:10	2021-10-15 18:13:10
74	24.16	1997-05-31 21:33:51	11	21	2021-10-15 18:13:10	2021-10-15 18:13:10
75	31.97	1991-07-28 03:20:55	39	1	2021-10-15 18:13:10	2021-10-15 18:13:10
76	112.77	1973-10-08 10:34:56	2	10	2021-10-15 18:13:10	2021-10-15 18:13:10
77	5009600.11	1990-04-01 04:29:14	13	27	2021-10-15 18:13:10	2021-10-15 18:13:10
78	9100.45	1995-04-22 16:34:56	40	100	2021-10-15 18:13:10	2021-10-15 18:13:10
79	3097045.93	2004-07-26 07:46:10	10	5	2021-10-15 18:13:10	2021-10-15 18:13:10
80	23241.28	1976-05-29 22:05:46	26	70	2021-10-15 18:13:10	2021-10-15 18:13:10
81	319529.87	1987-07-01 17:21:02	8	33	2021-10-15 18:13:10	2021-10-15 18:13:10
82	874.4	1971-09-17 15:50:51	4	51	2021-10-15 18:13:10	2021-10-15 18:13:10
83	1.3	1980-03-01 00:33:38	36	86	2021-10-15 18:13:10	2021-10-15 18:13:10
84	205.85	1993-05-26 05:19:03	32	19	2021-10-15 18:13:10	2021-10-15 18:13:10
85	988.19	1980-07-14 16:33:10	20	21	2021-10-15 18:13:10	2021-10-15 18:13:10
86	116.85	2019-09-10 22:39:33	17	71	2021-10-15 18:13:10	2021-10-15 18:13:10
87	446644.19	1978-10-05 18:00:31	9	40	2021-10-15 18:13:10	2021-10-15 18:13:10
88	901496.58	2020-01-05 00:35:24	27	44	2021-10-15 18:13:10	2021-10-15 18:13:10
89	37014	1992-08-10 17:37:28	33	97	2021-10-15 18:13:10	2021-10-15 18:13:10
90	43.98	2018-10-04 00:54:24	25	92	2021-10-15 18:13:10	2021-10-15 18:13:10
91	45301092.15	1973-10-01 21:22:26	34	38	2021-10-15 18:13:10	2021-10-15 18:13:10
92	25.5	1985-06-27 10:40:10	2	60	2021-10-15 18:13:10	2021-10-15 18:13:10
93	459.13	1991-10-13 06:56:40	21	12	2021-10-15 18:13:10	2021-10-15 18:13:10
94	1549617.41	2010-06-15 13:45:11	36	23	2021-10-15 18:13:10	2021-10-15 18:13:10
95	5058.21	1984-01-17 07:01:13	3	79	2021-10-15 18:13:10	2021-10-15 18:13:10
96	293345.21	2020-06-03 09:35:07	35	100	2021-10-15 18:13:10	2021-10-15 18:13:10
97	180477562.66	1998-11-29 11:08:12	29	61	2021-10-15 18:13:10	2021-10-15 18:13:10
98	11088.94	1974-05-20 17:32:11	16	29	2021-10-15 18:13:10	2021-10-15 18:13:10
99	2.44	1975-03-07 05:35:39	34	91	2021-10-15 18:13:10	2021-10-15 18:13:10
100	188603472.78	2017-12-24 20:16:24	12	69	2021-10-15 18:13:10	2021-10-15 18:13:10
113	30	2021-10-27 12:18:25	2	3	2021-10-27 12:33:05	2021-10-27 12:33:05
114	30	2021-10-27 12:18:25	2	3	2021-10-27 12:36:52	2021-10-27 12:36:52
115	30	2021-10-27 12:18:25	2	3	2021-10-27 12:37:52	2021-10-27 12:37:52
116	30	2021-10-27 12:18:25	2	3	2021-10-27 12:38:13	2021-10-27 12:38:13
117	30	2021-10-27 12:18:25	2	3	2021-10-27 12:38:38	2021-10-27 12:38:38
118	30	2021-10-27 12:18:25	2	3	2021-10-27 12:38:44	2021-10-27 12:38:44
119	30	2021-10-27 12:18:25	2	3	2021-10-27 12:39:02	2021-10-27 12:39:02
120	30	2021-10-27 12:18:25	2	3	2021-10-27 12:40:40	2021-10-27 12:40:40
121	30	2021-10-27 12:18:25	2	3	2021-10-27 12:41:31	2021-10-27 12:41:31
122	30	2021-10-27 12:18:25	2	3	2021-10-27 12:41:39	2021-10-27 12:41:39
123	30	2021-10-27 12:18:25	2	3	2021-10-27 12:41:41	2021-10-27 12:41:41
124	30	2021-10-27 12:18:25	2	3	2021-10-27 12:41:42	2021-10-27 12:41:42
125	30	2021-10-27 12:18:25	2	3	2021-10-27 12:41:44	2021-10-27 12:41:44
126	30	2021-10-27 12:18:25	2	3	2021-10-27 12:41:47	2021-10-27 12:41:47
127	30	2021-10-27 12:18:25	2	3	2021-10-27 12:44:32	2021-10-27 12:44:32
128	30	2021-10-27 12:18:25	2	3	2021-10-27 12:44:34	2021-10-27 12:44:34
129	30	2021-10-27 12:18:25	2	3	2021-10-27 12:44:35	2021-10-27 12:44:35
130	30	2021-10-27 12:18:25	2	3	2021-10-27 12:44:37	2021-10-27 12:44:37
131	30	2021-10-27 12:18:25	2	3	2021-10-27 12:44:38	2021-10-27 12:44:38
132	30	2021-10-27 12:18:25	2	3	2021-10-27 12:44:39	2021-10-27 12:44:39
133	30	2021-10-27 12:18:25	2	3	2021-10-27 12:44:39	2021-10-27 12:44:39
134	30	2021-10-27 12:18:25	2	3	2021-10-27 12:44:40	2021-10-27 12:44:40
135	30	2021-10-27 12:18:25	2	3	2021-10-27 12:44:40	2021-10-27 12:44:40
\.


--
-- TOC entry 3357 (class 0 OID 34499)
-- Dependencies: 206
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- TOC entry 3375 (class 0 OID 34626)
-- Dependencies: 224
-- Data for Name: inventory_items; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.inventory_items (id, "initialStock", "currentStock", "boughtAt", "sellAt", shop_id, product_id, created_at, updated_at) FROM stdin;
1	955	79	0.31	35.61	64	80	2021-10-15 18:13:07	2021-10-15 18:13:07
2	998	98	34963.81	7449918.2	52	42	2021-10-15 18:13:07	2021-10-15 18:13:07
3	579	89	3155446.47	139478	58	31	2021-10-15 18:13:07	2021-10-15 18:13:07
4	140	8	818.84	176015132.55	68	48	2021-10-15 18:13:07	2021-10-15 18:13:07
5	460	58	271748.09	265300.41	50	90	2021-10-15 18:13:07	2021-10-15 18:13:07
6	852	89	538655.5	0.72	100	15	2021-10-15 18:13:07	2021-10-15 18:13:07
7	812	97	11108172.37	7.9	74	88	2021-10-15 18:13:07	2021-10-15 18:13:07
8	209	59	144.36	24742157.54	15	41	2021-10-15 18:13:07	2021-10-15 18:13:07
9	392	8	8119.83	1461126.97	51	75	2021-10-15 18:13:07	2021-10-15 18:13:07
10	104	46	61255.11	4209.67	45	61	2021-10-15 18:13:07	2021-10-15 18:13:07
11	653	64	3698164.16	31656057.65	31	34	2021-10-15 18:13:07	2021-10-15 18:13:07
12	570	70	3.61	8.44	89	51	2021-10-15 18:13:07	2021-10-15 18:13:07
13	709	91	51.36	30264680.28	86	10	2021-10-15 18:13:07	2021-10-15 18:13:07
14	710	99	610482.63	801.51	65	3	2021-10-15 18:13:07	2021-10-15 18:13:07
15	182	4	383049.78	22816956.7	3	70	2021-10-15 18:13:07	2021-10-15 18:13:07
16	223	92	113.05	1996343.74	55	5	2021-10-15 18:13:07	2021-10-15 18:13:07
17	260	76	52809.79	121016.47	66	22	2021-10-15 18:13:07	2021-10-15 18:13:07
18	189	23	15768349.12	22918060.13	97	24	2021-10-15 18:13:07	2021-10-15 18:13:07
19	255	58	3404620.12	39.01	65	86	2021-10-15 18:13:07	2021-10-15 18:13:07
20	853	43	53.63	12448.13	30	72	2021-10-15 18:13:07	2021-10-15 18:13:07
21	243	22	0.48	51267.06	70	65	2021-10-15 18:13:07	2021-10-15 18:13:07
22	311	15	97.45	26.19	11	71	2021-10-15 18:13:07	2021-10-15 18:13:07
23	732	72	1416502.75	189256.24	60	26	2021-10-15 18:13:07	2021-10-15 18:13:07
24	666	7	648657.21	13.41	76	95	2021-10-15 18:13:07	2021-10-15 18:13:07
25	471	76	0	3620.85	24	86	2021-10-15 18:13:07	2021-10-15 18:13:07
26	833	44	338558.96	20.33	20	87	2021-10-15 18:13:07	2021-10-15 18:13:07
27	255	96	3436174.27	13774982.81	92	4	2021-10-15 18:13:07	2021-10-15 18:13:07
28	206	75	3.82	1.64	36	70	2021-10-15 18:13:07	2021-10-15 18:13:07
29	139	80	98514.36	10.7	74	18	2021-10-15 18:13:07	2021-10-15 18:13:07
30	298	46	36.83	58152.38	61	84	2021-10-15 18:13:07	2021-10-15 18:13:07
31	332	68	80794063.64	40948561.09	22	27	2021-10-15 18:13:07	2021-10-15 18:13:07
32	343	23	120060266.64	2050214.7	62	81	2021-10-15 18:13:07	2021-10-15 18:13:07
33	617	52	601831.73	47.91	55	37	2021-10-15 18:13:07	2021-10-15 18:13:07
34	499	43	3824184.11	1582512.83	79	70	2021-10-15 18:13:07	2021-10-15 18:13:07
35	655	72	1515.64	8095653.07	71	84	2021-10-15 18:13:07	2021-10-15 18:13:07
37	784	60	173.16	1174875.07	14	46	2021-10-15 18:13:07	2021-10-15 18:13:07
38	878	56	8.14	10395370.21	84	5	2021-10-15 18:13:07	2021-10-15 18:13:07
39	337	45	1761.43	3733805.33	78	70	2021-10-15 18:13:07	2021-10-15 18:13:07
40	761	37	4.45	7.27	3	32	2021-10-15 18:13:07	2021-10-15 18:13:07
41	546	55	6947.25	5.44	68	44	2021-10-15 18:13:07	2021-10-15 18:13:07
42	789	64	5342771.69	4.54	56	96	2021-10-15 18:13:07	2021-10-15 18:13:07
43	856	88	553795127.69	1085.76	85	67	2021-10-15 18:13:07	2021-10-15 18:13:07
44	317	33	25754.8	3743.71	29	35	2021-10-15 18:13:07	2021-10-15 18:13:07
45	932	93	650150.29	326176643.62	59	46	2021-10-15 18:13:07	2021-10-15 18:13:07
46	361	56	4984972.52	47912981.55	73	82	2021-10-15 18:13:07	2021-10-15 18:13:07
47	864	14	1377.99	4704.04	46	33	2021-10-15 18:13:07	2021-10-15 18:13:07
48	730	80	491.57	24240345.58	22	68	2021-10-15 18:13:07	2021-10-15 18:13:07
49	768	25	0.16	6177.71	56	51	2021-10-15 18:13:07	2021-10-15 18:13:07
50	361	95	0.36	53063.63	82	75	2021-10-15 18:13:07	2021-10-15 18:13:07
51	773	48	3.32	796091.83	45	73	2021-10-15 18:13:08	2021-10-15 18:13:08
52	596	21	173616.75	0.12	76	37	2021-10-15 18:13:08	2021-10-15 18:13:08
53	792	71	432095.88	1.35	35	56	2021-10-15 18:13:08	2021-10-15 18:13:08
54	619	55	1458.28	19.38	14	40	2021-10-15 18:13:08	2021-10-15 18:13:08
55	426	93	96.48	0	66	12	2021-10-15 18:13:08	2021-10-15 18:13:08
56	199	96	5.53	61490507.11	50	79	2021-10-15 18:13:08	2021-10-15 18:13:08
57	327	84	9498.17	5299.37	66	12	2021-10-15 18:13:08	2021-10-15 18:13:08
58	559	41	257.69	113087.18	69	15	2021-10-15 18:13:08	2021-10-15 18:13:08
59	894	4	843650496.34	6764775.26	88	71	2021-10-15 18:13:08	2021-10-15 18:13:08
60	329	42	7369041.84	256655.08	28	10	2021-10-15 18:13:08	2021-10-15 18:13:08
61	444	7	4319.56	0.41	60	58	2021-10-15 18:13:08	2021-10-15 18:13:08
62	953	38	331156.1	1238.22	77	81	2021-10-15 18:13:08	2021-10-15 18:13:08
63	706	87	1.99	35786819.01	63	1	2021-10-15 18:13:08	2021-10-15 18:13:08
64	524	53	25.04	0.85	21	44	2021-10-15 18:13:08	2021-10-15 18:13:08
65	726	78	1915187.25	118.21	83	8	2021-10-15 18:13:08	2021-10-15 18:13:08
66	138	52	238016202.28	794.4	90	52	2021-10-15 18:13:08	2021-10-15 18:13:08
67	244	72	1.22	183185907.86	64	10	2021-10-15 18:13:08	2021-10-15 18:13:08
68	785	76	0.16	524.37	97	21	2021-10-15 18:13:08	2021-10-15 18:13:08
69	929	75	231178.96	6.54	23	69	2021-10-15 18:13:08	2021-10-15 18:13:08
70	745	78	131.09	2897041.11	6	85	2021-10-15 18:13:08	2021-10-15 18:13:08
71	155	51	680267.2	117946.5	97	91	2021-10-15 18:13:08	2021-10-15 18:13:08
72	475	40	0.12	40237138.3	56	5	2021-10-15 18:13:08	2021-10-15 18:13:08
73	936	84	58413115	4.72	32	31	2021-10-15 18:13:08	2021-10-15 18:13:08
74	833	13	13378.72	9612668.94	20	35	2021-10-15 18:13:08	2021-10-15 18:13:08
75	419	87	49.61	40963.86	62	29	2021-10-15 18:13:08	2021-10-15 18:13:08
76	552	6	214060.21	3415881.25	26	78	2021-10-15 18:13:08	2021-10-15 18:13:08
77	244	11	4916005.99	19.86	49	13	2021-10-15 18:13:08	2021-10-15 18:13:08
78	478	39	805509.34	325	32	64	2021-10-15 18:13:08	2021-10-15 18:13:08
79	912	73	22995.44	339527993.93	46	98	2021-10-15 18:13:08	2021-10-15 18:13:08
80	395	70	485386.5	4237.73	8	13	2021-10-15 18:13:08	2021-10-15 18:13:08
81	683	31	3.47	2.39	95	7	2021-10-15 18:13:08	2021-10-15 18:13:08
82	437	8	192038.27	50.07	5	60	2021-10-15 18:13:08	2021-10-15 18:13:08
83	482	84	375618853.3	4.23	1	26	2021-10-15 18:13:08	2021-10-15 18:13:08
84	420	38	10913253.81	123.56	68	2	2021-10-15 18:13:08	2021-10-15 18:13:08
85	285	13	99.93	225.66	91	14	2021-10-15 18:13:08	2021-10-15 18:13:08
86	355	8	29715.81	2393.44	84	15	2021-10-15 18:13:08	2021-10-15 18:13:08
87	926	89	879.89	31133.61	78	46	2021-10-15 18:13:08	2021-10-15 18:13:08
88	1000	42	236376.33	2770.98	88	89	2021-10-15 18:13:08	2021-10-15 18:13:08
89	494	14	0.32	301.63	88	65	2021-10-15 18:13:08	2021-10-15 18:13:08
90	231	2	35.91	7057.4	86	75	2021-10-15 18:13:08	2021-10-15 18:13:08
91	694	71	1447.87	88.22	96	36	2021-10-15 18:13:08	2021-10-15 18:13:08
92	347	53	199524.28	462.03	59	52	2021-10-15 18:13:08	2021-10-15 18:13:08
93	705	72	89.85	2473.45	47	98	2021-10-15 18:13:08	2021-10-15 18:13:08
94	318	6	25924185.09	199.64	37	35	2021-10-15 18:13:08	2021-10-15 18:13:08
95	778	38	283215.63	35302415.6	8	53	2021-10-15 18:13:08	2021-10-15 18:13:08
96	325	98	16112.7	6.79	76	48	2021-10-15 18:13:08	2021-10-15 18:13:08
97	270	76	725375.17	826135421.02	91	30	2021-10-15 18:13:08	2021-10-15 18:13:08
98	120	45	115359.39	4080813.85	86	42	2021-10-15 18:13:08	2021-10-15 18:13:08
99	529	71	70.68	0	94	55	2021-10-15 18:13:08	2021-10-15 18:13:08
100	683	39	606309.17	509165.92	78	31	2021-10-15 18:13:08	2021-10-15 18:13:08
103	400	400	50	60.9	55	4	2021-10-16 13:51:29	2021-10-16 13:51:29
104	400	400	50	60.9	55	4	2021-10-16 13:52:04	2021-10-16 13:52:04
105	100	23	345	356	2	4	2021-10-20 06:24:31	2021-10-20 06:24:31
106	100	23	345	356	2	4	2021-10-20 06:27:09	2021-10-20 06:27:09
107	100	23	345	356	2	4	2021-10-20 06:31:46	2021-10-20 06:31:46
36	801	81	19795.11	176951.67	48	46	2021-10-15 18:13:07	2021-12-24 12:31:52
109	300	260	34	45	48	3	2021-12-24 11:44:16	2021-12-24 12:31:52
\.


--
-- TOC entry 3391 (class 0 OID 34809)
-- Dependencies: 240
-- Data for Name: metas; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.metas (id, key, value, for_type, user_id, shop_owner_id, customer_id, supplier_id, shop_id, product_id, brand_id, inventory_item_id, supplier_item_id, purchase_order_id, sales_order_id, credit_note_id, debit_note_id, transaction_id, created_at, updated_at) FROM stdin;
3	adipisci	modi		\N	8	\N	12	\N	75	\N	78	\N	\N	\N	\N	\N	98	2021-10-15 18:19:19	2021-10-15 18:19:19
4	sint	tenetur		\N	34	23	19	\N	\N	\N	\N	37	58	50	3	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
5	id	repellendus		56	22	37	\N	91	\N	90	13	31	87	34	26	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
6	consequatur	recusandae		11	36	\N	\N	\N	\N	\N	21	21	\N	\N	80	52	133	2021-10-15 18:19:19	2021-10-15 18:19:19
7	nesciunt	voluptas		\N	\N	\N	\N	\N	\N	55	56	77	\N	46	\N	21	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
8	consectetur	iusto		24	17	\N	\N	37	\N	\N	\N	85	\N	\N	\N	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
9	eius	dicta		\N	\N	\N	26	\N	\N	47	\N	\N	84	\N	53	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
10	consequuntur	veritatis		\N	\N	\N	17	\N	36	47	72	\N	91	\N	\N	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
11	doloribus	expedita		26	27	\N	10	19	\N	\N	25	28	52	\N	\N	\N	132	2021-10-15 18:19:19	2021-10-15 18:19:19
12	non	ratione		\N	38	23	\N	83	\N	45	\N	\N	\N	7	\N	44	76	2021-10-15 18:19:19	2021-10-15 18:19:19
13	error	ut		\N	2	\N	27	62	\N	\N	1	\N	\N	39	\N	86	73	2021-10-15 18:19:19	2021-10-15 18:19:19
14	quisquam	possimus		\N	33	8	10	95	89	\N	79	\N	98	\N	25	31	145	2021-10-15 18:19:19	2021-10-15 18:19:19
15	quidem	aut		64	\N	1	26	\N	37	9	35	76	\N	96	\N	55	73	2021-10-15 18:19:19	2021-10-15 18:19:19
16	eligendi	quia		65	\N	\N	\N	\N	80	\N	44	\N	\N	69	\N	31	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
17	consequatur	nulla		64	\N	\N	10	\N	\N	72	\N	\N	40	91	36	\N	130	2021-10-15 18:19:19	2021-10-15 18:19:19
18	omnis	rem		98	37	\N	6	45	\N	61	\N	\N	62	69	76	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
19	nesciunt	itaque		40	4	\N	18	\N	65	19	22	29	31	62	46	26	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
20	est	neque		\N	\N	\N	7	86	\N	\N	\N	\N	21	\N	\N	\N	90	2021-10-15 18:19:19	2021-10-15 18:19:19
21	omnis	distinctio		77	25	\N	\N	46	\N	\N	69	12	\N	\N	\N	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
22	voluptatem	quia		1	37	23	\N	\N	\N	\N	25	\N	20	24	9	87	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
24	assumenda	in		53	\N	\N	\N	\N	\N	\N	\N	\N	60	46	\N	98	68	2021-10-15 18:19:19	2021-10-15 18:19:19
25	totam	id		2	1	\N	7	\N	\N	64	\N	\N	\N	12	\N	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
26	asperiores	et		\N	39	19	\N	68	23	\N	63	\N	60	15	\N	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
27	optio	sint		78	15	26	\N	33	\N	\N	71	9	10	25	\N	\N	96	2021-10-15 18:19:19	2021-10-15 18:19:19
28	ipsam	temporibus		\N	16	\N	15	1	\N	\N	56	\N	52	\N	\N	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
29	saepe	saepe		29	31	\N	14	16	89	90	71	24	\N	34	\N	\N	105	2021-10-15 18:19:19	2021-10-15 18:19:19
30	adipisci	exercitationem		\N	\N	\N	\N	45	22	10	\N	21	\N	21	83	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
31	asperiores	officia		4	3	\N	\N	15	60	72	\N	\N	17	99	\N	38	55	2021-10-15 18:19:19	2021-10-15 18:19:19
32	perspiciatis	nihil		\N	\N	\N	18	12	\N	\N	89	95	\N	70	98	97	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
33	illum	ut		15	\N	6	12	\N	26	88	\N	\N	\N	\N	56	\N	63	2021-10-15 18:19:19	2021-10-15 18:19:19
35	dolores	ut		80	22	37	\N	\N	67	36	\N	2	\N	11	\N	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
36	omnis	autem		23	\N	20	\N	\N	\N	\N	97	\N	\N	\N	88	\N	68	2021-10-15 18:19:19	2021-10-15 18:19:19
37	saepe	perspiciatis		71	\N	\N	\N	73	84	\N	90	\N	\N	\N	\N	\N	91	2021-10-15 18:19:19	2021-10-15 18:19:19
38	mollitia	esse		89	24	\N	34	20	68	31	\N	\N	54	82	72	8	129	2021-10-15 18:19:19	2021-10-15 18:19:19
39	voluptas	assumenda		29	27	26	11	\N	52	56	33	\N	74	\N	17	4	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
40	nemo	laboriosam		100	\N	\N	33	10	79	\N	\N	\N	79	6	48	\N	80	2021-10-15 18:19:19	2021-10-15 18:19:19
41	voluptatum	laudantium		\N	14	5	\N	83	\N	56	\N	\N	\N	\N	\N	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
42	commodi	pariatur		\N	9	\N	\N	44	\N	97	\N	16	89	\N	4	\N	103	2021-10-15 18:19:19	2021-10-15 18:19:19
43	recusandae	aut		69	1	36	2	\N	\N	38	45	14	\N	9	\N	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
44	vero	nemo		\N	\N	\N	\N	73	\N	75	\N	\N	\N	73	\N	23	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
45	suscipit	labore		\N	\N	18	35	\N	13	39	\N	\N	46	\N	\N	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
46	perferendis	dolores		38	\N	\N	28	70	51	\N	\N	44	18	96	\N	\N	107	2021-10-15 18:19:19	2021-10-15 18:19:19
47	ut	at		\N	9	3	7	43	\N	\N	\N	\N	83	\N	38	\N	51	2021-10-15 18:19:19	2021-10-15 18:19:19
48	temporibus	provident		33	\N	\N	\N	90	31	\N	70	\N	\N	3	\N	\N	129	2021-10-15 18:19:19	2021-10-15 18:19:19
50	sit	hic		34	15	\N	\N	49	\N	\N	7	64	\N	\N	68	1	126	2021-10-15 18:19:19	2021-10-15 18:19:19
51	voluptas	expedita		\N	\N	7	\N	23	\N	53	24	\N	\N	81	\N	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
52	atque	et		\N	\N	20	29	14	\N	12	\N	80	14	47	\N	\N	110	2021-10-15 18:19:19	2021-10-15 18:19:19
53	nam	officia		\N	\N	\N	15	26	36	\N	\N	19	\N	\N	\N	\N	143	2021-10-15 18:19:19	2021-10-15 18:19:19
54	sapiente	labore		6	31	11	19	22	16	\N	36	55	\N	\N	43	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
56	nam	sint		\N	\N	\N	\N	\N	57	\N	17	\N	69	50	\N	3	125	2021-10-15 18:19:19	2021-10-15 18:19:19
57	natus	inventore		\N	16	\N	31	13	15	8	1	43	65	\N	\N	\N	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
58	velit	consequatur		\N	18	37	\N	39	36	\N	93	\N	\N	\N	\N	76	\N	2021-10-15 18:19:19	2021-10-15 18:19:19
59	et	voluptas		\N	\N	29	\N	20	61	\N	77	24	\N	\N	\N	20	61	2021-10-15 18:19:20	2021-10-15 18:19:20
60	velit	cupiditate		75	\N	25	26	10	17	17	65	\N	\N	48	55	\N	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
61	quis	non		\N	\N	\N	\N	94	12	\N	\N	15	\N	30	\N	14	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
62	non	ut		\N	27	\N	\N	\N	8	\N	81	14	\N	\N	44	\N	139	2021-10-15 18:19:20	2021-10-15 18:19:20
63	aspernatur	sit		22	21	\N	11	34	11	6	35	\N	85	71	\N	\N	64	2021-10-15 18:19:20	2021-10-15 18:19:20
64	ut	aperiam		\N	\N	12	\N	\N	46	93	\N	\N	\N	\N	\N	49	85	2021-10-15 18:19:20	2021-10-15 18:19:20
65	magnam	aut		\N	1	\N	23	82	\N	\N	\N	25	80	\N	\N	\N	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
66	veritatis	soluta		77	22	\N	27	36	62	22	\N	22	76	93	\N	93	138	2021-10-15 18:19:20	2021-10-15 18:19:20
67	qui	eius		16	\N	34	\N	69	81	\N	\N	55	93	100	\N	15	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
68	quod	ut		\N	\N	13	\N	7	\N	91	22	62	51	\N	61	66	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
69	magnam	autem		42	38	\N	\N	15	\N	12	87	11	\N	\N	\N	42	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
70	recusandae	odit		\N	\N	\N	7	85	26	\N	\N	\N	60	90	27	73	57	2021-10-15 18:19:20	2021-10-15 18:19:20
71	aliquam	et		\N	18	\N	20	\N	\N	24	\N	18	\N	47	93	\N	123	2021-10-15 18:19:20	2021-10-15 18:19:20
73	asperiores	alias		\N	\N	13	26	80	\N	\N	19	45	\N	\N	5	\N	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
74	nihil	quasi		\N	\N	\N	\N	\N	85	8	53	14	\N	56	\N	\N	126	2021-10-15 18:19:20	2021-10-15 18:19:20
75	aliquid	facilis		69	\N	\N	16	26	28	\N	82	28	39	\N	\N	100	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
76	officiis	consequuntur		38	34	\N	18	\N	\N	22	13	\N	\N	\N	\N	78	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
77	quisquam	corrupti		\N	13	\N	2	96	\N	\N	\N	\N	42	\N	85	62	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
78	iste	totam		60	8	\N	17	\N	21	\N	41	\N	\N	94	60	\N	76	2021-10-15 18:19:20	2021-10-15 18:19:20
79	deserunt	tenetur		44	32	19	20	\N	\N	64	\N	\N	38	\N	11	21	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
80	iusto	et		\N	\N	18	17	16	72	\N	\N	\N	57	\N	93	\N	119	2021-10-15 18:19:20	2021-10-15 18:19:20
81	quae	molestias		91	\N	\N	26	\N	\N	23	\N	32	46	54	\N	\N	73	2021-10-15 18:19:20	2021-10-15 18:19:20
82	quaerat	nostrum		\N	29	\N	\N	\N	\N	\N	\N	35	\N	\N	70	37	99	2021-10-15 18:19:20	2021-10-15 18:19:20
83	fuga	doloribus		\N	5	\N	22	\N	\N	\N	8	32	47	\N	43	\N	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
84	illum	voluptatibus		\N	27	24	7	10	\N	96	84	\N	61	\N	\N	73	55	2021-10-15 18:19:20	2021-10-15 18:19:20
85	ea	cupiditate		17	\N	\N	\N	27	10	\N	\N	89	23	\N	\N	71	50	2021-10-15 18:19:20	2021-10-15 18:19:20
86	quo	similique		85	\N	32	\N	68	65	\N	79	41	50	25	\N	86	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
88	sit	eos		90	\N	\N	\N	37	45	\N	37	\N	\N	\N	\N	43	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
89	deleniti	deserunt		11	33	\N	14	\N	23	22	39	75	32	\N	\N	72	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
91	aspernatur	eligendi		\N	19	\N	\N	\N	46	10	48	11	\N	\N	\N	\N	110	2021-10-15 18:19:20	2021-10-15 18:19:20
92	unde	ea		\N	\N	\N	7	84	60	\N	\N	11	\N	24	\N	18	81	2021-10-15 18:19:20	2021-10-15 18:19:20
93	culpa	tenetur		86	\N	\N	12	13	79	62	2	11	\N	4	74	89	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
94	voluptas	dolorum		85	\N	\N	27	94	32	\N	\N	\N	86	75	3	\N	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
95	accusamus	minima		\N	25	25	\N	97	\N	37	49	8	17	\N	\N	\N	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
97	totam	consequatur		\N	\N	\N	\N	9	\N	28	43	\N	\N	15	12	32	130	2021-10-15 18:19:20	2021-10-15 18:19:20
98	voluptatum	aspernatur		15	8	10	\N	\N	\N	53	41	\N	53	67	\N	\N	51	2021-10-15 18:19:20	2021-10-15 18:19:20
99	reprehenderit	illo		81	\N	33	17	\N	\N	43	61	\N	18	100	58	\N	141	2021-10-15 18:19:20	2021-10-15 18:19:20
100	sequi	tempore		43	\N	27	\N	1	\N	\N	50	60	\N	84	\N	82	124	2021-10-15 18:19:20	2021-10-15 18:19:20
101	ea	saepe		6	\N	36	27	\N	63	\N	98	43	55	42	\N	75	\N	2021-10-15 18:19:20	2021-10-15 18:19:20
\.


--
-- TOC entry 3352 (class 0 OID 34467)
-- Dependencies: 201
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
5	2021_10_11_192425_create_shop_owners_table	1
6	2021_10_11_193653_create_customers_table	1
7	2021_10_11_193736_create_suppliers_table	1
8	2021_10_12_102617_create_shops_table	1
9	2021_10_12_103033_create_brands_table	1
10	2021_10_12_103228_create_categories_table	1
11	2021_10_12_103348_create_products_table	1
12	2021_10_12_103927_create_inventory_items_table	1
13	2021_10_12_104949_create_supplier_items_table	1
14	2021_10_12_105101_create_credit_notes_table	1
15	2021_10_12_105102_create_debit_notes_table	1
16	2021_10_12_105909_create_purchase_orders_table	1
17	2021_10_12_105910_create_sales_orders_table	1
18	2021_10_12_110546_create_order_items_table	1
19	2021_10_12_113930_create_transactions_table	1
20	2021_10_12_113940_create_metas_table	1
21	2021_10_12_205012_create_product_categories_table	1
\.


--
-- TOC entry 3387 (class 0 OID 34748)
-- Dependencies: 236
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.order_items (id, quantity, supplier_item_id, inventory_item_id, sales_order_id, purchase_order_id, created_at, updated_at) FROM stdin;
1	1	47	90	6	77	2021-10-15 18:15:22	2021-10-15 18:15:22
2	3	40	40	8	80	2021-10-15 18:15:22	2021-10-15 18:15:22
3	6	75	65	17	88	2021-10-15 18:15:22	2021-10-15 18:15:22
4	3	41	68	51	23	2021-10-15 18:15:22	2021-10-15 18:15:22
5	5	89	42	19	90	2021-10-15 18:15:22	2021-10-15 18:15:22
6	6	10	18	84	95	2021-10-15 18:15:22	2021-10-15 18:15:22
7	6	94	36	77	11	2021-10-15 18:15:22	2021-10-15 18:15:22
8	3	45	100	95	90	2021-10-15 18:15:22	2021-10-15 18:15:22
9	1	24	51	98	89	2021-10-15 18:15:22	2021-10-15 18:15:22
10	6	30	78	59	100	2021-10-15 18:15:22	2021-10-15 18:15:22
11	7	42	56	33	61	2021-10-15 18:15:22	2021-10-15 18:15:22
12	6	59	6	10	25	2021-10-15 18:15:22	2021-10-15 18:15:22
13	4	15	44	100	11	2021-10-15 18:15:22	2021-10-15 18:15:22
15	5	38	60	18	9	2021-10-15 18:15:22	2021-10-15 18:15:22
16	10	26	88	12	44	2021-10-15 18:15:23	2021-10-15 18:15:23
18	7	53	96	45	10	2021-10-15 18:15:23	2021-10-15 18:15:23
19	2	68	16	75	79	2021-10-15 18:15:23	2021-10-15 18:15:23
20	5	38	59	4	16	2021-10-15 18:15:23	2021-10-15 18:15:23
21	3	24	88	5	49	2021-10-15 18:15:23	2021-10-15 18:15:23
22	3	87	54	19	26	2021-10-15 18:15:23	2021-10-15 18:15:23
23	6	100	4	19	70	2021-10-15 18:15:23	2021-10-15 18:15:23
24	8	63	62	28	51	2021-10-15 18:15:23	2021-10-15 18:15:23
25	6	53	13	54	79	2021-10-15 18:15:23	2021-10-15 18:15:23
26	3	93	93	49	90	2021-10-15 18:15:23	2021-10-15 18:15:23
27	6	14	32	89	43	2021-10-15 18:15:23	2021-10-15 18:15:23
28	10	33	15	5	58	2021-10-15 18:15:23	2021-10-15 18:15:23
29	4	57	46	75	98	2021-10-15 18:15:23	2021-10-15 18:15:23
30	10	35	8	52	77	2021-10-15 18:15:23	2021-10-15 18:15:23
31	6	72	25	6	51	2021-10-15 18:15:23	2021-10-15 18:15:23
32	9	9	4	94	64	2021-10-15 18:15:23	2021-10-15 18:15:23
33	3	72	51	28	89	2021-10-15 18:15:23	2021-10-15 18:15:23
34	10	76	60	61	75	2021-10-15 18:15:23	2021-10-15 18:15:23
35	8	19	42	44	56	2021-10-15 18:15:23	2021-10-15 18:15:23
36	4	71	73	62	3	2021-10-15 18:15:23	2021-10-15 18:15:23
37	9	61	37	84	10	2021-10-15 18:15:23	2021-10-15 18:15:23
38	5	12	93	33	29	2021-10-15 18:15:23	2021-10-15 18:15:23
39	7	73	61	3	100	2021-10-15 18:15:23	2021-10-15 18:15:23
40	3	1	11	36	49	2021-10-15 18:15:23	2021-10-15 18:15:23
41	9	7	67	20	62	2021-10-15 18:15:23	2021-10-15 18:15:23
42	5	32	61	89	8	2021-10-15 18:15:23	2021-10-15 18:15:23
43	5	39	73	89	54	2021-10-15 18:15:23	2021-10-15 18:15:23
44	8	62	4	89	69	2021-10-15 18:15:23	2021-10-15 18:15:23
45	10	46	68	65	27	2021-10-15 18:15:23	2021-10-15 18:15:23
47	8	99	32	3	84	2021-10-15 18:15:23	2021-10-15 18:15:23
48	10	63	83	7	7	2021-10-15 18:15:23	2021-10-15 18:15:23
50	2	7	5	79	22	2021-10-15 18:15:23	2021-10-15 18:15:23
51	10	55	80	91	88	2021-10-15 18:15:23	2021-10-15 18:15:23
52	3	13	34	91	61	2021-10-15 18:15:23	2021-10-15 18:15:23
53	2	61	57	48	62	2021-10-15 18:15:23	2021-10-15 18:15:23
54	1	30	84	65	37	2021-10-15 18:15:23	2021-10-15 18:15:23
55	2	91	36	87	72	2021-10-15 18:15:23	2021-10-15 18:15:23
56	7	51	56	67	25	2021-10-15 18:15:23	2021-10-15 18:15:23
57	4	83	42	20	3	2021-10-15 18:15:23	2021-10-15 18:15:23
58	7	80	30	32	77	2021-10-15 18:15:23	2021-10-15 18:15:23
59	3	88	45	43	54	2021-10-15 18:15:23	2021-10-15 18:15:23
60	6	44	19	33	90	2021-10-15 18:15:23	2021-10-15 18:15:23
61	2	4	88	38	40	2021-10-15 18:15:23	2021-10-15 18:15:23
62	8	61	18	24	42	2021-10-15 18:15:23	2021-10-15 18:15:23
63	4	48	34	98	26	2021-10-15 18:15:23	2021-10-15 18:15:23
64	9	45	61	66	100	2021-10-15 18:15:23	2021-10-15 18:15:23
65	10	12	53	21	69	2021-10-15 18:15:23	2021-10-15 18:15:23
66	5	27	34	40	83	2021-10-15 18:15:23	2021-10-15 18:15:23
67	5	51	92	29	30	2021-10-15 18:15:23	2021-10-15 18:15:23
68	3	3	7	70	86	2021-10-15 18:15:23	2021-10-15 18:15:23
69	7	42	38	65	93	2021-10-15 18:15:23	2021-10-15 18:15:23
70	10	15	25	96	22	2021-10-15 18:15:23	2021-10-15 18:15:23
71	9	43	17	26	97	2021-10-15 18:15:23	2021-10-15 18:15:23
72	1	18	11	55	8	2021-10-15 18:15:23	2021-10-15 18:15:23
73	1	53	29	32	92	2021-10-15 18:15:23	2021-10-15 18:15:23
74	2	70	33	46	3	2021-10-15 18:15:23	2021-10-15 18:15:23
75	9	14	98	71	17	2021-10-15 18:15:23	2021-10-15 18:15:23
76	6	98	32	57	15	2021-10-15 18:15:23	2021-10-15 18:15:23
78	2	48	72	53	85	2021-10-15 18:15:23	2021-10-15 18:15:23
79	3	81	20	95	27	2021-10-15 18:15:23	2021-10-15 18:15:23
80	10	6	12	3	25	2021-10-15 18:15:23	2021-10-15 18:15:23
82	6	82	64	81	72	2021-10-15 18:15:23	2021-10-15 18:15:23
83	10	58	63	77	12	2021-10-15 18:15:23	2021-10-15 18:15:23
84	10	77	73	65	66	2021-10-15 18:15:23	2021-10-15 18:15:23
85	8	14	83	18	31	2021-10-15 18:15:23	2021-10-15 18:15:23
86	10	92	42	20	2	2021-10-15 18:15:23	2021-10-15 18:15:23
87	3	1	79	74	12	2021-10-15 18:15:23	2021-10-15 18:15:23
88	6	7	46	86	87	2021-10-15 18:15:23	2021-10-15 18:15:23
89	3	18	78	1	41	2021-10-15 18:15:23	2021-10-15 18:15:23
90	6	51	19	24	12	2021-10-15 18:15:23	2021-10-15 18:15:23
91	2	84	68	78	39	2021-10-15 18:15:23	2021-10-15 18:15:23
92	2	30	2	94	87	2021-10-15 18:15:23	2021-10-15 18:15:23
93	6	8	96	92	73	2021-10-15 18:15:23	2021-10-15 18:15:23
94	8	86	96	43	93	2021-10-15 18:15:23	2021-10-15 18:15:23
95	1	38	65	62	76	2021-10-15 18:15:23	2021-10-15 18:15:23
96	8	26	47	69	58	2021-10-15 18:15:23	2021-10-15 18:15:23
97	5	13	65	89	96	2021-10-15 18:15:23	2021-10-15 18:15:23
98	9	30	74	18	40	2021-10-15 18:15:23	2021-10-15 18:15:23
99	5	79	63	19	60	2021-10-15 18:15:23	2021-10-15 18:15:23
100	8	54	36	96	31	2021-10-15 18:15:23	2021-10-15 18:15:23
106	20	20	\N	\N	109	2021-10-27 12:41:31	2021-10-27 12:41:31
107	20	20	\N	\N	110	2021-10-27 12:41:39	2021-10-27 12:41:39
108	20	20	\N	\N	111	2021-10-27 12:41:41	2021-10-27 12:41:41
109	20	20	\N	\N	112	2021-10-27 12:41:42	2021-10-27 12:41:42
110	20	20	\N	\N	113	2021-10-27 12:41:44	2021-10-27 12:41:44
111	20	20	\N	\N	114	2021-10-27 12:41:47	2021-10-27 12:41:47
112	20	20	\N	\N	115	2021-10-27 12:44:32	2021-10-27 12:44:32
113	20	20	\N	\N	116	2021-10-27 12:44:34	2021-10-27 12:44:34
114	20	20	\N	\N	117	2021-10-27 12:44:35	2021-10-27 12:44:35
115	20	20	\N	\N	118	2021-10-27 12:44:37	2021-10-27 12:44:37
116	20	20	\N	\N	119	2021-10-27 12:44:38	2021-10-27 12:44:38
117	20	20	\N	\N	120	2021-10-27 12:44:39	2021-10-27 12:44:39
118	20	20	\N	\N	121	2021-10-27 12:44:39	2021-10-27 12:44:39
119	20	20	\N	\N	122	2021-10-27 12:44:40	2021-10-27 12:44:40
120	20	20	\N	\N	123	2021-10-27 12:44:40	2021-10-27 12:44:40
121	20	\N	20	104	\N	2021-10-27 12:54:39	2021-10-27 12:54:39
122	20	\N	20	105	\N	2021-10-27 12:54:43	2021-10-27 12:54:43
123	20	\N	20	106	\N	2021-10-27 12:54:45	2021-10-27 12:54:45
124	20	\N	20	107	\N	2021-10-27 12:54:47	2021-10-27 12:54:47
125	3	\N	33	110	\N	2021-12-24 12:17:11	2021-12-24 12:17:11
126	20	\N	36	111	\N	2021-12-24 12:21:49	2021-12-24 12:21:49
127	23	\N	109	111	\N	2021-12-24 12:21:49	2021-12-24 12:21:49
128	1	\N	36	112	\N	2021-12-24 12:26:39	2021-12-24 12:26:39
129	1	\N	36	113	\N	2021-12-24 12:29:17	2021-12-24 12:29:17
130	1	\N	36	114	\N	2021-12-24 12:29:39	2021-12-24 12:29:39
131	1	\N	109	114	\N	2021-12-24 12:29:39	2021-12-24 12:29:39
132	1	\N	36	115	\N	2021-12-24 12:29:49	2021-12-24 12:29:49
133	1	\N	109	115	\N	2021-12-24 12:29:49	2021-12-24 12:29:49
134	5	\N	36	116	\N	2021-12-24 12:30:17	2021-12-24 12:30:17
135	19	\N	109	116	\N	2021-12-24 12:30:17	2021-12-24 12:30:17
136	5	\N	36	117	\N	2021-12-24 12:31:52	2021-12-24 12:31:52
137	19	\N	109	117	\N	2021-12-24 12:31:52	2021-12-24 12:31:52
\.


--
-- TOC entry 3355 (class 0 OID 34490)
-- Dependencies: 204
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- TOC entry 3359 (class 0 OID 34513)
-- Dependencies: 208
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3393 (class 0 OID 34890)
-- Dependencies: 242
-- Data for Name: product_categories; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.product_categories (id, category_id, product_id, created_at, updated_at) FROM stdin;
1	51	88	2021-10-15 18:13:02	2021-10-15 18:13:02
2	10	80	2021-10-15 18:13:02	2021-10-15 18:13:02
3	25	87	2021-10-15 18:13:02	2021-10-15 18:13:02
4	68	69	2021-10-15 18:13:02	2021-10-15 18:13:02
5	26	77	2021-10-15 18:13:02	2021-10-15 18:13:02
6	26	72	2021-10-15 18:13:02	2021-10-15 18:13:02
7	59	1	2021-10-15 18:13:02	2021-10-15 18:13:02
8	26	57	2021-10-15 18:13:02	2021-10-15 18:13:02
9	16	17	2021-10-15 18:13:02	2021-10-15 18:13:02
10	65	92	2021-10-15 18:13:02	2021-10-15 18:13:02
11	54	39	2021-10-15 18:13:02	2021-10-15 18:13:02
12	83	38	2021-10-15 18:13:02	2021-10-15 18:13:02
13	74	4	2021-10-15 18:13:02	2021-10-15 18:13:02
14	65	4	2021-10-15 18:13:02	2021-10-15 18:13:02
15	57	85	2021-10-15 18:13:02	2021-10-15 18:13:02
16	8	59	2021-10-15 18:13:02	2021-10-15 18:13:02
17	98	18	2021-10-15 18:13:02	2021-10-15 18:13:02
18	43	98	2021-10-15 18:13:02	2021-10-15 18:13:02
19	44	68	2021-10-15 18:13:02	2021-10-15 18:13:02
20	44	47	2021-10-15 18:13:02	2021-10-15 18:13:02
21	60	23	2021-10-15 18:13:02	2021-10-15 18:13:02
22	91	15	2021-10-15 18:13:02	2021-10-15 18:13:02
23	42	89	2021-10-15 18:13:02	2021-10-15 18:13:02
24	81	69	2021-10-15 18:13:02	2021-10-15 18:13:02
25	31	85	2021-10-15 18:13:02	2021-10-15 18:13:02
26	47	48	2021-10-15 18:13:02	2021-10-15 18:13:02
27	14	93	2021-10-15 18:13:02	2021-10-15 18:13:02
28	36	78	2021-10-15 18:13:02	2021-10-15 18:13:02
29	45	34	2021-10-15 18:13:02	2021-10-15 18:13:02
30	14	10	2021-10-15 18:13:02	2021-10-15 18:13:02
31	5	80	2021-10-15 18:13:02	2021-10-15 18:13:02
32	18	68	2021-10-15 18:13:02	2021-10-15 18:13:02
33	31	100	2021-10-15 18:13:02	2021-10-15 18:13:02
34	63	93	2021-10-15 18:13:02	2021-10-15 18:13:02
35	26	14	2021-10-15 18:13:02	2021-10-15 18:13:02
36	74	6	2021-10-15 18:13:02	2021-10-15 18:13:02
37	24	83	2021-10-15 18:13:02	2021-10-15 18:13:02
38	99	59	2021-10-15 18:13:02	2021-10-15 18:13:02
39	19	85	2021-10-15 18:13:02	2021-10-15 18:13:02
40	83	60	2021-10-15 18:13:02	2021-10-15 18:13:02
41	36	20	2021-10-15 18:13:02	2021-10-15 18:13:02
42	56	87	2021-10-15 18:13:03	2021-10-15 18:13:03
43	44	34	2021-10-15 18:13:03	2021-10-15 18:13:03
44	74	87	2021-10-15 18:13:03	2021-10-15 18:13:03
45	79	93	2021-10-15 18:13:03	2021-10-15 18:13:03
46	100	1	2021-10-15 18:13:03	2021-10-15 18:13:03
47	20	31	2021-10-15 18:13:03	2021-10-15 18:13:03
48	49	32	2021-10-15 18:13:03	2021-10-15 18:13:03
49	16	41	2021-10-15 18:13:03	2021-10-15 18:13:03
50	43	29	2021-10-15 18:13:03	2021-10-15 18:13:03
51	31	9	2021-10-15 18:13:03	2021-10-15 18:13:03
52	14	33	2021-10-15 18:13:03	2021-10-15 18:13:03
53	78	99	2021-10-15 18:13:03	2021-10-15 18:13:03
54	67	75	2021-10-15 18:13:03	2021-10-15 18:13:03
55	90	80	2021-10-15 18:13:03	2021-10-15 18:13:03
56	3	43	2021-10-15 18:13:03	2021-10-15 18:13:03
57	89	15	2021-10-15 18:13:03	2021-10-15 18:13:03
58	32	82	2021-10-15 18:13:03	2021-10-15 18:13:03
59	30	13	2021-10-15 18:13:03	2021-10-15 18:13:03
60	82	35	2021-10-15 18:13:03	2021-10-15 18:13:03
61	68	94	2021-10-15 18:13:03	2021-10-15 18:13:03
62	43	35	2021-10-15 18:13:03	2021-10-15 18:13:03
63	12	75	2021-10-15 18:13:03	2021-10-15 18:13:03
64	87	86	2021-10-15 18:13:03	2021-10-15 18:13:03
65	66	34	2021-10-15 18:13:03	2021-10-15 18:13:03
66	83	20	2021-10-15 18:13:03	2021-10-15 18:13:03
67	75	2	2021-10-15 18:13:03	2021-10-15 18:13:03
68	47	68	2021-10-15 18:13:03	2021-10-15 18:13:03
69	49	82	2021-10-15 18:13:03	2021-10-15 18:13:03
70	5	45	2021-10-15 18:13:03	2021-10-15 18:13:03
71	59	97	2021-10-15 18:13:03	2021-10-15 18:13:03
72	71	7	2021-10-15 18:13:03	2021-10-15 18:13:03
73	21	31	2021-10-15 18:13:03	2021-10-15 18:13:03
74	63	34	2021-10-15 18:13:03	2021-10-15 18:13:03
75	8	40	2021-10-15 18:13:03	2021-10-15 18:13:03
76	34	1	2021-10-15 18:13:03	2021-10-15 18:13:03
77	31	92	2021-10-15 18:13:03	2021-10-15 18:13:03
78	57	33	2021-10-15 18:13:03	2021-10-15 18:13:03
79	12	4	2021-10-15 18:13:03	2021-10-15 18:13:03
80	9	54	2021-10-15 18:13:03	2021-10-15 18:13:03
81	89	84	2021-10-15 18:13:03	2021-10-15 18:13:03
82	92	91	2021-10-15 18:13:03	2021-10-15 18:13:03
83	48	48	2021-10-15 18:13:03	2021-10-15 18:13:03
84	18	45	2021-10-15 18:13:03	2021-10-15 18:13:03
85	2	18	2021-10-15 18:13:03	2021-10-15 18:13:03
86	6	26	2021-10-15 18:13:03	2021-10-15 18:13:03
87	52	78	2021-10-15 18:13:03	2021-10-15 18:13:03
88	99	92	2021-10-15 18:13:03	2021-10-15 18:13:03
89	41	98	2021-10-15 18:13:03	2021-10-15 18:13:03
90	32	98	2021-10-15 18:13:03	2021-10-15 18:13:03
91	11	98	2021-10-15 18:13:03	2021-10-15 18:13:03
92	25	50	2021-10-15 18:13:03	2021-10-15 18:13:03
93	37	77	2021-10-15 18:13:03	2021-10-15 18:13:03
94	47	72	2021-10-15 18:13:03	2021-10-15 18:13:03
95	41	28	2021-10-15 18:13:03	2021-10-15 18:13:03
96	26	3	2021-10-15 18:13:03	2021-10-15 18:13:03
97	87	15	2021-10-15 18:13:03	2021-10-15 18:13:03
98	15	96	2021-10-15 18:13:03	2021-10-15 18:13:03
99	81	10	2021-10-15 18:13:03	2021-10-15 18:13:03
100	90	17	2021-10-15 18:13:03	2021-10-15 18:13:03
101	32	89	2021-10-15 18:13:03	2021-10-15 18:13:03
102	53	82	2021-10-15 18:13:03	2021-10-15 18:13:03
103	72	27	2021-10-15 18:13:03	2021-10-15 18:13:03
104	37	71	2021-10-15 18:13:03	2021-10-15 18:13:03
105	78	23	2021-10-15 18:13:03	2021-10-15 18:13:03
106	54	60	2021-10-15 18:13:03	2021-10-15 18:13:03
107	85	23	2021-10-15 18:13:03	2021-10-15 18:13:03
108	62	28	2021-10-15 18:13:03	2021-10-15 18:13:03
109	73	35	2021-10-15 18:13:03	2021-10-15 18:13:03
110	39	48	2021-10-15 18:13:03	2021-10-15 18:13:03
111	15	7	2021-10-15 18:13:03	2021-10-15 18:13:03
112	81	99	2021-10-15 18:13:03	2021-10-15 18:13:03
113	94	82	2021-10-15 18:13:03	2021-10-15 18:13:03
114	74	35	2021-10-15 18:13:03	2021-10-15 18:13:03
115	54	75	2021-10-15 18:13:03	2021-10-15 18:13:03
116	36	49	2021-10-15 18:13:03	2021-10-15 18:13:03
117	8	59	2021-10-15 18:13:03	2021-10-15 18:13:03
118	85	81	2021-10-15 18:13:03	2021-10-15 18:13:03
119	46	86	2021-10-15 18:13:03	2021-10-15 18:13:03
120	78	3	2021-10-15 18:13:03	2021-10-15 18:13:03
121	90	1	2021-10-15 18:13:03	2021-10-15 18:13:03
122	34	96	2021-10-15 18:13:03	2021-10-15 18:13:03
123	10	14	2021-10-15 18:13:03	2021-10-15 18:13:03
124	91	95	2021-10-15 18:13:03	2021-10-15 18:13:03
125	27	79	2021-10-15 18:13:03	2021-10-15 18:13:03
126	40	53	2021-10-15 18:13:03	2021-10-15 18:13:03
127	34	58	2021-10-15 18:13:03	2021-10-15 18:13:03
128	40	82	2021-10-15 18:13:03	2021-10-15 18:13:03
129	86	68	2021-10-15 18:13:03	2021-10-15 18:13:03
130	75	34	2021-10-15 18:13:03	2021-10-15 18:13:03
131	65	68	2021-10-15 18:13:04	2021-10-15 18:13:04
132	79	90	2021-10-15 18:13:04	2021-10-15 18:13:04
133	60	33	2021-10-15 18:13:04	2021-10-15 18:13:04
134	33	40	2021-10-15 18:13:04	2021-10-15 18:13:04
135	43	47	2021-10-15 18:13:04	2021-10-15 18:13:04
136	31	85	2021-10-15 18:13:04	2021-10-15 18:13:04
137	82	27	2021-10-15 18:13:04	2021-10-15 18:13:04
138	52	64	2021-10-15 18:13:04	2021-10-15 18:13:04
139	29	57	2021-10-15 18:13:04	2021-10-15 18:13:04
140	7	13	2021-10-15 18:13:04	2021-10-15 18:13:04
141	51	31	2021-10-15 18:13:04	2021-10-15 18:13:04
142	81	43	2021-10-15 18:13:04	2021-10-15 18:13:04
143	80	90	2021-10-15 18:13:04	2021-10-15 18:13:04
144	54	28	2021-10-15 18:13:04	2021-10-15 18:13:04
145	85	3	2021-10-15 18:13:04	2021-10-15 18:13:04
146	4	78	2021-10-15 18:13:04	2021-10-15 18:13:04
147	32	85	2021-10-15 18:13:04	2021-10-15 18:13:04
148	61	97	2021-10-15 18:13:04	2021-10-15 18:13:04
149	54	86	2021-10-15 18:13:04	2021-10-15 18:13:04
150	9	24	2021-10-15 18:13:04	2021-10-15 18:13:04
151	99	58	2021-10-15 18:13:04	2021-10-15 18:13:04
152	19	26	2021-10-15 18:13:04	2021-10-15 18:13:04
153	82	78	2021-10-15 18:13:04	2021-10-15 18:13:04
154	6	59	2021-10-15 18:13:04	2021-10-15 18:13:04
155	48	58	2021-10-15 18:13:04	2021-10-15 18:13:04
156	92	5	2021-10-15 18:13:04	2021-10-15 18:13:04
157	66	39	2021-10-15 18:13:04	2021-10-15 18:13:04
158	61	86	2021-10-15 18:13:04	2021-10-15 18:13:04
159	23	4	2021-10-15 18:13:04	2021-10-15 18:13:04
160	81	51	2021-10-15 18:13:04	2021-10-15 18:13:04
161	98	83	2021-10-15 18:13:04	2021-10-15 18:13:04
162	21	49	2021-10-15 18:13:04	2021-10-15 18:13:04
163	27	74	2021-10-15 18:13:04	2021-10-15 18:13:04
164	44	86	2021-10-15 18:13:04	2021-10-15 18:13:04
165	72	67	2021-10-15 18:13:04	2021-10-15 18:13:04
166	36	19	2021-10-15 18:13:04	2021-10-15 18:13:04
167	19	53	2021-10-15 18:13:04	2021-10-15 18:13:04
168	65	36	2021-10-15 18:13:04	2021-10-15 18:13:04
169	83	33	2021-10-15 18:13:04	2021-10-15 18:13:04
170	79	8	2021-10-15 18:13:04	2021-10-15 18:13:04
171	45	20	2021-10-15 18:13:04	2021-10-15 18:13:04
172	30	93	2021-10-15 18:13:04	2021-10-15 18:13:04
173	50	94	2021-10-15 18:13:04	2021-10-15 18:13:04
174	43	16	2021-10-15 18:13:04	2021-10-15 18:13:04
175	23	16	2021-10-15 18:13:04	2021-10-15 18:13:04
176	47	26	2021-10-15 18:13:04	2021-10-15 18:13:04
177	12	33	2021-10-15 18:13:04	2021-10-15 18:13:04
178	86	57	2021-10-15 18:13:04	2021-10-15 18:13:04
179	97	82	2021-10-15 18:13:04	2021-10-15 18:13:04
180	74	87	2021-10-15 18:13:04	2021-10-15 18:13:04
181	98	91	2021-10-15 18:13:04	2021-10-15 18:13:04
182	29	35	2021-10-15 18:13:04	2021-10-15 18:13:04
183	14	52	2021-10-15 18:13:04	2021-10-15 18:13:04
184	72	51	2021-10-15 18:13:04	2021-10-15 18:13:04
185	87	31	2021-10-15 18:13:04	2021-10-15 18:13:04
186	47	65	2021-10-15 18:13:04	2021-10-15 18:13:04
187	59	67	2021-10-15 18:13:04	2021-10-15 18:13:04
188	42	69	2021-10-15 18:13:04	2021-10-15 18:13:04
189	2	62	2021-10-15 18:13:04	2021-10-15 18:13:04
190	51	67	2021-10-15 18:13:04	2021-10-15 18:13:04
191	54	38	2021-10-15 18:13:04	2021-10-15 18:13:04
192	65	35	2021-10-15 18:13:04	2021-10-15 18:13:04
193	13	2	2021-10-15 18:13:04	2021-10-15 18:13:04
194	75	79	2021-10-15 18:13:04	2021-10-15 18:13:04
195	95	4	2021-10-15 18:13:04	2021-10-15 18:13:04
196	62	34	2021-10-15 18:13:04	2021-10-15 18:13:04
197	15	61	2021-10-15 18:13:04	2021-10-15 18:13:04
198	7	85	2021-10-15 18:13:04	2021-10-15 18:13:04
199	25	46	2021-10-15 18:13:04	2021-10-15 18:13:04
200	99	93	2021-10-15 18:13:04	2021-10-15 18:13:04
201	23	15	2021-10-15 18:13:04	2021-10-15 18:13:04
202	31	20	2021-10-15 18:13:04	2021-10-15 18:13:04
203	91	65	2021-10-15 18:13:04	2021-10-15 18:13:04
204	93	61	2021-10-15 18:13:04	2021-10-15 18:13:04
205	26	13	2021-10-15 18:13:04	2021-10-15 18:13:04
206	25	39	2021-10-15 18:13:04	2021-10-15 18:13:04
207	2	91	2021-10-15 18:13:04	2021-10-15 18:13:04
208	13	63	2021-10-15 18:13:04	2021-10-15 18:13:04
209	61	9	2021-10-15 18:13:04	2021-10-15 18:13:04
210	93	35	2021-10-15 18:13:04	2021-10-15 18:13:04
211	94	17	2021-10-15 18:13:04	2021-10-15 18:13:04
212	17	58	2021-10-15 18:13:04	2021-10-15 18:13:04
213	75	28	2021-10-15 18:13:04	2021-10-15 18:13:04
214	99	34	2021-10-15 18:13:04	2021-10-15 18:13:04
215	43	65	2021-10-15 18:13:04	2021-10-15 18:13:04
216	90	61	2021-10-15 18:13:04	2021-10-15 18:13:04
217	38	22	2021-10-15 18:13:04	2021-10-15 18:13:04
218	44	8	2021-10-15 18:13:04	2021-10-15 18:13:04
219	63	38	2021-10-15 18:13:05	2021-10-15 18:13:05
220	4	82	2021-10-15 18:13:05	2021-10-15 18:13:05
221	67	30	2021-10-15 18:13:05	2021-10-15 18:13:05
222	73	29	2021-10-15 18:13:05	2021-10-15 18:13:05
223	25	24	2021-10-15 18:13:05	2021-10-15 18:13:05
224	38	64	2021-10-15 18:13:05	2021-10-15 18:13:05
225	78	91	2021-10-15 18:13:05	2021-10-15 18:13:05
226	69	60	2021-10-15 18:13:05	2021-10-15 18:13:05
227	28	50	2021-10-15 18:13:05	2021-10-15 18:13:05
228	80	63	2021-10-15 18:13:05	2021-10-15 18:13:05
229	93	32	2021-10-15 18:13:05	2021-10-15 18:13:05
230	84	63	2021-10-15 18:13:05	2021-10-15 18:13:05
231	74	80	2021-10-15 18:13:05	2021-10-15 18:13:05
232	29	96	2021-10-15 18:13:05	2021-10-15 18:13:05
233	77	82	2021-10-15 18:13:05	2021-10-15 18:13:05
234	56	99	2021-10-15 18:13:05	2021-10-15 18:13:05
235	59	64	2021-10-15 18:13:05	2021-10-15 18:13:05
236	65	60	2021-10-15 18:13:05	2021-10-15 18:13:05
237	66	93	2021-10-15 18:13:05	2021-10-15 18:13:05
238	61	88	2021-10-15 18:13:05	2021-10-15 18:13:05
239	65	10	2021-10-15 18:13:05	2021-10-15 18:13:05
240	59	44	2021-10-15 18:13:05	2021-10-15 18:13:05
241	73	92	2021-10-15 18:13:05	2021-10-15 18:13:05
242	73	75	2021-10-15 18:13:05	2021-10-15 18:13:05
243	86	13	2021-10-15 18:13:05	2021-10-15 18:13:05
244	90	66	2021-10-15 18:13:05	2021-10-15 18:13:05
245	38	98	2021-10-15 18:13:05	2021-10-15 18:13:05
246	89	15	2021-10-15 18:13:05	2021-10-15 18:13:05
247	70	26	2021-10-15 18:13:05	2021-10-15 18:13:05
248	90	62	2021-10-15 18:13:05	2021-10-15 18:13:05
249	69	10	2021-10-15 18:13:05	2021-10-15 18:13:05
250	71	67	2021-10-15 18:13:05	2021-10-15 18:13:05
251	93	94	2021-10-15 18:13:05	2021-10-15 18:13:05
252	15	37	2021-10-15 18:13:05	2021-10-15 18:13:05
253	14	15	2021-10-15 18:13:05	2021-10-15 18:13:05
254	45	97	2021-10-15 18:13:05	2021-10-15 18:13:05
255	72	40	2021-10-15 18:13:05	2021-10-15 18:13:05
256	34	61	2021-10-15 18:13:05	2021-10-15 18:13:05
257	96	88	2021-10-15 18:13:05	2021-10-15 18:13:05
258	15	96	2021-10-15 18:13:05	2021-10-15 18:13:05
259	65	97	2021-10-15 18:13:05	2021-10-15 18:13:05
260	40	42	2021-10-15 18:13:05	2021-10-15 18:13:05
261	6	30	2021-10-15 18:13:05	2021-10-15 18:13:05
262	58	27	2021-10-15 18:13:05	2021-10-15 18:13:05
263	72	56	2021-10-15 18:13:05	2021-10-15 18:13:05
264	60	14	2021-10-15 18:13:05	2021-10-15 18:13:05
265	91	3	2021-10-15 18:13:05	2021-10-15 18:13:05
266	48	64	2021-10-15 18:13:05	2021-10-15 18:13:05
267	52	57	2021-10-15 18:13:05	2021-10-15 18:13:05
268	9	25	2021-10-15 18:13:05	2021-10-15 18:13:05
269	49	1	2021-10-15 18:13:05	2021-10-15 18:13:05
270	61	8	2021-10-15 18:13:05	2021-10-15 18:13:05
271	9	46	2021-10-15 18:13:05	2021-10-15 18:13:05
272	4	20	2021-10-15 18:13:05	2021-10-15 18:13:05
273	69	57	2021-10-15 18:13:05	2021-10-15 18:13:05
274	72	58	2021-10-15 18:13:05	2021-10-15 18:13:05
275	94	9	2021-10-15 18:13:05	2021-10-15 18:13:05
276	35	57	2021-10-15 18:13:05	2021-10-15 18:13:05
277	80	65	2021-10-15 18:13:05	2021-10-15 18:13:05
278	49	98	2021-10-15 18:13:05	2021-10-15 18:13:05
279	15	35	2021-10-15 18:13:05	2021-10-15 18:13:05
280	41	69	2021-10-15 18:13:05	2021-10-15 18:13:05
281	55	58	2021-10-15 18:13:05	2021-10-15 18:13:05
282	75	26	2021-10-15 18:13:05	2021-10-15 18:13:05
283	7	86	2021-10-15 18:13:05	2021-10-15 18:13:05
284	43	99	2021-10-15 18:13:05	2021-10-15 18:13:05
285	88	78	2021-10-15 18:13:05	2021-10-15 18:13:05
286	20	53	2021-10-15 18:13:05	2021-10-15 18:13:05
287	9	39	2021-10-15 18:13:05	2021-10-15 18:13:05
288	62	75	2021-10-15 18:13:05	2021-10-15 18:13:05
289	8	36	2021-10-15 18:13:05	2021-10-15 18:13:05
290	87	4	2021-10-15 18:13:05	2021-10-15 18:13:05
291	82	84	2021-10-15 18:13:05	2021-10-15 18:13:05
292	69	67	2021-10-15 18:13:05	2021-10-15 18:13:05
293	68	42	2021-10-15 18:13:05	2021-10-15 18:13:05
294	38	84	2021-10-15 18:13:05	2021-10-15 18:13:05
295	64	43	2021-10-15 18:13:05	2021-10-15 18:13:05
296	97	54	2021-10-15 18:13:05	2021-10-15 18:13:05
297	47	62	2021-10-15 18:13:05	2021-10-15 18:13:05
298	71	6	2021-10-15 18:13:05	2021-10-15 18:13:05
299	82	27	2021-10-15 18:13:05	2021-10-15 18:13:05
300	6	87	2021-10-15 18:13:05	2021-10-15 18:13:05
\.


--
-- TOC entry 3373 (class 0 OID 34610)
-- Dependencies: 222
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.products (id, title, description, "mainImage", brand_id, created_at, updated_at) FROM stdin;
1	Id aut non.	Iure aut et est officiis iure tenetur eius.	https://ui-avatars.com/api/?background=random	42	2021-10-15 18:13:00	2021-10-15 18:13:00
2	Illum illum.	Quos ea et ipsa doloribus quia soluta.	https://ui-avatars.com/api/?background=random	78	2021-10-15 18:13:00	2021-10-15 18:13:00
3	Odio doloremque.	Est fuga consectetur quae dolor.	https://ui-avatars.com/api/?background=random	73	2021-10-15 18:13:00	2021-10-15 18:13:00
4	Explicabo tempore minima.	Rerum ducimus delectus soluta deleniti pariatur necessitatibus.	https://ui-avatars.com/api/?background=random	76	2021-10-15 18:13:00	2021-10-15 18:13:00
5	Atque nemo laboriosam.	Voluptas ea quis sit rem ea id.	https://ui-avatars.com/api/?background=random	15	2021-10-15 18:13:00	2021-10-15 18:13:00
6	Neque eum architecto.	Sunt numquam numquam in molestiae autem.	https://ui-avatars.com/api/?background=random	1	2021-10-15 18:13:00	2021-10-15 18:13:00
7	Tempora porro.	Quas quia repudiandae eum officia iusto eligendi exercitationem.	https://ui-avatars.com/api/?background=random	35	2021-10-15 18:13:00	2021-10-15 18:13:00
8	Natus consequuntur.	Deleniti alias voluptas eaque praesentium omnis aut cumque.	https://ui-avatars.com/api/?background=random	42	2021-10-15 18:13:00	2021-10-15 18:13:00
9	Molestiae sunt.	Voluptate maiores molestiae possimus voluptas.	https://ui-avatars.com/api/?background=random	55	2021-10-15 18:13:00	2021-10-15 18:13:00
10	Est laborum.	Perferendis assumenda blanditiis ut ad provident aperiam molestiae porro.	https://ui-avatars.com/api/?background=random	20	2021-10-15 18:13:00	2021-10-15 18:13:00
11	Illum dolor.	Quidem autem iste laborum enim.	https://ui-avatars.com/api/?background=random	59	2021-10-15 18:13:00	2021-10-15 18:13:00
12	Laudantium voluptas dolor.	Unde fugit perferendis ea quia voluptate.	https://ui-avatars.com/api/?background=random	59	2021-10-15 18:13:00	2021-10-15 18:13:00
13	Maiores corrupti.	Sunt voluptatem atque rerum.	https://ui-avatars.com/api/?background=random	50	2021-10-15 18:13:00	2021-10-15 18:13:00
14	Id ab cumque.	Est rerum quia debitis praesentium.	https://ui-avatars.com/api/?background=random	68	2021-10-15 18:13:00	2021-10-15 18:13:00
15	Quas ab.	Ipsam sit magni cumque ea quod.	https://ui-avatars.com/api/?background=random	92	2021-10-15 18:13:00	2021-10-15 18:13:00
16	Provident aliquam labore.	Dicta est autem quis facilis et qui.	https://ui-avatars.com/api/?background=random	18	2021-10-15 18:13:00	2021-10-15 18:13:00
17	Non in modi.	Vel rerum deserunt nulla.	https://ui-avatars.com/api/?background=random	20	2021-10-15 18:13:00	2021-10-15 18:13:00
18	Magni blanditiis nulla.	Magni culpa amet qui amet.	https://ui-avatars.com/api/?background=random	1	2021-10-15 18:13:00	2021-10-15 18:13:00
19	Cupiditate et nihil.	Aut quia aut porro aut nam sit.	https://ui-avatars.com/api/?background=random	50	2021-10-15 18:13:00	2021-10-15 18:13:00
20	Eos illo enim.	Culpa error corporis omnis asperiores.	https://ui-avatars.com/api/?background=random	70	2021-10-15 18:13:00	2021-10-15 18:13:00
21	Delectus sunt.	Quasi tempore magnam eos ipsum mollitia sed veritatis iure.	https://ui-avatars.com/api/?background=random	25	2021-10-15 18:13:00	2021-10-15 18:13:00
22	Sit magnam laudantium.	Aut sunt asperiores non sapiente.	https://ui-avatars.com/api/?background=random	2	2021-10-15 18:13:00	2021-10-15 18:13:00
23	Perspiciatis omnis.	Veniam perferendis consequuntur aliquid voluptas error quos.	https://ui-avatars.com/api/?background=random	67	2021-10-15 18:13:00	2021-10-15 18:13:00
24	Facere similique.	Neque ut eligendi et sapiente dolor.	https://ui-avatars.com/api/?background=random	41	2021-10-15 18:13:00	2021-10-15 18:13:00
25	Blanditiis sapiente.	Nostrum occaecati voluptatem qui deleniti rerum eum sequi.	https://ui-avatars.com/api/?background=random	53	2021-10-15 18:13:00	2021-10-15 18:13:00
26	Temporibus quos hic.	Quos minus vero ut neque eius soluta veritatis.	https://ui-avatars.com/api/?background=random	53	2021-10-15 18:13:00	2021-10-15 18:13:00
27	Dicta et sed.	Labore beatae rem libero odit consectetur esse.	https://ui-avatars.com/api/?background=random	88	2021-10-15 18:13:00	2021-10-15 18:13:00
28	Velit voluptas voluptatum.	Error inventore et non repellat vero facilis.	https://ui-avatars.com/api/?background=random	86	2021-10-15 18:13:00	2021-10-15 18:13:00
29	Est delectus.	Voluptatem aliquid consequatur ab dicta eius qui.	https://ui-avatars.com/api/?background=random	6	2021-10-15 18:13:00	2021-10-15 18:13:00
30	Nam unde.	Nam nulla accusamus aut facilis maiores saepe nobis sint.	https://ui-avatars.com/api/?background=random	78	2021-10-15 18:13:00	2021-10-15 18:13:00
31	Aut dolorem.	Deserunt pariatur nulla eligendi omnis aspernatur qui.	https://ui-avatars.com/api/?background=random	100	2021-10-15 18:13:00	2021-10-15 18:13:00
32	Est corrupti voluptas.	Sed ea modi aut molestiae possimus.	https://ui-avatars.com/api/?background=random	34	2021-10-15 18:13:00	2021-10-15 18:13:00
33	Quia omnis exercitationem.	Sit non eveniet tenetur aut aperiam cumque dolor.	https://ui-avatars.com/api/?background=random	48	2021-10-15 18:13:00	2021-10-15 18:13:00
34	Deserunt animi est.	Sequi ut possimus quia vel rerum blanditiis quos dolores.	https://ui-avatars.com/api/?background=random	14	2021-10-15 18:13:00	2021-10-15 18:13:00
35	Iure explicabo.	Ullam doloribus sed laboriosam dolorem.	https://ui-avatars.com/api/?background=random	76	2021-10-15 18:13:00	2021-10-15 18:13:00
36	Nihil est.	Non nobis aut voluptatem ullam.	https://ui-avatars.com/api/?background=random	10	2021-10-15 18:13:00	2021-10-15 18:13:00
37	Rem corrupti.	Consectetur omnis perferendis ratione quis tempora.	https://ui-avatars.com/api/?background=random	9	2021-10-15 18:13:00	2021-10-15 18:13:00
38	Ab fugiat.	Error praesentium consequuntur aut aspernatur.	https://ui-avatars.com/api/?background=random	61	2021-10-15 18:13:00	2021-10-15 18:13:00
39	Exercitationem explicabo.	Rem earum a ut tempora accusantium.	https://ui-avatars.com/api/?background=random	21	2021-10-15 18:13:00	2021-10-15 18:13:00
40	Animi laboriosam et.	Qui saepe tempore veniam vero itaque.	https://ui-avatars.com/api/?background=random	40	2021-10-15 18:13:00	2021-10-15 18:13:00
41	Laudantium animi tenetur.	Quas odit perspiciatis eos eaque quasi molestiae possimus.	https://ui-avatars.com/api/?background=random	62	2021-10-15 18:13:00	2021-10-15 18:13:00
42	Magnam ut excepturi.	Autem incidunt voluptas consectetur hic.	https://ui-avatars.com/api/?background=random	12	2021-10-15 18:13:00	2021-10-15 18:13:00
43	Unde mollitia ut.	Veritatis aliquid ratione quas et et quidem amet.	https://ui-avatars.com/api/?background=random	2	2021-10-15 18:13:00	2021-10-15 18:13:00
44	Odit necessitatibus perspiciatis.	Iste id impedit tempora et.	https://ui-avatars.com/api/?background=random	68	2021-10-15 18:13:00	2021-10-15 18:13:00
45	Saepe dolorem molestias.	Necessitatibus natus quaerat ut.	https://ui-avatars.com/api/?background=random	4	2021-10-15 18:13:00	2021-10-15 18:13:00
46	Non et.	Voluptate repellendus est aliquid ut autem aperiam.	https://ui-avatars.com/api/?background=random	28	2021-10-15 18:13:00	2021-10-15 18:13:00
47	Atque eos odio.	Est aliquam sequi magni nihil minus.	https://ui-avatars.com/api/?background=random	87	2021-10-15 18:13:00	2021-10-15 18:13:00
48	Fuga qui inventore.	In alias mollitia quia necessitatibus laudantium.	https://ui-avatars.com/api/?background=random	38	2021-10-15 18:13:00	2021-10-15 18:13:00
49	Nostrum hic.	Dolores animi laborum libero qui occaecati et.	https://ui-avatars.com/api/?background=random	38	2021-10-15 18:13:00	2021-10-15 18:13:00
50	Et fugit.	Debitis veritatis animi alias inventore delectus at.	https://ui-avatars.com/api/?background=random	97	2021-10-15 18:13:00	2021-10-15 18:13:00
51	Fugiat vel.	Reprehenderit recusandae rerum laboriosam et iure totam.	https://ui-avatars.com/api/?background=random	8	2021-10-15 18:13:00	2021-10-15 18:13:00
52	Natus nulla aliquid.	Ut vero et beatae veritatis sed.	https://ui-avatars.com/api/?background=random	97	2021-10-15 18:13:00	2021-10-15 18:13:00
53	Et pariatur.	Ad nihil repellendus labore.	https://ui-avatars.com/api/?background=random	81	2021-10-15 18:13:00	2021-10-15 18:13:00
54	Aut sed.	Sunt est at nihil quibusdam enim nulla totam voluptates.	https://ui-avatars.com/api/?background=random	74	2021-10-15 18:13:00	2021-10-15 18:13:00
55	Autem occaecati temporibus.	Esse dolores nesciunt est molestiae illo maiores nihil.	https://ui-avatars.com/api/?background=random	16	2021-10-15 18:13:00	2021-10-15 18:13:00
56	Labore sequi voluptatibus.	Nobis provident autem aut amet reiciendis.	https://ui-avatars.com/api/?background=random	63	2021-10-15 18:13:00	2021-10-15 18:13:00
57	Aut sapiente.	Ut eius incidunt rem doloribus consequatur vel et.	https://ui-avatars.com/api/?background=random	34	2021-10-15 18:13:00	2021-10-15 18:13:00
58	Eum dolores quia.	Nisi eos corrupti beatae odio nisi quis officiis velit.	https://ui-avatars.com/api/?background=random	15	2021-10-15 18:13:00	2021-10-15 18:13:00
59	Exercitationem possimus ratione.	Aut voluptatem fugit labore quasi ex.	https://ui-avatars.com/api/?background=random	16	2021-10-15 18:13:00	2021-10-15 18:13:00
60	Qui ratione.	Quia neque molestiae et qui.	https://ui-avatars.com/api/?background=random	60	2021-10-15 18:13:00	2021-10-15 18:13:00
61	Quis est.	Facere aut at laboriosam et odit consequatur ipsam.	https://ui-avatars.com/api/?background=random	26	2021-10-15 18:13:00	2021-10-15 18:13:00
62	Nam doloremque unde.	Consequuntur et numquam aut aut et.	https://ui-avatars.com/api/?background=random	83	2021-10-15 18:13:00	2021-10-15 18:13:00
63	Officia corporis.	Minima consequatur mollitia non quia.	https://ui-avatars.com/api/?background=random	37	2021-10-15 18:13:00	2021-10-15 18:13:00
64	Quo excepturi.	Et fuga tempore et.	https://ui-avatars.com/api/?background=random	54	2021-10-15 18:13:00	2021-10-15 18:13:00
65	Iste commodi quibusdam.	Earum quibusdam quia reprehenderit quidem.	https://ui-avatars.com/api/?background=random	66	2021-10-15 18:13:00	2021-10-15 18:13:00
66	Ad laborum expedita.	Praesentium voluptate eos alias dolorem.	https://ui-avatars.com/api/?background=random	17	2021-10-15 18:13:00	2021-10-15 18:13:00
67	Sed dolore qui.	Corporis in qui repellat amet sit nemo.	https://ui-avatars.com/api/?background=random	23	2021-10-15 18:13:00	2021-10-15 18:13:00
68	Et quia ducimus.	Omnis et beatae sit laborum.	https://ui-avatars.com/api/?background=random	19	2021-10-15 18:13:00	2021-10-15 18:13:00
69	Id facere doloremque.	Quia harum dolorem et molestias tempore ut.	https://ui-avatars.com/api/?background=random	72	2021-10-15 18:13:00	2021-10-15 18:13:00
70	Adipisci et minima.	Sunt repellendus nulla debitis.	https://ui-avatars.com/api/?background=random	63	2021-10-15 18:13:00	2021-10-15 18:13:00
71	Qui et.	Non voluptatibus voluptatibus consequatur.	https://ui-avatars.com/api/?background=random	93	2021-10-15 18:13:00	2021-10-15 18:13:00
72	Magnam doloremque laboriosam.	Perferendis quia qui aut sunt illo aspernatur quia atque.	https://ui-avatars.com/api/?background=random	78	2021-10-15 18:13:00	2021-10-15 18:13:00
73	Et consequatur enim.	Eum asperiores earum omnis facere labore ea id dolorem.	https://ui-avatars.com/api/?background=random	42	2021-10-15 18:13:00	2021-10-15 18:13:00
74	Qui corrupti est.	Aut accusamus eveniet ipsa id earum cupiditate eos.	https://ui-avatars.com/api/?background=random	13	2021-10-15 18:13:01	2021-10-15 18:13:01
75	Quia nobis.	Veritatis qui sit recusandae non omnis.	https://ui-avatars.com/api/?background=random	2	2021-10-15 18:13:01	2021-10-15 18:13:01
76	Nihil nisi.	Voluptas est necessitatibus aut.	https://ui-avatars.com/api/?background=random	70	2021-10-15 18:13:01	2021-10-15 18:13:01
77	Unde tenetur nostrum.	Rerum non ea totam quia repudiandae nihil cum.	https://ui-avatars.com/api/?background=random	45	2021-10-15 18:13:01	2021-10-15 18:13:01
78	Ab similique.	Omnis et minima vitae libero est.	https://ui-avatars.com/api/?background=random	49	2021-10-15 18:13:01	2021-10-15 18:13:01
79	Eveniet laborum.	Voluptas corrupti quaerat est.	https://ui-avatars.com/api/?background=random	30	2021-10-15 18:13:01	2021-10-15 18:13:01
80	Ut et.	Aut natus id nulla eos beatae.	https://ui-avatars.com/api/?background=random	28	2021-10-15 18:13:01	2021-10-15 18:13:01
81	Voluptatum corporis.	Laborum velit assumenda voluptate.	https://ui-avatars.com/api/?background=random	33	2021-10-15 18:13:01	2021-10-15 18:13:01
82	Quia voluptates.	Laborum voluptas inventore reprehenderit corporis quia in sed.	https://ui-avatars.com/api/?background=random	60	2021-10-15 18:13:01	2021-10-15 18:13:01
83	Sunt unde neque.	Est consequatur vero necessitatibus ad qui sit esse.	https://ui-avatars.com/api/?background=random	3	2021-10-15 18:13:01	2021-10-15 18:13:01
84	Quasi fugit tempore.	Omnis sequi eum soluta autem in.	https://ui-avatars.com/api/?background=random	35	2021-10-15 18:13:01	2021-10-15 18:13:01
85	Architecto magni.	Dolorem voluptatem facere et quae sint odit illum.	https://ui-avatars.com/api/?background=random	42	2021-10-15 18:13:01	2021-10-15 18:13:01
86	Iusto nisi.	Non minus dolorum labore quod soluta dolore nobis.	https://ui-avatars.com/api/?background=random	79	2021-10-15 18:13:01	2021-10-15 18:13:01
87	Non id.	Ut quibusdam sint rerum.	https://ui-avatars.com/api/?background=random	16	2021-10-15 18:13:01	2021-10-15 18:13:01
88	Voluptatem est ut.	Reprehenderit omnis fuga est pariatur hic.	https://ui-avatars.com/api/?background=random	63	2021-10-15 18:13:01	2021-10-15 18:13:01
89	Incidunt rem inventore.	Rerum excepturi inventore commodi ad earum qui molestiae.	https://ui-avatars.com/api/?background=random	95	2021-10-15 18:13:01	2021-10-15 18:13:01
90	Facere enim consequatur.	Nesciunt mollitia repellat deleniti molestiae.	https://ui-avatars.com/api/?background=random	23	2021-10-15 18:13:01	2021-10-15 18:13:01
91	Dolore dolores sed.	Perferendis illum qui numquam dolorem corrupti sint et.	https://ui-avatars.com/api/?background=random	51	2021-10-15 18:13:01	2021-10-15 18:13:01
92	Autem tempore dolorem.	Voluptatum dolor similique rerum molestiae dignissimos.	https://ui-avatars.com/api/?background=random	93	2021-10-15 18:13:01	2021-10-15 18:13:01
93	Earum aliquid.	Quasi blanditiis et aliquid voluptatem atque sint.	https://ui-avatars.com/api/?background=random	22	2021-10-15 18:13:01	2021-10-15 18:13:01
94	Non quod ipsam.	Consequatur ut sint alias autem et perferendis dolore.	https://ui-avatars.com/api/?background=random	23	2021-10-15 18:13:01	2021-10-15 18:13:01
95	Itaque est.	Repellat quisquam voluptatem ea blanditiis provident fugit.	https://ui-avatars.com/api/?background=random	49	2021-10-15 18:13:01	2021-10-15 18:13:01
96	Minus sapiente.	Aut necessitatibus in aliquid impedit.	https://ui-avatars.com/api/?background=random	81	2021-10-15 18:13:01	2021-10-15 18:13:01
97	Mollitia qui.	Excepturi possimus id blanditiis ab et quos.	https://ui-avatars.com/api/?background=random	87	2021-10-15 18:13:01	2021-10-15 18:13:01
98	Beatae assumenda.	Molestiae totam nihil nihil sapiente.	https://ui-avatars.com/api/?background=random	49	2021-10-15 18:13:01	2021-10-15 18:13:01
99	Omnis aut totam.	Aut odio officiis earum nisi.	https://ui-avatars.com/api/?background=random	69	2021-10-15 18:13:01	2021-10-15 18:13:01
100	Necessitatibus qui ad.	Et praesentium dolorum ad dolore.	https://ui-avatars.com/api/?background=random	53	2021-10-15 18:13:01	2021-10-15 18:13:01
101	colgte herbal	hdfhdjfhsffhsfshfksfs	https://ui-avatars.com/api/?background=random	4	2021-10-16 14:04:26	2021-10-16 14:04:26
102	colgte double action	hdfhdjfhsffhsfshfksfs	https://ui-avatars.com/api/?background=random	4	2021-10-16 14:04:47	2021-10-16 14:04:47
103	colgte double action	hdfhdjfhsffhsfshfksfs	https://ui-avatars.com/api/?background=random	4	2021-10-16 17:07:17	2021-10-16 17:07:17
104	Pepsodent	fresh and healthy teeth	https://ui-avatars.com/api/?background=random	4	\N	\N
105	Pepsodent	fresh and healthy teeth	https://ui-avatars.com/api/?background=random	4	\N	\N
106	Pepsodent	fresh and healthy teeth	https://ui-avatars.com/api/?background=random	4	\N	\N
107	Pepsodent	fresh and healthy teeth	https://ui-avatars.com/api/?background=random	4	\N	\N
108	Pepsodent	fresh and healthy teeth	https://ui-avatars.com/api/?background=random	4	\N	\N
109	Pepsodent	fresh and healthy teeth	https://ui-avatars.com/api/?background=random	4	\N	\N
110	Pepsodent	fresh and healthy teeth	https://ui-avatars.com/api/?background=random	4	\N	\N
111	Pepsoddsdsent	fresh and healthy teeth	https://ui-avatars.com/api/?background=random	4	\N	\N
112	Pepsodent2	fresh and healthy teeth	https://ui-avatars.com/api/?background=random	5	\N	\N
113	Pepsodent	fresh and healthy teeth	https://ui-avatars.com/api/?background=random	4	\N	\N
114		fresh and healthy teeth	https://ui-avatars.com/api/?background=random	4	\N	\N
115	Pepsodent2	fresh and healthy teeth	https://ui-avatars.com/api/?background=random	5	\N	\N
\.


--
-- TOC entry 3383 (class 0 OID 34698)
-- Dependencies: 232
-- Data for Name: purchase_orders; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.purchase_orders (id, amount, supplier_id, shop_id, debit_note_id, created_at, updated_at, order_no) FROM stdin;
2	2800.67	9	67	48	2021-10-15 18:15:03	2021-10-15 18:15:03	\N
3	70523725.53	8	51	30	2021-10-15 18:15:03	2021-10-15 18:15:03	\N
4	27149.46	5	38	24	2021-10-15 18:15:03	2021-10-15 18:15:03	\N
5	0.1	20	78	87	2021-10-15 18:15:03	2021-10-15 18:15:03	\N
6	54621.72	23	93	62	2021-10-15 18:15:03	2021-10-15 18:15:03	\N
7	19193.85	35	35	43	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
8	404456.89	20	72	89	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
9	60120.46	16	70	97	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
10	7.43	14	90	68	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
11	65.09	28	31	71	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
12	23.76	22	18	32	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
13	187154.4	8	90	12	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
14	224609.52	35	35	60	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
15	37019.17	28	48	31	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
16	4690.61	16	6	83	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
17	67109.05	24	89	50	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
18	22.35	27	54	86	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
19	235744949.22	39	98	95	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
20	0.27	15	2	13	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
21	452764.53	14	32	17	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
22	5856036.84	7	61	36	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
23	4176.95	33	56	100	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
24	12720.08	9	8	66	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
25	0.13	27	26	41	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
26	461275104	28	70	25	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
27	1.69	18	6	19	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
28	56909882.29	12	7	38	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
29	2286029.6	32	23	94	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
30	1392165.08	11	19	40	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
31	7.49	7	71	55	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
32	2158049.88	39	79	20	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
33	14.02	7	91	2	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
34	2554.13	22	25	45	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
35	94.25	5	37	92	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
36	55.16	5	75	85	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
37	61574811.97	27	64	10	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
38	268051.09	2	21	82	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
39	1213.35	32	31	65	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
40	781790800.34	18	25	6	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
41	34.57	7	89	3	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
42	94127.9	16	37	69	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
43	41194.59	7	1	7	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
44	45.51	31	1	73	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
45	274.12	26	88	67	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
46	1.2	22	50	33	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
47	15830892.72	8	90	70	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
48	5340679.95	4	83	22	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
49	40.49	8	66	42	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
50	6326.43	1	39	39	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
51	17319984.95	15	5	4	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
52	0.8	33	34	77	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
53	25.21	10	45	47	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
54	137.38	35	42	35	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
55	88921349.66	30	85	63	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
56	7.96	10	79	79	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
57	61092201.99	26	99	64	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
58	220584.01	39	8	23	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
59	299040.68	5	96	72	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
60	19.91	3	90	15	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
61	869.4	4	30	44	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
62	29649.58	12	20	52	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
63	410218252.75	21	29	18	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
64	565.51	39	93	91	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
65	39480191.88	33	54	58	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
66	53676119.66	36	55	90	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
67	4.54	1	40	29	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
68	229.6	25	91	98	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
69	27214.03	36	36	76	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
70	484.82	10	37	61	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
71	9.86	36	80	80	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
72	2275816.84	29	73	59	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
73	397310656.31	18	9	16	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
74	16.47	33	95	56	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
75	102771599.93	3	9	88	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
76	477.39	38	3	26	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
77	76723294.05	32	10	49	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
78	21063.92	5	20	27	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
79	8.06	18	38	14	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
80	2.26	35	22	75	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
81	4206.81	2	56	1	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
82	349188.34	21	31	96	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
83	1659262.6	2	5	57	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
84	45969695.42	32	63	21	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
85	9495242.43	15	16	99	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
86	474055.36	6	64	5	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
87	64.49	14	79	28	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
88	140226.26	18	62	93	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
89	1193872.55	7	43	37	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
90	200255906.75	28	34	84	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
91	0.07	4	18	9	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
92	4310.28	20	30	46	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
93	277187.5	40	81	34	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
94	6708268.33	19	22	51	2021-10-15 18:15:04	2021-10-15 18:15:04	\N
95	5493543.4	26	3	81	2021-10-15 18:15:05	2021-10-15 18:15:05	\N
96	292097285.35	13	66	53	2021-10-15 18:15:05	2021-10-15 18:15:05	\N
97	111.28	22	33	78	2021-10-15 18:15:05	2021-10-15 18:15:05	\N
98	383.39	27	81	11	2021-10-15 18:15:05	2021-10-15 18:15:05	\N
99	6183.48	37	81	8	2021-10-15 18:15:05	2021-10-15 18:15:05	\N
100	304924.76	18	61	54	2021-10-15 18:15:05	2021-10-15 18:15:05	\N
101	121725706.72	32	34	74	2021-10-15 18:15:05	2021-10-15 18:15:05	\N
104	100	2	3	116	2021-10-27 12:38:13	2021-10-27 12:38:13	
105	100	2	3	117	2021-10-27 12:38:38	2021-10-27 12:38:38	
106	100	2	3	118	2021-10-27 12:38:44	2021-10-27 12:38:44	
107	100	2	3	119	2021-10-27 12:39:02	2021-10-27 12:39:02	
108	100	2	3	120	2021-10-27 12:40:40	2021-10-27 12:40:40	
109	100	2	3	121	2021-10-27 12:41:31	2021-10-27 12:41:31	
110	100	2	3	122	2021-10-27 12:41:39	2021-10-27 12:41:39	
111	100	2	3	123	2021-10-27 12:41:41	2021-10-27 12:41:41	
112	100	2	3	124	2021-10-27 12:41:42	2021-10-27 12:41:42	
113	100	2	3	125	2021-10-27 12:41:44	2021-10-27 12:41:44	
114	100	2	3	126	2021-10-27 12:41:47	2021-10-27 12:41:47	
115	100	2	3	127	2021-10-27 12:44:32	2021-10-27 12:44:32	1635338672
116	100	2	3	128	2021-10-27 12:44:34	2021-10-27 12:44:34	1635338674
117	100	2	3	129	2021-10-27 12:44:35	2021-10-27 12:44:35	1635338675
118	100	2	3	130	2021-10-27 12:44:37	2021-10-27 12:44:37	1635338677
119	100	2	3	131	2021-10-27 12:44:38	2021-10-27 12:44:38	1635338678
120	100	2	3	132	2021-10-27 12:44:39	2021-10-27 12:44:39	1635338679
121	100	2	3	133	2021-10-27 12:44:39	2021-10-27 12:44:39	1635338679
122	100	2	3	134	2021-10-27 12:44:40	2021-10-27 12:44:40	1635338680
123	100	2	3	135	2021-10-27 12:44:40	2021-10-27 12:44:40	1635338680
\.


--
-- TOC entry 3385 (class 0 OID 34723)
-- Dependencies: 234
-- Data for Name: sales_orders; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.sales_orders (id, amount, customer_id, shop_id, credit_note_id, created_at, updated_at, order_no) FROM stdin;
1	291040036.14	36	5	77	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
2	3680.47	37	19	36	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
3	3986.39	10	77	43	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
4	13.37	18	94	80	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
5	4.47	34	39	54	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
6	435.56	16	32	45	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
7	23.89	33	25	15	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
8	598221862.35	24	85	4	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
9	467.82	2	88	48	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
10	7761915.17	14	35	33	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
11	104832.88	2	98	85	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
12	380.92	18	31	70	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
13	213.29	16	61	13	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
14	200.35	28	53	7	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
15	2.18	8	62	52	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
16	5361262.4	30	43	22	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
17	1.39	12	49	28	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
18	1374905.94	14	14	50	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
19	3601.93	6	47	83	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
20	3.28	8	38	66	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
21	529.45	31	88	1	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
22	143119271.09	30	52	21	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
23	57.36	38	35	19	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
24	579.8	29	78	58	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
25	6.16	5	14	63	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
26	0	14	17	37	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
27	234634.53	40	14	40	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
28	51269810	12	27	23	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
29	31903.49	3	18	87	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
30	2.34	16	95	90	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
31	158165489.19	15	42	86	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
32	10.05	15	70	61	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
33	3525.86	19	37	16	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
34	4193459.9	30	70	60	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
35	53.85	3	6	10	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
36	128.38	31	68	39	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
38	15332.93	24	49	51	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
39	318.34	26	43	46	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
40	970217.59	13	2	30	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
42	5593462.52	10	85	20	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
43	2328542.33	2	73	94	2021-10-15 18:15:21	2021-10-15 18:15:21	\N
44	3.86	38	24	72	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
45	28613645.1	14	67	26	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
46	306853037.31	29	11	53	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
47	31.68	20	17	31	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
48	1.7	32	29	88	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
49	3367.98	30	71	9	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
50	4203801.28	6	84	62	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
51	5944.96	2	32	12	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
52	109.36	28	86	71	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
53	1737.48	20	23	59	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
54	16796189.03	5	65	68	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
55	2.45	33	94	92	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
56	402.39	12	80	79	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
57	13925855.55	29	40	2	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
58	787013777.47	38	61	49	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
59	0	36	15	73	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
60	3.16	30	61	47	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
61	225945.07	10	46	89	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
62	0.73	1	24	11	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
63	81576.94	10	81	35	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
64	90870747.85	6	92	65	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
65	2521220.27	24	61	5	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
66	38876294.54	6	65	95	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
67	813.91	4	29	75	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
68	51475.56	23	73	100	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
69	405.1	32	30	55	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
70	83.17	23	10	67	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
71	18688473.23	13	73	97	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
72	1672408.07	25	99	6	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
73	55214.28	29	20	84	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
74	868.7	3	62	38	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
75	18067096.63	36	50	82	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
77	1627188.18	39	74	69	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
78	2.9	21	48	91	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
79	4.57	28	38	8	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
80	184.43	29	97	25	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
81	1.29	27	86	41	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
82	201074.94	28	84	96	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
83	321384924.47	19	83	74	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
84	1108.14	13	51	14	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
86	259371.66	8	59	42	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
87	545.79	28	63	81	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
88	0.44	29	69	93	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
89	40637732.8	34	40	32	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
90	3.68	19	90	56	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
91	598634598.78	14	19	17	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
92	671881.25	28	82	99	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
93	0.54	6	20	98	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
94	448183998.48	33	55	78	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
95	2462439.39	9	70	44	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
96	56611569.3	38	44	3	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
98	397.53	4	9	24	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
99	197324.91	35	50	27	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
100	321450363.53	39	95	64	2021-10-15 18:15:22	2021-10-15 18:15:22	\N
104	100	2	3	107	2021-10-27 12:54:39	2021-10-27 12:54:39	1635339279
105	100	2	3	108	2021-10-27 12:54:43	2021-10-27 12:54:43	1635339283
106	100	2	3	109	2021-10-27 12:54:45	2021-10-27 12:54:45	1635339285
107	100	2	3	110	2021-10-27 12:54:47	2021-10-27 12:54:47	1635339287
110	500	1	48	\N	2021-12-24 12:17:11	2021-12-24 12:17:11	1640348231
111	100	1	48	\N	2021-12-24 12:21:49	2021-12-24 12:21:49	1640348509
112	100	1	48	\N	2021-12-24 12:26:39	2021-12-24 12:26:39	1640348799
113	100	1	48	\N	2021-12-24 12:29:17	2021-12-24 12:29:17	1640348957
114	100	1	48	\N	2021-12-24 12:29:39	2021-12-24 12:29:39	1640348979
115	100	1	48	\N	2021-12-24 12:29:49	2021-12-24 12:29:49	1640348989
116	100	1	48	\N	2021-12-24 12:30:17	2021-12-24 12:30:17	1640349017
117	100	1	48	\N	2021-12-24 12:31:52	2021-12-24 12:31:52	1640349112
\.


--
-- TOC entry 3361 (class 0 OID 34527)
-- Dependencies: 210
-- Data for Name: shop_owners; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.shop_owners (id, created_at, updated_at, "firstName", "lastName", "photoUrl", user_id) FROM stdin;
1	2021-10-15 18:12:57	2021-10-15 18:12:57	Friedrich	Alene	https://ui-avatars.com/api/?background=random	100
2	2021-10-15 18:12:57	2021-10-15 18:12:57	Rebeka	Alvena	https://ui-avatars.com/api/?background=random	26
3	2021-10-15 18:12:57	2021-10-15 18:12:57	Beatrice	Raphael	https://ui-avatars.com/api/?background=random	5
4	2021-10-15 18:12:57	2021-10-15 18:12:57	Natasha	Dusty	https://ui-avatars.com/api/?background=random	50
5	2021-10-15 18:12:57	2021-10-15 18:12:57	Westley	Houston	https://ui-avatars.com/api/?background=random	22
6	2021-10-15 18:12:57	2021-10-15 18:12:57	Art	Alex	https://ui-avatars.com/api/?background=random	72
7	2021-10-15 18:12:57	2021-10-15 18:12:57	Terrance	Lou	https://ui-avatars.com/api/?background=random	7
8	2021-10-15 18:12:57	2021-10-15 18:12:57	Travis	Marcos	https://ui-avatars.com/api/?background=random	61
9	2021-10-15 18:12:57	2021-10-15 18:12:57	Vada	Burnice	https://ui-avatars.com/api/?background=random	17
10	2021-10-15 18:12:57	2021-10-15 18:12:57	Nannie	Aletha	https://ui-avatars.com/api/?background=random	62
11	2021-10-15 18:12:57	2021-10-15 18:12:57	Holly	Allene	https://ui-avatars.com/api/?background=random	15
12	2021-10-15 18:12:57	2021-10-15 18:12:57	Araceli	Ivy	https://ui-avatars.com/api/?background=random	34
13	2021-10-15 18:12:57	2021-10-15 18:12:57	Mia	Delia	https://ui-avatars.com/api/?background=random	47
14	2021-10-15 18:12:57	2021-10-15 18:12:57	Demarcus	Brandon	https://ui-avatars.com/api/?background=random	46
15	2021-10-15 18:12:57	2021-10-15 18:12:57	Tremaine	Dorris	https://ui-avatars.com/api/?background=random	38
16	2021-10-15 18:12:57	2021-10-15 18:12:57	Mark	Catherine	https://ui-avatars.com/api/?background=random	87
17	2021-10-15 18:12:57	2021-10-15 18:12:57	Kaci	Will	https://ui-avatars.com/api/?background=random	51
18	2021-10-15 18:12:57	2021-10-15 18:12:57	Alaina	Henriette	https://ui-avatars.com/api/?background=random	42
19	2021-10-15 18:12:57	2021-10-15 18:12:57	Enrique	Dan	https://ui-avatars.com/api/?background=random	58
20	2021-10-15 18:12:57	2021-10-15 18:12:57	Melvin	Alan	https://ui-avatars.com/api/?background=random	95
21	2021-10-15 18:12:57	2021-10-15 18:12:57	Elisa	Celine	https://ui-avatars.com/api/?background=random	53
22	2021-10-15 18:12:57	2021-10-15 18:12:57	Dayna	Andy	https://ui-avatars.com/api/?background=random	64
23	2021-10-15 18:12:57	2021-10-15 18:12:57	Mae	Rosa	https://ui-avatars.com/api/?background=random	9
24	2021-10-15 18:12:57	2021-10-15 18:12:57	Murl	Chanel	https://ui-avatars.com/api/?background=random	78
25	2021-10-15 18:12:57	2021-10-15 18:12:57	Ima	Alvina	https://ui-avatars.com/api/?background=random	43
26	2021-10-15 18:12:57	2021-10-15 18:12:57	Kailyn	Wilford	https://ui-avatars.com/api/?background=random	55
27	2021-10-15 18:12:57	2021-10-15 18:12:57	Preston	Charity	https://ui-avatars.com/api/?background=random	33
28	2021-10-15 18:12:57	2021-10-15 18:12:57	Ashley	Eleanore	https://ui-avatars.com/api/?background=random	97
29	2021-10-15 18:12:57	2021-10-15 18:12:57	Euna	Aurelie	https://ui-avatars.com/api/?background=random	81
30	2021-10-15 18:12:57	2021-10-15 18:12:57	Gerda	Ocie	https://ui-avatars.com/api/?background=random	93
31	2021-10-15 18:12:57	2021-10-15 18:12:57	Salma	Darien	https://ui-avatars.com/api/?background=random	19
32	2021-10-15 18:12:57	2021-10-15 18:12:57	Anastacio	Yvette	https://ui-avatars.com/api/?background=random	69
33	2021-10-15 18:12:57	2021-10-15 18:12:57	Helen	Maci	https://ui-avatars.com/api/?background=random	71
34	2021-10-15 18:12:57	2021-10-15 18:12:57	Stacy	Mallory	https://ui-avatars.com/api/?background=random	75
35	2021-10-15 18:12:57	2021-10-15 18:12:57	Katarina	Stella	https://ui-avatars.com/api/?background=random	60
36	2021-10-15 18:12:57	2021-10-15 18:12:57	Rebecca	Jaunita	https://ui-avatars.com/api/?background=random	37
37	2021-10-15 18:12:57	2021-10-15 18:12:57	Sam	Alysa	https://ui-avatars.com/api/?background=random	90
38	2021-10-15 18:12:57	2021-10-15 18:12:57	Montana	Baby	https://ui-avatars.com/api/?background=random	56
39	2021-10-15 18:12:58	2021-10-15 18:12:58	Casper	Garnet	https://ui-avatars.com/api/?background=random	57
40	2021-10-15 18:12:58	2021-10-15 18:12:58	Kayli	Ali	https://ui-avatars.com/api/?background=random	11
41	2021-10-19 12:19:47	2021-10-19 12:19:47	George	Ndirangu	https://ui-avatars.com/api/?background=random	3
43	2021-10-19 12:20:05	2021-10-19 12:20:05	George	Ndirangu	https://ui-avatars.com/api/?background=random	4
44	2021-10-19 12:20:21	2021-10-19 12:20:21	George	Ndirangu	https://ui-avatars.com/api/?background=random	138
46	2021-10-20 05:54:43	2021-10-20 05:54:43	mega wholesalers	gjgjg	https://ui-avatars.com/api/?background=random	12
47	2021-12-24 11:31:35	2021-12-24 11:31:35	George	Ndirangu	https://ui-avatars.com/api/?background=random	145
48	2021-12-24 11:37:22	2021-12-24 11:37:22	George	Ndirangu	https://ui-avatars.com/api/?background=random	146
\.


--
-- TOC entry 3367 (class 0 OID 34572)
-- Dependencies: 216
-- Data for Name: shops; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.shops (id, name, "photoUrl", bio, phone, email, shop_owner_id, created_at, updated_at) FROM stdin;
1	Fay-Corwin	https://ui-avatars.com/api/?background=random	Unde in illum commodi aut incidunt. Et quidem et aut at quae. Nemo eos illum totam velit rerum non et nihil.	+1 (820) 923-9094	enienow@gmail.com	37	2021-10-15 18:13:06	2021-10-15 18:13:06
2	Huel-Davis	https://ui-avatars.com/api/?background=random	Alias dicta eum dolor sint. Nulla porro neque iure in vero doloremque. Perferendis qui veritatis placeat. Inventore tenetur minima labore distinctio omnis consectetur exercitationem.	763-704-2345	orion76@yahoo.com	2	2021-10-15 18:13:06	2021-10-15 18:13:06
3	Douglas Ltd	https://ui-avatars.com/api/?background=random	Itaque et cum distinctio adipisci quo voluptatem fugit. Non tenetur consequatur sit deleniti. Ullam fuga fugiat sint qui sit laboriosam distinctio nemo. Qui earum qui omnis blanditiis.	1-859-509-5854	devante.spinka@yahoo.com	14	2021-10-15 18:13:06	2021-10-15 18:13:06
4	Schmitt-Carroll	https://ui-avatars.com/api/?background=random	Eum quidem libero neque qui quia laboriosam quibusdam laudantium. Et ad provident id sed assumenda voluptas cupiditate cumque. Voluptas vel atque quisquam dignissimos est ut consectetur. Quod rerum cum architecto.	+1-323-991-7624	curtis68@denesik.com	22	2021-10-15 18:13:06	2021-10-15 18:13:06
5	Romaguera PLC	https://ui-avatars.com/api/?background=random	Sequi error est culpa repellendus hic provident ut consequatur. Aut molestiae quo ut est voluptatem. Rem eos ut et unde voluptatum ex.	701.808.7782	damore.gloria@breitenberg.com	2	2021-10-15 18:13:06	2021-10-15 18:13:06
6	Mante, Terry and Rosenbaum	https://ui-avatars.com/api/?background=random	Aspernatur ea incidunt saepe qui architecto reprehenderit consequatur. Corporis ut quo quaerat qui facilis nihil laboriosam dolor. Eos repudiandae in vero maiores. Repellendus autem consectetur nemo rem et sequi.	1-216-950-3744	nils80@gmail.com	28	2021-10-15 18:13:06	2021-10-15 18:13:06
7	Conroy PLC	https://ui-avatars.com/api/?background=random	Maiores et consectetur corporis repellat. Rerum omnis et dolorem. Recusandae magni qui non sint perspiciatis quas.	(762) 277-4379	ova.stamm@hegmann.com	16	2021-10-15 18:13:06	2021-10-15 18:13:06
8	Bahringer-Mante	https://ui-avatars.com/api/?background=random	Harum et qui earum labore. Porro cupiditate et amet voluptatem.	1-281-755-0614	muller.jaron@hane.net	12	2021-10-15 18:13:06	2021-10-15 18:13:06
9	Schoen-Gerhold	https://ui-avatars.com/api/?background=random	Optio voluptatum omnis rerum cum vel repellendus dolores. Rem ducimus dicta molestiae quisquam minima.	+12172722600	janelle.lindgren@hotmail.com	7	2021-10-15 18:13:06	2021-10-15 18:13:06
10	Kshlerin-Macejkovic	https://ui-avatars.com/api/?background=random	Ut quisquam alias voluptates perferendis sunt. Corrupti sunt praesentium et. Debitis aut quo et.	530-476-1087	dflatley@yahoo.com	29	2021-10-15 18:13:06	2021-10-15 18:13:06
11	Adams, Lynch and Greenholt	https://ui-avatars.com/api/?background=random	Quia nobis cupiditate rerum et. Nemo molestias aut commodi enim laudantium cupiditate quidem vero. Et blanditiis quibusdam porro nobis recusandae doloremque voluptatem enim. Harum praesentium soluta aut autem nihil.	757.335.6032	cheaney@yahoo.com	30	2021-10-15 18:13:06	2021-10-15 18:13:06
12	Moore Ltd	https://ui-avatars.com/api/?background=random	Quibusdam quia laborum molestiae ipsa eveniet doloremque. Et impedit quas quas aliquam. Sint iusto mollitia similique est iste dicta libero in.	+1-903-366-0852	hamill.daphney@hotmail.com	40	2021-10-15 18:13:06	2021-10-15 18:13:06
13	Legros Group	https://ui-avatars.com/api/?background=random	Sit et temporibus possimus dignissimos. Rerum quis sunt ea aut eum deleniti nihil incidunt. Incidunt fugiat doloribus quasi veritatis aperiam officiis et. Magnam veniam excepturi nemo neque. Magni corrupti tenetur earum id aut enim.	(689) 477-6936	xkoelpin@gmail.com	35	2021-10-15 18:13:06	2021-10-15 18:13:06
14	Graham, Hermann and Yundt	https://ui-avatars.com/api/?background=random	Distinctio occaecati quidem voluptas aliquam. Molestiae nostrum cum et iure cumque. Molestias commodi enim alias soluta est similique. Ipsa aut non odio asperiores et ipsa.	(906) 727-1605	dorian50@pfannerstill.org	18	2021-10-15 18:13:06	2021-10-15 18:13:06
15	Bergnaum, Renner and Predovic	https://ui-avatars.com/api/?background=random	Nihil voluptate veritatis laboriosam non repellat quis odio. Accusamus rerum et quia suscipit.	757.616.7479	durgan.obie@yahoo.com	11	2021-10-15 18:13:06	2021-10-15 18:13:06
16	Mosciski-Cassin	https://ui-avatars.com/api/?background=random	Est laborum tempore molestiae. Nulla quia hic quam deleniti laudantium facere amet.	+1-864-981-0113	bergnaum.sylvia@yahoo.com	9	2021-10-15 18:13:06	2021-10-15 18:13:06
17	Larkin Group	https://ui-avatars.com/api/?background=random	Aut exercitationem dolorum vel praesentium ducimus ut. Earum consequatur ut ratione voluptas nobis suscipit. Reprehenderit doloribus praesentium nulla exercitationem repellat. Suscipit assumenda sunt ut id inventore.	+1-208-926-2688	hbartell@wuckert.net	1	2021-10-15 18:13:06	2021-10-15 18:13:06
18	Haley, O'Kon and Von	https://ui-avatars.com/api/?background=random	Ipsam facilis iure ad possimus soluta quia molestiae. Et non dolorem quos vero. Vel non quod in officia quos neque debitis.	561.953.9911	cyrus.brown@bednar.com	21	2021-10-15 18:13:06	2021-10-15 18:13:06
19	Reynolds-Champlin	https://ui-avatars.com/api/?background=random	Eos dolorem repellendus labore minus in aperiam dolores. Ratione asperiores blanditiis odit eligendi in eum deleniti magni. Iusto odit quod eius voluptas velit consequatur magni error.	(854) 918-9211	clair.grady@strosin.com	37	2021-10-15 18:13:06	2021-10-15 18:13:06
20	Hoppe, Sauer and Collins	https://ui-avatars.com/api/?background=random	Nam iusto dolorem veniam. Quas aliquid molestias mollitia necessitatibus ut nam. Rerum autem qui et saepe tempore. Nisi mollitia aut et cumque non est tenetur.	386-898-4749	ezra.christiansen@hotmail.com	26	2021-10-15 18:13:06	2021-10-15 18:13:06
21	Barrows, DuBuque and Johnson	https://ui-avatars.com/api/?background=random	Non commodi harum voluptatem id sed velit quis. Magni doloribus labore voluptatibus velit. Vero nam fugit corporis est.	+15623059430	hleffler@nader.org	29	2021-10-15 18:13:06	2021-10-15 18:13:06
22	Haley, Fadel and Adams	https://ui-avatars.com/api/?background=random	Ut labore dolor at minus. Dolorem iure voluptatem autem ipsam quia. Accusamus neque iure minima. Quas quasi libero aut numquam dolorum.	279-426-5669	qbartoletti@auer.com	20	2021-10-15 18:13:06	2021-10-15 18:13:06
23	Homenick-Homenick	https://ui-avatars.com/api/?background=random	Quod quas qui non consequuntur possimus. Necessitatibus ut pariatur qui quos ut. Non inventore quis quod amet. Et rerum non quis id dignissimos possimus.	(661) 861-1679	xklocko@gmail.com	40	2021-10-15 18:13:06	2021-10-15 18:13:06
24	Turcotte, Bode and McDermott	https://ui-avatars.com/api/?background=random	Praesentium sint quasi rem laboriosam aut totam. Placeat et et enim velit et sint possimus. Quia beatae itaque odit dolorem culpa autem sint. Impedit qui aliquid qui praesentium molestiae.	803.972.0678	wunsch.gerhard@swaniawski.com	40	2021-10-15 18:13:06	2021-10-15 18:13:06
25	Bernhard, Hagenes and Dibbert	https://ui-avatars.com/api/?background=random	Eum ut aut vel dolores. Ut illum fugiat consectetur voluptates nostrum et. Et maiores vero vel voluptatem dicta qui laudantium.	(531) 907-8304	darion.lang@hotmail.com	8	2021-10-15 18:13:06	2021-10-15 18:13:06
103	Mama John Supa Duka	https://ui-avatars.com/api/?background=random	dksdkjfkjfsdfdkfdsjfhkjfhskfsd  fh s fh  fghfhdfkghkfh s oa hdaosha fhahfa	0476396476	ndirngu.dv@ofutlok.com	2	2021-10-19 12:31:36	2021-10-19 12:31:36
26	Leuschke Group	https://ui-avatars.com/api/?background=random	Repellat et rerum eos ipsum. Nisi fugit qui omnis laborum placeat rerum quibusdam. Sed voluptate dolore fugit. Non nobis dolore illum et.	+1-475-572-1299	crist.dora@cole.com	32	2021-10-15 18:13:06	2021-10-15 18:13:06
27	Durgan, Wiegand and Barrows	https://ui-avatars.com/api/?background=random	Veniam dolore ex eos eveniet veritatis ex alias impedit. Molestias voluptatibus ut et ad. Cumque minima ad illum fuga.	1-330-998-1541	justus49@hammes.net	3	2021-10-15 18:13:06	2021-10-15 18:13:06
28	Hansen, Lueilwitz and Hansen	https://ui-avatars.com/api/?background=random	Aliquam optio similique quia cumque. Vitae cum a magni veritatis amet. Quos temporibus iste repudiandae temporibus consequatur in omnis eveniet.	980-208-0303	grady.aiyana@schowalter.com	1	2021-10-15 18:13:06	2021-10-15 18:13:06
29	Brakus, Kerluke and Wolf	https://ui-avatars.com/api/?background=random	Expedita voluptatibus exercitationem officiis. Ut libero similique quidem ratione.	+1 (608) 894-9594	keebler.ahmad@bayer.org	15	2021-10-15 18:13:06	2021-10-15 18:13:06
30	Weimann-Skiles	https://ui-avatars.com/api/?background=random	Labore aut eos voluptatem sit impedit ducimus praesentium debitis. Molestiae voluptatem id accusamus ex. Quae quidem adipisci aut rerum.	+1.912.810.4829	nya.blick@yahoo.com	40	2021-10-15 18:13:06	2021-10-15 18:13:06
31	Wiegand, Miller and Herzog	https://ui-avatars.com/api/?background=random	Inventore aut necessitatibus natus consequatur molestiae incidunt. Ut ut aliquid architecto ipsa quia commodi nulla.	+1.971.412.4133	abagail11@hotmail.com	27	2021-10-15 18:13:06	2021-10-15 18:13:06
32	Beatty Inc	https://ui-avatars.com/api/?background=random	Et quo vel quia et dicta. Cum voluptates totam quisquam eius architecto nesciunt ratione.	+1 (309) 992-3739	burdette68@wunsch.info	14	2021-10-15 18:13:06	2021-10-15 18:13:06
33	Eichmann, Wintheiser and Reynolds	https://ui-avatars.com/api/?background=random	Officiis odio quo inventore expedita aut veritatis. Facere eveniet illum odit nam sequi. Eius earum ad dolor voluptas sed. Et sint tenetur inventore. Perspiciatis et quia beatae ratione velit aperiam.	+19154025430	pjakubowski@quitzon.com	3	2021-10-15 18:13:06	2021-10-15 18:13:06
34	Hermann Inc	https://ui-avatars.com/api/?background=random	Unde itaque iste voluptatem odit similique aperiam. Eveniet ipsa optio consectetur reiciendis eos. Facere officiis recusandae est eligendi ipsa minima repudiandae. Ipsam sed aspernatur quasi veniam dicta et. Sint ratione voluptatem velit distinctio.	+13306905865	granville.hartmann@hotmail.com	20	2021-10-15 18:13:06	2021-10-15 18:13:06
35	Funk LLC	https://ui-avatars.com/api/?background=random	Eius laborum saepe eaque nulla. Numquam dignissimos repellat natus. Eaque earum asperiores asperiores recusandae recusandae. Praesentium commodi doloremque esse laudantium eveniet odit.	260-879-8813	prosacco.mina@yahoo.com	21	2021-10-15 18:13:06	2021-10-15 18:13:06
36	Abshire-Maggio	https://ui-avatars.com/api/?background=random	Illo quos qui reiciendis eaque rem maiores debitis. Rem cupiditate voluptatibus temporibus aut et. Ut quas et rem delectus id.	1-463-638-8986	iohara@kreiger.com	40	2021-10-15 18:13:06	2021-10-15 18:13:06
37	Schuster, Carter and Emmerich	https://ui-avatars.com/api/?background=random	Voluptas quasi beatae ut at qui. Cupiditate odio minus sint nulla accusantium magnam. Nemo cumque consectetur soluta ratione. Veniam velit qui et sed sunt ab.	(534) 464-0774	isabell.kling@mcglynn.info	28	2021-10-15 18:13:06	2021-10-15 18:13:06
38	Lesch, Runte and Heller	https://ui-avatars.com/api/?background=random	Recusandae voluptatem aliquam ipsum quibusdam est quasi voluptatem. In reprehenderit iusto in enim aut temporibus deserunt. Consectetur omnis fugit at et. Delectus beatae molestias enim voluptatum iusto. Sunt consequuntur dignissimos sunt iusto.	+1 (347) 540-9831	virgie46@yahoo.com	3	2021-10-15 18:13:06	2021-10-15 18:13:06
39	Stokes, Cremin and Raynor	https://ui-avatars.com/api/?background=random	Dolores dignissimos blanditiis sunt mollitia ullam aliquam nisi. Non modi id adipisci in itaque quod. Repellat corporis recusandae in quia qui veniam.	+1.302.569.7313	qquigley@gmail.com	33	2021-10-15 18:13:06	2021-10-15 18:13:06
40	Larkin, Kilback and Mayer	https://ui-avatars.com/api/?background=random	Est fuga id officiis aut beatae et incidunt. Recusandae voluptatem quod dolores dolor. Dolorum eos nisi libero eaque facilis. Fuga quia et doloribus. Optio excepturi accusamus asperiores.	+1.351.865.5385	vdooley@torp.com	28	2021-10-15 18:13:06	2021-10-15 18:13:06
41	Ferry, Nicolas and Davis	https://ui-avatars.com/api/?background=random	Omnis saepe placeat rerum itaque culpa omnis. Consequatur eum ut blanditiis maiores.	(405) 350-9679	dakota86@yahoo.com	14	2021-10-15 18:13:06	2021-10-15 18:13:06
42	Stroman-Bergnaum	https://ui-avatars.com/api/?background=random	Est impedit iste et soluta. Ipsam corrupti error ea earum quod qui nisi. Aut et alias omnis vero doloremque. Reprehenderit molestias voluptates facilis architecto.	+13608318368	jheidenreich@hotmail.com	40	2021-10-15 18:13:06	2021-10-15 18:13:06
43	Ferry, Wyman and Marquardt	https://ui-avatars.com/api/?background=random	Sunt voluptatem labore repellat ut beatae. Voluptatem dolor magni saepe rerum occaecati harum et. Esse praesentium maxime saepe blanditiis eum deleniti aut.	740.656.4730	hudson.danika@gmail.com	4	2021-10-15 18:13:06	2021-10-15 18:13:06
44	Donnelly and Sons	https://ui-avatars.com/api/?background=random	Dolor et in harum dolore delectus quas amet. Quae necessitatibus magnam fuga in. Ut ut minus quia vel excepturi.	559.870.5479	christiansen.shyanne@rutherford.net	21	2021-10-15 18:13:06	2021-10-15 18:13:06
45	Donnelly-Hermann	https://ui-avatars.com/api/?background=random	Reiciendis et ullam cumque dolorum autem. Nisi voluptatem ea sint facilis. Perspiciatis omnis expedita labore ea quod qui.	480-692-0069	armand.rau@gmail.com	13	2021-10-15 18:13:06	2021-10-15 18:13:06
46	Goodwin-Heidenreich	https://ui-avatars.com/api/?background=random	Explicabo in est perspiciatis hic dolor sed qui. Quas nam blanditiis at corporis consequatur qui. Et debitis aut et error eaque qui incidunt et.	(803) 319-8075	gbreitenberg@morissette.org	6	2021-10-15 18:13:06	2021-10-15 18:13:06
47	O'Keefe, Osinski and Hoeger	https://ui-avatars.com/api/?background=random	Vitae laboriosam neque eius similique et. Sunt placeat laudantium eos quia consequuntur.	+1-678-856-3381	june56@metz.com	2	2021-10-15 18:13:06	2021-10-15 18:13:06
48	McGlynn-Braun	https://ui-avatars.com/api/?background=random	Corrupti similique officia autem architecto beatae. Assumenda adipisci repellat voluptas. Ratione dicta ipsum occaecati eius autem qui ipsa qui. Non consequatur et amet nobis.	+1.802.625.5773	kgleason@yahoo.com	4	2021-10-15 18:13:06	2021-10-15 18:13:06
49	Schumm LLC	https://ui-avatars.com/api/?background=random	Nulla quidem cupiditate ex sunt sint. Corporis architecto ipsam dolore non. Iusto et quis accusamus occaecati earum. Sit et autem distinctio odio illo ducimus impedit.	985-478-9191	oreilly.walton@hotmail.com	17	2021-10-15 18:13:06	2021-10-15 18:13:06
50	Doyle Ltd	https://ui-avatars.com/api/?background=random	Quam quae laudantium reprehenderit omnis vitae consequatur sed recusandae. Itaque fugiat dolorem possimus porro. Consequatur quis aut laboriosam vero a.	+1-917-643-2138	ottis60@gmail.com	3	2021-10-15 18:13:06	2021-10-15 18:13:06
51	Yost Ltd	https://ui-avatars.com/api/?background=random	Accusamus odit reprehenderit occaecati sit tenetur distinctio officiis expedita. Occaecati provident et quos quibusdam accusantium laudantium vel qui. Omnis eos aut molestiae a.	+1 (607) 582-9949	rice.alena@hotmail.com	4	2021-10-15 18:13:06	2021-10-15 18:13:06
52	Powlowski, Murray and Moen	https://ui-avatars.com/api/?background=random	Quis ut quas aut possimus debitis alias harum quo. Sed nihil qui consequatur magnam dolorem voluptate eaque. Reiciendis nesciunt iure quia quibusdam autem corporis.	938-833-7539	seamus.murazik@von.net	7	2021-10-15 18:13:06	2021-10-15 18:13:06
53	Tillman, Schaefer and Weissnat	https://ui-avatars.com/api/?background=random	Dolor corporis enim eos odit. Et facilis adipisci sapiente et aperiam incidunt expedita. Ipsa dolores dolore fugiat quidem qui enim ea. Sit sint sed sed molestiae quis non quisquam.	(415) 471-9062	reagan.reichel@hotmail.com	34	2021-10-15 18:13:06	2021-10-15 18:13:06
54	Harber Ltd	https://ui-avatars.com/api/?background=random	Nesciunt qui placeat et possimus. Quam doloremque molestiae pariatur enim beatae. Alias itaque quia iure. Aut eum laudantium quia fuga ullam sint voluptas. Doloribus nostrum voluptas eum maxime.	1-224-313-0349	yoshiko.sanford@hotmail.com	21	2021-10-15 18:13:06	2021-10-15 18:13:06
55	McLaughlin, Hoppe and Ledner	https://ui-avatars.com/api/?background=random	Quidem molestias corporis eius ea. Praesentium aut a enim et pariatur rerum excepturi. Ullam qui voluptatem ut et rem. Optio vero sunt et ducimus id sit. Ut velit sit iusto id iure exercitationem.	1-938-402-1243	rfisher@hotmail.com	23	2021-10-15 18:13:06	2021-10-15 18:13:06
56	Mertz-Murazik	https://ui-avatars.com/api/?background=random	Odit excepturi sed qui voluptatibus dolorem praesentium dicta minima. Minima quia corrupti libero sunt atque sint quia. Quo accusantium ut rerum nemo iusto ut.	989-491-0672	kub.kari@yahoo.com	39	2021-10-15 18:13:06	2021-10-15 18:13:06
57	Schroeder-Wisoky	https://ui-avatars.com/api/?background=random	Ut quia vitae autem recusandae id. Quasi officia sint distinctio similique. Minus labore ducimus et sed sint.	828.823.2834	marguerite.jaskolski@hotmail.com	21	2021-10-15 18:13:06	2021-10-15 18:13:06
58	Nader-White	https://ui-avatars.com/api/?background=random	In dolor iure numquam eos alias laudantium. Odio nobis animi odit. Ab quos doloribus quos iure.	1-234-902-0471	pouros.jamarcus@homenick.net	21	2021-10-15 18:13:06	2021-10-15 18:13:06
59	Jenkins-Nienow	https://ui-avatars.com/api/?background=random	Dolorem voluptatibus veniam qui quia ipsum aut. Asperiores facilis omnis dolor id ut velit. Ea voluptatem repellendus voluptas est.	(623) 326-1843	ymcdermott@gmail.com	17	2021-10-15 18:13:06	2021-10-15 18:13:06
60	Padberg Group	https://ui-avatars.com/api/?background=random	Dolore itaque non quaerat distinctio. Ad et facere nisi. Eaque et illo in cum officiis ut consequatur. Pariatur iusto qui et quo voluptatem non unde.	949-783-6389	bcremin@stanton.com	12	2021-10-15 18:13:06	2021-10-15 18:13:06
61	Moen Group	https://ui-avatars.com/api/?background=random	Qui ea dolorem maxime repudiandae id. Dignissimos blanditiis explicabo consequatur neque eaque. Ea voluptatibus quibusdam commodi praesentium. Tempore ut temporibus dolores sit quam reprehenderit.	334.942.4474	joana61@gmail.com	28	2021-10-15 18:13:06	2021-10-15 18:13:06
62	Lemke Ltd	https://ui-avatars.com/api/?background=random	Iusto officia in sapiente exercitationem in. Quo vero ut voluptatem labore minima. Perferendis voluptatem commodi sunt eos et quis. Occaecati odit aut sint quia.	+17869091921	blake25@hotmail.com	9	2021-10-15 18:13:06	2021-10-15 18:13:06
63	McClure, Reichert and Hermiston	https://ui-avatars.com/api/?background=random	Dolorem qui in sint officia nobis. Quibusdam molestiae sit nostrum.	+1.239.202.0580	itzel67@gmail.com	26	2021-10-15 18:13:06	2021-10-15 18:13:06
64	Anderson Group	https://ui-avatars.com/api/?background=random	Incidunt non dolorum non sint. Quisquam veritatis excepturi sequi. Cum nihil tenetur ullam blanditiis laboriosam quaerat.	928.579.4706	bhahn@gmail.com	20	2021-10-15 18:13:06	2021-10-15 18:13:06
65	Quigley-Farrell	https://ui-avatars.com/api/?background=random	Incidunt modi aliquid labore nemo. Illo rerum ad culpa qui consectetur saepe. Placeat totam sunt ipsum sed non. Non ex et assumenda similique officia cum.	1-657-488-4327	ardella74@rodriguez.com	10	2021-10-15 18:13:06	2021-10-15 18:13:06
66	Greenholt-Grimes	https://ui-avatars.com/api/?background=random	Praesentium perspiciatis sunt fuga aut qui dolorum et. Eaque amet reiciendis natus hic occaecati. Qui dolor praesentium voluptatem dolores mollitia rerum.	+1 (956) 786-9877	una70@hotmail.com	37	2021-10-15 18:13:06	2021-10-15 18:13:06
67	Adams, Wolf and Pouros	https://ui-avatars.com/api/?background=random	Quis velit in illum quia pariatur mollitia. Delectus aut qui odit deleniti et consequatur. Culpa reprehenderit delectus omnis rerum.	828-607-2126	reilly06@yahoo.com	20	2021-10-15 18:13:06	2021-10-15 18:13:06
68	Fadel, Hansen and Gleason	https://ui-avatars.com/api/?background=random	Sit voluptates repellat natus ex. Officia minima ut cum ratione molestiae qui placeat. Nostrum in voluptas pariatur nulla temporibus.	(260) 949-8967	murray.chaz@gibson.com	17	2021-10-15 18:13:06	2021-10-15 18:13:06
69	Powlowski-Brekke	https://ui-avatars.com/api/?background=random	Praesentium enim est quisquam quidem minus dolorum dolorem. Dignissimos neque facere ducimus necessitatibus sed distinctio blanditiis. Rerum nisi tempora omnis occaecati.	757.671.6186	lysanne.mccullough@stokes.net	27	2021-10-15 18:13:06	2021-10-15 18:13:06
70	Schinner, Nitzsche and Crona	https://ui-avatars.com/api/?background=random	Doloribus tempore odit pariatur dolorem sequi et. Occaecati architecto et officia voluptatem. Dolorem fugit quia fugit laboriosam. Maxime voluptas doloremque hic occaecati incidunt eaque nihil et.	+19078369357	jamarcus.swift@waters.com	13	2021-10-15 18:13:06	2021-10-15 18:13:06
71	Gusikowski, Stanton and Reinger	https://ui-avatars.com/api/?background=random	Consequatur neque totam architecto error non. Laborum a corrupti sed velit. Nesciunt veniam incidunt similique quaerat atque odit ipsum.	(203) 628-5233	ohansen@yahoo.com	30	2021-10-15 18:13:06	2021-10-15 18:13:06
72	Weissnat LLC	https://ui-avatars.com/api/?background=random	Tenetur fugiat eius quos aut et officiis. Voluptas et numquam officia aperiam quae. Quia dolor ab dolor quo voluptate deserunt autem.	(929) 446-8363	ehessel@wunsch.com	25	2021-10-15 18:13:06	2021-10-15 18:13:06
73	Kirlin, Schuppe and Fay	https://ui-avatars.com/api/?background=random	Qui maiores et voluptatem et fugiat numquam facilis a. Sed quibusdam optio commodi commodi voluptas dolor fugiat dolor. Temporibus sed praesentium beatae corrupti.	838-418-5694	tgreenfelder@yahoo.com	12	2021-10-15 18:13:06	2021-10-15 18:13:06
74	Sanford and Sons	https://ui-avatars.com/api/?background=random	Est consequatur dolores error quos qui. Nesciunt dolorem quia itaque nam exercitationem quasi eligendi rerum. Ullam vel qui et ut inventore sint molestiae. Dolores ea earum assumenda nemo placeat labore magni. Quia quasi ut totam.	307.248.2129	stroman.elmer@hotmail.com	4	2021-10-15 18:13:06	2021-10-15 18:13:06
105	Hi cnfectioaries	https://ui-avatars.com/api/?background=random	long description	2547684746	aol@example.com	47	2021-12-24 11:35:34	2021-12-24 11:35:34
75	Runolfsdottir, Windler and Nader	https://ui-avatars.com/api/?background=random	Fugit sed dolor itaque repellendus repellat officiis. At est dolor adipisci sit consequatur odit. Earum accusantium nesciunt quia placeat accusamus alias deserunt architecto. Repellendus qui ea unde eligendi aut accusamus. Autem distinctio impedit voluptate officiis asperiores similique blanditiis sint.	865-251-7498	okshlerin@yahoo.com	1	2021-10-15 18:13:06	2021-10-15 18:13:06
76	Ullrich, Pagac and Prosacco	https://ui-avatars.com/api/?background=random	Omnis ut excepturi voluptatem unde. Nobis aut fuga ratione ut aperiam pariatur omnis. Nihil labore assumenda porro aspernatur.	352.321.9699	senger.iva@shanahan.com	21	2021-10-15 18:13:06	2021-10-15 18:13:06
77	Denesik, Dare and Schumm	https://ui-avatars.com/api/?background=random	Natus unde ex necessitatibus temporibus. Voluptatum fuga sit et blanditiis ullam. Eum rerum quia sapiente natus incidunt. Sapiente et commodi commodi est omnis.	+1-925-871-8041	dcole@hotmail.com	39	2021-10-15 18:13:06	2021-10-15 18:13:06
78	Erdman-Krajcik	https://ui-avatars.com/api/?background=random	Occaecati odio ipsum omnis autem est. Neque et repellendus quibusdam et rem eaque aliquam. Impedit et enim et qui porro recusandae aut voluptate. Omnis earum quaerat minus voluptatem et nam.	+1-463-660-6335	shields.letitia@gmail.com	31	2021-10-15 18:13:06	2021-10-15 18:13:06
79	Kuphal, Becker and Vandervort	https://ui-avatars.com/api/?background=random	Distinctio et ad qui dolor ut qui debitis. Eos rerum nulla pariatur praesentium libero deserunt et eveniet. Qui est iusto amet nobis repellat.	847.999.6080	rowe.cathy@gmail.com	32	2021-10-15 18:13:06	2021-10-15 18:13:06
80	Bode, Sauer and Sanford	https://ui-avatars.com/api/?background=random	Mollitia possimus sed voluptatibus aut voluptatem illum. Culpa omnis et dolor molestiae nobis.	+1.559.334.1908	mschinner@marvin.com	13	2021-10-15 18:13:06	2021-10-15 18:13:06
81	Bergstrom PLC	https://ui-avatars.com/api/?background=random	Placeat eius quia voluptatem deleniti consequatur maxime voluptatum. Repellendus et ex quis iste sit nam accusamus adipisci. Quia distinctio voluptas voluptas consectetur dolor. Odit temporibus rerum doloribus dicta.	661.707.5331	mhaag@hotmail.com	28	2021-10-15 18:13:07	2021-10-15 18:13:07
82	Walker Ltd	https://ui-avatars.com/api/?background=random	Odio culpa odio voluptate error earum ad. Quasi accusamus quae aspernatur voluptatem aperiam officia. Corporis voluptatem et et a.	364-847-5160	kaylin74@gmail.com	15	2021-10-15 18:13:07	2021-10-15 18:13:07
83	Smith Group	https://ui-avatars.com/api/?background=random	Eius mollitia totam odit quasi suscipit. Illo voluptatem quia provident ab officia corrupti nisi. Modi vitae delectus labore et illo ut totam. Ut numquam omnis ducimus aperiam magnam.	423.458.9124	noel19@hotmail.com	32	2021-10-15 18:13:07	2021-10-15 18:13:07
84	Mohr, Cummings and Ruecker	https://ui-avatars.com/api/?background=random	Amet quia maiores illum eaque doloremque. Neque molestiae asperiores nisi necessitatibus minus laboriosam reprehenderit. Cupiditate aut facilis et quod ut.	+1-615-950-3586	nicholas.ruecker@waelchi.com	34	2021-10-15 18:13:07	2021-10-15 18:13:07
85	Klein-Cremin	https://ui-avatars.com/api/?background=random	Sint et ut maiores beatae. Et delectus eos molestias consectetur voluptas ullam. Asperiores est iste vitae eum laborum asperiores quaerat.	1-617-836-9374	dietrich.spencer@hotmail.com	7	2021-10-15 18:13:07	2021-10-15 18:13:07
86	Hartmann-Toy	https://ui-avatars.com/api/?background=random	Dolor ut voluptatem rerum laboriosam iste. Rerum sed sed dolorem soluta amet consequatur quod.	240-618-4389	feeney.angus@runte.org	37	2021-10-15 18:13:07	2021-10-15 18:13:07
87	Little-Collier	https://ui-avatars.com/api/?background=random	Nulla nobis quo sit voluptatibus consequatur porro quis. Excepturi consectetur rerum et perspiciatis voluptas. Repudiandae esse sit beatae distinctio corporis voluptatem et.	570-416-9267	toy.pascale@yahoo.com	37	2021-10-15 18:13:07	2021-10-15 18:13:07
88	Bartoletti Ltd	https://ui-avatars.com/api/?background=random	Autem quod in omnis alias ut. Velit nisi optio culpa qui. Non et quia aut. Et molestiae quia in laboriosam.	878-705-2318	lauriane.zemlak@yahoo.com	26	2021-10-15 18:13:07	2021-10-15 18:13:07
89	Grimes-Littel	https://ui-avatars.com/api/?background=random	Unde saepe magni nihil quae nesciunt aliquid sint. Suscipit corrupti id a sit molestiae. Aut voluptates quasi itaque velit aspernatur et iure.	(347) 920-1650	fadel.mason@mckenzie.org	7	2021-10-15 18:13:07	2021-10-15 18:13:07
90	Gusikowski, Terry and Ankunding	https://ui-avatars.com/api/?background=random	Qui illo inventore quo perspiciatis. Tempore nesciunt unde non. Sed et sunt vel qui est alias.	(843) 288-0550	gislason.margarett@hotmail.com	22	2021-10-15 18:13:07	2021-10-15 18:13:07
91	Barton-Ward	https://ui-avatars.com/api/?background=random	Ipsum mollitia expedita sequi itaque repudiandae vitae omnis. Fugit rerum aut aspernatur dicta voluptatem. Laboriosam esse rem omnis vel est necessitatibus in. Quia ipsum nemo sapiente.	+13469215224	chester.toy@eichmann.com	2	2021-10-15 18:13:07	2021-10-15 18:13:07
92	Schinner, Huel and Dickinson	https://ui-avatars.com/api/?background=random	Corrupti nihil ut temporibus ipsum et ut. Voluptates eum velit corporis sequi deserunt.	870.965.8207	bashirian.shanie@yahoo.com	16	2021-10-15 18:13:07	2021-10-15 18:13:07
93	Runolfsson, Harvey and Hill	https://ui-avatars.com/api/?background=random	Inventore sequi et sed aliquid quia suscipit. Voluptatibus sit voluptatem error magni iusto nihil. Quasi asperiores eius impedit quod. Non ullam voluptatem fugiat ex.	1-307-834-1190	lynn.towne@hotmail.com	19	2021-10-15 18:13:07	2021-10-15 18:13:07
94	Raynor Inc	https://ui-avatars.com/api/?background=random	Vitae perferendis animi animi eos ut enim. Voluptas est sit velit ut magni unde. Eos expedita nam pariatur nobis repudiandae. Hic nobis voluptatem et sunt quas.	(385) 272-1486	cruickshank.pinkie@goodwin.biz	10	2021-10-15 18:13:07	2021-10-15 18:13:07
95	Bechtelar, Pacocha and Schulist	https://ui-avatars.com/api/?background=random	Maiores sit nam et impedit. Autem consequatur aut illo eveniet amet aut. Dignissimos dolorum repudiandae hic fuga.	(540) 278-8510	koch.kiley@yahoo.com	20	2021-10-15 18:13:07	2021-10-15 18:13:07
96	Ratke, Hickle and Franecki	https://ui-avatars.com/api/?background=random	Velit deserunt et ab qui repudiandae aut quidem. Quis sequi et qui quia voluptatem error.	+1 (507) 643-0000	harvey.krista@mayer.com	2	2021-10-15 18:13:07	2021-10-15 18:13:07
97	Halvorson, Homenick and Keeling	https://ui-avatars.com/api/?background=random	Quia debitis nostrum quo harum ratione beatae. In error quisquam repudiandae voluptatem modi qui et. Sapiente quo deserunt ut iure occaecati deserunt.	801.468.4445	pstamm@spinka.org	37	2021-10-15 18:13:07	2021-10-15 18:13:07
98	Roob LLC	https://ui-avatars.com/api/?background=random	Voluptas dolores aut et nobis eum voluptas voluptatum. Quaerat culpa odit repellat repellendus nemo aut. Enim deleniti sit est dolores eveniet aut.	+1-850-815-4724	nboyer@herzog.info	24	2021-10-15 18:13:07	2021-10-15 18:13:07
99	Grady, Will and Bradtke	https://ui-avatars.com/api/?background=random	Eum quae ut eum quam. Rerum atque est repudiandae quas. Temporibus quaerat facilis consequatur laborum ut minima.	+17606000379	gerard.hane@gmail.com	6	2021-10-15 18:13:07	2021-10-15 18:13:07
100	Morar Ltd	https://ui-avatars.com/api/?background=random	Vel vero quia at dignissimos. Non ab praesentium libero earum harum. Placeat repellat expedita enim suscipit. Aut quam corrupti qui ut voluptatum.	283-444-0917	ucruickshank@boyle.biz	36	2021-10-15 18:13:07	2021-10-15 18:13:07
\.


--
-- TOC entry 3377 (class 0 OID 34644)
-- Dependencies: 226
-- Data for Name: supplier_items; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.supplier_items (id, "unitsAvailable", "supplyAt", supplier_id, product_id, created_at, updated_at) FROM stdin;
1	290	0.05	4	22	2021-10-15 18:13:10	2021-10-15 18:13:10
2	715	50914579.74	22	90	2021-10-15 18:13:10	2021-10-15 18:13:10
3	307	1.59	22	29	2021-10-15 18:13:11	2021-10-15 18:13:11
4	698	2292.74	7	69	2021-10-15 18:13:11	2021-10-15 18:13:11
5	931	21.48	22	78	2021-10-15 18:13:11	2021-10-15 18:13:11
6	568	0.08	30	23	2021-10-15 18:13:11	2021-10-15 18:13:11
7	640	7.26	39	97	2021-10-15 18:13:11	2021-10-15 18:13:11
8	935	39961488.56	5	34	2021-10-15 18:13:11	2021-10-15 18:13:11
9	267	163.61	21	99	2021-10-15 18:13:11	2021-10-15 18:13:11
10	645	779626.73	4	4	2021-10-15 18:13:11	2021-10-15 18:13:11
11	322	3907.92	7	20	2021-10-15 18:13:11	2021-10-15 18:13:11
12	685	771342910.01	33	13	2021-10-15 18:13:11	2021-10-15 18:13:11
13	689	7009.78	7	94	2021-10-15 18:13:11	2021-10-15 18:13:11
14	361	242614.44	16	100	2021-10-15 18:13:11	2021-10-15 18:13:11
15	825	331327201.75	26	48	2021-10-15 18:13:11	2021-10-15 18:13:11
16	477	492986.51	11	6	2021-10-15 18:13:11	2021-10-15 18:13:11
17	371	1421906.31	14	53	2021-10-15 18:13:11	2021-10-15 18:13:11
18	373	206.37	31	75	2021-10-15 18:13:11	2021-10-15 18:13:11
19	822	3745573.88	23	71	2021-10-15 18:13:11	2021-10-15 18:13:11
20	864	373.83	8	8	2021-10-15 18:13:11	2021-10-15 18:13:11
21	836	13753.68	21	34	2021-10-15 18:13:11	2021-10-15 18:13:11
22	890	107937364.07	13	9	2021-10-15 18:13:11	2021-10-15 18:13:11
23	454	2.87	21	25	2021-10-15 18:13:11	2021-10-15 18:13:11
24	948	1543	15	35	2021-10-15 18:13:11	2021-10-15 18:13:11
25	851	33114082.31	23	21	2021-10-15 18:13:11	2021-10-15 18:13:11
26	369	3832.9	35	54	2021-10-15 18:13:11	2021-10-15 18:13:11
27	347	1.2	32	3	2021-10-15 18:13:11	2021-10-15 18:13:11
28	545	6564299.36	25	30	2021-10-15 18:13:11	2021-10-15 18:13:11
29	337	22041.7	17	66	2021-10-15 18:13:11	2021-10-15 18:13:11
30	117	13.93	13	35	2021-10-15 18:13:11	2021-10-15 18:13:11
31	799	1401984.91	12	50	2021-10-15 18:13:11	2021-10-15 18:13:11
32	304	700.91	34	42	2021-10-15 18:13:11	2021-10-15 18:13:11
33	689	15023.06	29	99	2021-10-15 18:13:11	2021-10-15 18:13:11
34	546	6.76	11	53	2021-10-15 18:13:11	2021-10-15 18:13:11
35	121	5403803.07	11	59	2021-10-15 18:13:11	2021-10-15 18:13:11
36	1000	1.76	23	55	2021-10-15 18:13:11	2021-10-15 18:13:11
37	733	7341233.34	31	95	2021-10-15 18:13:11	2021-10-15 18:13:11
38	609	433859878.98	17	51	2021-10-15 18:13:11	2021-10-15 18:13:11
39	273	0.54	39	72	2021-10-15 18:13:11	2021-10-15 18:13:11
40	274	2713.5	31	52	2021-10-15 18:13:11	2021-10-15 18:13:11
41	808	760628.68	9	4	2021-10-15 18:13:11	2021-10-15 18:13:11
42	820	22.8	38	74	2021-10-15 18:13:11	2021-10-15 18:13:11
43	472	3.1	19	2	2021-10-15 18:13:11	2021-10-15 18:13:11
44	906	0.12	40	8	2021-10-15 18:13:11	2021-10-15 18:13:11
45	241	206314041.82	29	40	2021-10-15 18:13:11	2021-10-15 18:13:11
46	972	6770781.82	18	4	2021-10-15 18:13:11	2021-10-15 18:13:11
47	332	3763273.57	5	37	2021-10-15 18:13:11	2021-10-15 18:13:11
48	710	49322870.86	27	9	2021-10-15 18:13:11	2021-10-15 18:13:11
49	161	3543.07	1	38	2021-10-15 18:13:11	2021-10-15 18:13:11
50	153	411.82	3	49	2021-10-15 18:13:11	2021-10-15 18:13:11
51	950	24509662.24	37	94	2021-10-15 18:13:11	2021-10-15 18:13:11
52	799	0.26	9	21	2021-10-15 18:13:11	2021-10-15 18:13:11
53	568	5.68	2	78	2021-10-15 18:13:11	2021-10-15 18:13:11
54	115	566079892.93	20	64	2021-10-15 18:13:11	2021-10-15 18:13:11
55	917	591.02	21	91	2021-10-15 18:13:11	2021-10-15 18:13:11
56	721	47.06	25	64	2021-10-15 18:13:11	2021-10-15 18:13:11
57	950	13475589.88	32	18	2021-10-15 18:13:11	2021-10-15 18:13:11
58	192	3891.04	2	70	2021-10-15 18:13:11	2021-10-15 18:13:11
59	164	537728.08	15	80	2021-10-15 18:13:11	2021-10-15 18:13:11
60	436	0	27	86	2021-10-15 18:13:11	2021-10-15 18:13:11
61	927	104346102.65	2	88	2021-10-15 18:13:11	2021-10-15 18:13:11
62	339	46230.53	14	76	2021-10-15 18:13:11	2021-10-15 18:13:11
63	505	599134.42	28	50	2021-10-15 18:13:11	2021-10-15 18:13:11
64	227	19365602.33	1	10	2021-10-15 18:13:11	2021-10-15 18:13:11
65	237	0.8	26	16	2021-10-15 18:13:11	2021-10-15 18:13:11
66	526	8168.17	20	9	2021-10-15 18:13:11	2021-10-15 18:13:11
67	967	4895.15	12	63	2021-10-15 18:13:11	2021-10-15 18:13:11
68	287	890.69	23	17	2021-10-15 18:13:11	2021-10-15 18:13:11
69	679	5.13	16	54	2021-10-15 18:13:11	2021-10-15 18:13:11
70	448	85.27	10	99	2021-10-15 18:13:12	2021-10-15 18:13:12
71	141	33.53	6	78	2021-10-15 18:13:12	2021-10-15 18:13:12
72	748	2037053.17	30	33	2021-10-15 18:13:12	2021-10-15 18:13:12
73	928	7345962.58	23	75	2021-10-15 18:13:12	2021-10-15 18:13:12
74	567	24.32	19	2	2021-10-15 18:13:12	2021-10-15 18:13:12
75	550	12181.63	36	3	2021-10-15 18:13:12	2021-10-15 18:13:12
76	348	17.36	39	36	2021-10-15 18:13:12	2021-10-15 18:13:12
77	521	0.95	6	73	2021-10-15 18:13:12	2021-10-15 18:13:12
78	256	2737580.88	8	54	2021-10-15 18:13:12	2021-10-15 18:13:12
79	777	102567992.72	25	62	2021-10-15 18:13:12	2021-10-15 18:13:12
80	363	705275468.68	22	16	2021-10-15 18:13:12	2021-10-15 18:13:12
81	723	722.73	23	82	2021-10-15 18:13:12	2021-10-15 18:13:12
82	919	2705.96	18	77	2021-10-15 18:13:12	2021-10-15 18:13:12
83	568	2874795.07	30	4	2021-10-15 18:13:12	2021-10-15 18:13:12
84	593	754039.62	31	43	2021-10-15 18:13:12	2021-10-15 18:13:12
85	977	803.73	4	54	2021-10-15 18:13:12	2021-10-15 18:13:12
86	970	1589.45	38	39	2021-10-15 18:13:12	2021-10-15 18:13:12
87	338	226.44	28	98	2021-10-15 18:13:12	2021-10-15 18:13:12
88	618	4.26	29	71	2021-10-15 18:13:12	2021-10-15 18:13:12
89	731	146878.94	19	18	2021-10-15 18:13:12	2021-10-15 18:13:12
90	419	11029225.49	16	38	2021-10-15 18:13:12	2021-10-15 18:13:12
91	545	0	1	21	2021-10-15 18:13:12	2021-10-15 18:13:12
92	479	48.28	13	65	2021-10-15 18:13:12	2021-10-15 18:13:12
93	634	12.54	38	11	2021-10-15 18:13:12	2021-10-15 18:13:12
94	323	243168.37	10	6	2021-10-15 18:13:12	2021-10-15 18:13:12
95	892	60752.46	10	26	2021-10-15 18:13:12	2021-10-15 18:13:12
96	826	677984775.01	8	88	2021-10-15 18:13:12	2021-10-15 18:13:12
97	618	278954.24	40	18	2021-10-15 18:13:12	2021-10-15 18:13:12
98	563	21.36	24	38	2021-10-15 18:13:12	2021-10-15 18:13:12
99	884	422.63	21	14	2021-10-15 18:13:12	2021-10-15 18:13:12
100	578	1105908.48	40	42	2021-10-15 18:13:12	2021-10-15 18:13:12
101	100	356	3	4	2021-10-20 06:55:46	2021-10-20 06:55:46
102	100	356	3	6	2021-10-20 06:55:55	2021-10-20 06:55:55
\.


--
-- TOC entry 3365 (class 0 OID 34557)
-- Dependencies: 214
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.suppliers (id, created_at, updated_at, name, "photoUrl", user_id) FROM stdin;
1	2021-10-15 18:12:58	2021-10-15 18:12:58	Cyril	https://ui-avatars.com/api/?background=random	14
2	2021-10-15 18:12:58	2021-10-15 18:12:58	Aylin	https://ui-avatars.com/api/?background=random	98
3	2021-10-15 18:12:58	2021-10-15 18:12:58	Willow	https://ui-avatars.com/api/?background=random	20
4	2021-10-15 18:12:58	2021-10-15 18:12:58	Abbie	https://ui-avatars.com/api/?background=random	54
5	2021-10-15 18:12:58	2021-10-15 18:12:58	Gretchen	https://ui-avatars.com/api/?background=random	82
6	2021-10-15 18:12:58	2021-10-15 18:12:58	Yvette	https://ui-avatars.com/api/?background=random	70
7	2021-10-15 18:12:58	2021-10-15 18:12:58	Adam	https://ui-avatars.com/api/?background=random	12
8	2021-10-15 18:12:58	2021-10-15 18:12:58	Mattie	https://ui-avatars.com/api/?background=random	28
9	2021-10-15 18:12:58	2021-10-15 18:12:58	Beaulah	https://ui-avatars.com/api/?background=random	92
10	2021-10-15 18:12:58	2021-10-15 18:12:58	Jared	https://ui-avatars.com/api/?background=random	13
11	2021-10-15 18:12:58	2021-10-15 18:12:58	Andy	https://ui-avatars.com/api/?background=random	6
12	2021-10-15 18:12:58	2021-10-15 18:12:58	Francisca	https://ui-avatars.com/api/?background=random	27
13	2021-10-15 18:12:58	2021-10-15 18:12:58	Kirsten	https://ui-avatars.com/api/?background=random	41
14	2021-10-15 18:12:58	2021-10-15 18:12:58	Tania	https://ui-avatars.com/api/?background=random	79
15	2021-10-15 18:12:58	2021-10-15 18:12:58	Birdie	https://ui-avatars.com/api/?background=random	99
16	2021-10-15 18:12:58	2021-10-15 18:12:58	Georgianna	https://ui-avatars.com/api/?background=random	36
17	2021-10-15 18:12:58	2021-10-15 18:12:58	Mylene	https://ui-avatars.com/api/?background=random	74
18	2021-10-15 18:12:58	2021-10-15 18:12:58	Ella	https://ui-avatars.com/api/?background=random	30
19	2021-10-15 18:12:58	2021-10-15 18:12:58	Juliet	https://ui-avatars.com/api/?background=random	59
20	2021-10-15 18:12:58	2021-10-15 18:12:58	Gay	https://ui-avatars.com/api/?background=random	35
21	2021-10-15 18:12:58	2021-10-15 18:12:58	Abdul	https://ui-avatars.com/api/?background=random	10
22	2021-10-15 18:12:58	2021-10-15 18:12:58	Dane	https://ui-avatars.com/api/?background=random	96
23	2021-10-15 18:12:58	2021-10-15 18:12:58	Madonna	https://ui-avatars.com/api/?background=random	24
24	2021-10-15 18:12:58	2021-10-15 18:12:58	Lempi	https://ui-avatars.com/api/?background=random	67
25	2021-10-15 18:12:58	2021-10-15 18:12:58	Rubye	https://ui-avatars.com/api/?background=random	4
26	2021-10-15 18:12:58	2021-10-15 18:12:58	Jamison	https://ui-avatars.com/api/?background=random	76
27	2021-10-15 18:12:58	2021-10-15 18:12:58	Ward	https://ui-avatars.com/api/?background=random	25
28	2021-10-15 18:12:58	2021-10-15 18:12:58	Magali	https://ui-avatars.com/api/?background=random	65
29	2021-10-15 18:12:58	2021-10-15 18:12:58	Ferne	https://ui-avatars.com/api/?background=random	49
30	2021-10-15 18:12:58	2021-10-15 18:12:58	Keshaun	https://ui-avatars.com/api/?background=random	39
31	2021-10-15 18:12:58	2021-10-15 18:12:58	Leonor	https://ui-avatars.com/api/?background=random	63
32	2021-10-15 18:12:58	2021-10-15 18:12:58	Victoria	https://ui-avatars.com/api/?background=random	18
33	2021-10-15 18:12:58	2021-10-15 18:12:58	Chesley	https://ui-avatars.com/api/?background=random	21
34	2021-10-15 18:12:58	2021-10-15 18:12:58	Ezequiel	https://ui-avatars.com/api/?background=random	91
35	2021-10-15 18:12:58	2021-10-15 18:12:58	Freeda	https://ui-avatars.com/api/?background=random	80
36	2021-10-15 18:12:58	2021-10-15 18:12:58	Darrell	https://ui-avatars.com/api/?background=random	29
37	2021-10-15 18:12:58	2021-10-15 18:12:58	Evert	https://ui-avatars.com/api/?background=random	68
38	2021-10-15 18:12:58	2021-10-15 18:12:58	Joshuah	https://ui-avatars.com/api/?background=random	44
39	2021-10-15 18:12:58	2021-10-15 18:12:58	Arthur	https://ui-avatars.com/api/?background=random	83
40	2021-10-15 18:12:58	2021-10-15 18:12:58	Sam	https://ui-avatars.com/api/?background=random	73
41	2021-10-19 12:24:30	2021-10-19 12:24:30	mega wholesalers	https://ui-avatars.com/api/?background=random	5
43	2021-10-19 12:24:55	2021-10-19 12:24:55	mega wholesalers	https://ui-avatars.com/api/?background=random	2
44	2021-10-19 12:25:04	2021-10-19 12:25:04	mega wholesalers	https://ui-avatars.com/api/?background=random	3
47	2021-10-19 12:25:31	2021-10-19 12:25:31	mega wholesalers	https://ui-avatars.com/api/?background=random	22
48	2021-10-19 12:25:52	2021-10-19 12:25:52	mega wholesalers	https://ui-avatars.com/api/?background=random	142
\.


--
-- TOC entry 3389 (class 0 OID 34776)
-- Dependencies: 238
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.transactions (id, amount, comment, shop_id, supplier_id, customer_id, purchase_order_id, sales_order_id, created_at, updated_at, method, ref) FROM stdin;
50	52.26	supplier_refund	17	23	14	59	55	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
52	115158.24	purchase	60	12	37	21	72	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
54	187.03	supplier_refund	25	39	7	53	94	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
56	340870.71	customer_refund	46	6	39	54	67	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
58	636639.89	customer_refund	11	35	18	100	21	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
62	2863.41	purchase	86	14	24	72	91	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
64	2543.78	supplier_refund	87	31	26	76	23	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
66	7429456.37	customer_refund	34	4	28	77	33	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
68	71949.92	sale	1	37	16	33	77	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
70	425374.14	customer_refund	48	1	23	71	87	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
72	2138620.3	supplier_refund	75	38	14	97	18	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
74	709024.73	purchase	6	21	32	47	40	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
76	67373.41	sale	96	34	3	93	11	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
78	1975.35	sale	19	24	1	46	58	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
80	3.65	sale	95	8	25	73	52	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
82	189835441.39	customer_refund	10	1	9	41	15	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
84	851400658.32	customer_refund	91	8	32	94	4	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
51	880372067.03	customer_refund	73	36	40	41	60	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
53	6939378.77	sale	97	23	13	16	29	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
55	6.59	purchase	70	25	34	45	9	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
57	71.2	customer_refund	28	24	33	11	9	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
59	39888.58	customer_refund	28	8	24	18	19	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
61	300168717.02	sale	63	2	20	15	27	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
63	7685.65	sale	86	28	20	99	88	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
65	5346030.09	sale	2	1	34	21	51	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
67	123113.41	customer_refund	82	7	39	50	46	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
69	7057.13	supplier_refund	93	3	12	61	90	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
71	185.8	sale	36	19	27	14	43	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
73	22246853.59	customer_refund	96	30	14	68	35	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
75	26593392.86	purchase	69	26	40	52	6	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
77	583414790.8	customer_refund	9	35	18	58	6	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
79	1900819.1	customer_refund	68	3	34	47	19	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
81	126296585.79	sale	15	6	9	86	87	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
83	348.74	purchase	7	26	4	24	96	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
85	3541.82	purchase	35	38	23	42	96	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
86	1175685.08	purchase	91	13	14	8	1	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
88	261746.38	supplier_refund	29	34	6	38	23	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
90	9729097.16	customer_refund	13	16	5	21	71	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
94	52435728.85	purchase	89	22	18	84	47	2021-10-15 18:17:17	2021-10-15 18:17:17	cash	\N
96	2.88	sale	55	35	8	22	42	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
98	311.39	supplier_refund	52	4	31	53	79	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
100	70844.34	customer_refund	96	22	39	76	21	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
102	1.79	sale	96	11	30	12	71	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
104	249.09	sale	35	17	37	86	77	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
106	4224288.27	purchase	3	17	24	19	99	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
108	138574.84	purchase	60	33	1	91	20	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
110	107.36	sale	20	5	38	54	18	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
112	7.89	purchase	90	32	6	72	66	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
114	79.33	sale	99	23	4	67	88	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
116	0	purchase	30	38	12	29	13	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
118	2056.6	supplier_refund	90	32	4	15	57	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
120	50375.45	supplier_refund	20	18	4	6	74	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
122	3913158.1	supplier_refund	58	6	30	69	61	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
87	18574484.81	supplier_refund	77	10	19	25	45	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
89	223705.77	purchase	40	32	34	25	28	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
91	101578001.19	purchase	49	32	5	13	93	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
93	271456844.91	supplier_refund	55	22	16	45	32	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
95	30.62	purchase	41	22	31	44	62	2021-10-15 18:17:17	2021-10-15 18:17:17	mpesa	\N
97	270.5	purchase	80	33	24	91	80	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
99	1699.2	customer_refund	64	24	31	31	87	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
103	1249.38	purchase	86	8	18	83	60	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
105	544324105.37	sale	52	4	14	93	72	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
107	56.87	sale	83	7	21	91	35	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
109	261607.12	supplier_refund	31	36	37	41	50	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
111	45336.56	supplier_refund	19	7	15	16	72	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
113	3244.31	sale	42	39	21	92	95	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
115	28.79	customer_refund	23	23	3	94	58	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
117	5.05	purchase	16	22	31	31	46	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
119	4620.27	sale	76	10	27	45	93	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
121	54783.66	sale	10	35	14	88	54	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
123	0.04	purchase	85	4	32	10	1	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
125	521067238.33	sale	67	20	7	49	23	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
129	9.78	customer_refund	88	40	33	83	34	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
133	15424.97	supplier_refund	49	38	2	38	94	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
137	19.02	customer_refund	80	2	24	38	43	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
139	21.91	supplier_refund	22	2	23	86	9	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
141	21883611.22	sale	45	13	25	99	49	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
143	19.5	supplier_refund	22	20	9	45	81	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
145	14222615.03	supplier_refund	74	9	12	95	7	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
147	21085905.25	purchase	80	9	1	69	52	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
149	2348221.01	supplier_refund	74	14	10	56	5	2021-10-15 18:17:18	2021-10-15 18:17:18	mpesa	\N
124	425657516.22	customer_refund	37	11	2	92	58	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
126	17.48	supplier_refund	68	3	29	56	34	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
128	8630.31	supplier_refund	64	25	16	60	64	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
130	630772.77	customer_refund	22	1	25	41	28	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
132	10.65	customer_refund	94	7	1	22	81	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
134	432.63	sale	31	19	5	91	21	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
136	28210.42	purchase	36	1	40	19	70	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
138	5.44	sale	33	40	33	12	31	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
140	39069.93	sale	22	11	32	58	54	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
144	241183.71	customer_refund	40	38	24	58	73	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
146	6191287.77	supplier_refund	58	34	4	48	94	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
148	549567483.4	supplier_refund	50	23	30	19	79	2021-10-15 18:17:18	2021-10-15 18:17:18	cash	\N
\.


--
-- TOC entry 3354 (class 0 OID 34475)
-- Dependencies: 203
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: microerp
--

COPY public.users (id, email, phone, email_verified_at, password, api_token, remember_token, created_at, updated_at) FROM stdin;
1	emertz@example.com	(386) 299-2823	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	ahJ8bDzcEk	2021-10-15 18:12:56	2021-10-15 18:12:56
2	lstrosin@example.org	+1-754-268-0136	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	xFvFVAoDK1	2021-10-15 18:12:56	2021-10-15 18:12:56
3	cynthia10@example.com	+14088191704	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	naqrksS5L1	2021-10-15 18:12:56	2021-10-15 18:12:56
4	peter13@example.net	361.844.6412	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	uIoDB4YbmO	2021-10-15 18:12:56	2021-10-15 18:12:56
5	casper07@example.org	928.708.2062	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	5xEoVLOnNP	2021-10-15 18:12:56	2021-10-15 18:12:56
6	pstehr@example.net	774-957-8360	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	XYkA0doZ76	2021-10-15 18:12:56	2021-10-15 18:12:56
7	miracle18@example.org	+1-929-942-3263	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	rgTtBk0HD1	2021-10-15 18:12:56	2021-10-15 18:12:56
8	wolf.baby@example.com	+1 (508) 665-3839	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	pXbZgLLYAz	2021-10-15 18:12:56	2021-10-15 18:12:56
9	aliza41@example.net	+1-458-775-7519	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	YAziNwFb6D	2021-10-15 18:12:56	2021-10-15 18:12:56
10	pinkie.mcclure@example.net	(770) 362-5211	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	Dhla96KZ5m	2021-10-15 18:12:56	2021-10-15 18:12:56
11	hoppe.ransom@example.net	+1.860.509.3911	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	P35dLxnozk	2021-10-15 18:12:56	2021-10-15 18:12:56
12	brandon.fisher@example.com	+12137658934	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	qRzDtBvxvL	2021-10-15 18:12:56	2021-10-15 18:12:56
13	vcollier@example.net	1-689-393-8012	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	fvbrFBQzXW	2021-10-15 18:12:56	2021-10-15 18:12:56
14	annabell.krajcik@example.org	+18205651401	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	Z1USFOvciB	2021-10-15 18:12:56	2021-10-15 18:12:56
15	sigmund.keebler@example.com	+1-863-528-2850	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	dL8FjbICof	2021-10-15 18:12:56	2021-10-15 18:12:56
16	keaton.koss@example.net	1-458-235-5905	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	UMY2Rrdgqj	2021-10-15 18:12:56	2021-10-15 18:12:56
17	nichole88@example.org	804-330-3835	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	r3m52Jty04	2021-10-15 18:12:56	2021-10-15 18:12:56
18	jerel31@example.org	1-364-384-8493	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	D5dWwKlJgx	2021-10-15 18:12:56	2021-10-15 18:12:56
19	kerluke.sheldon@example.net	341-776-0381	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	aqIJJGbCvS	2021-10-15 18:12:56	2021-10-15 18:12:56
20	ratke.tina@example.org	(567) 925-9394	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	ifPm5caxGj	2021-10-15 18:12:56	2021-10-15 18:12:56
21	ena.leffler@example.net	563.835.7233	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	8C1siKBVge	2021-10-15 18:12:56	2021-10-15 18:12:56
22	fgrimes@example.com	+1-928-930-9336	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	t0TBrmzFs8	2021-10-15 18:12:56	2021-10-15 18:12:56
23	dorris.skiles@example.org	+1.239.518.2088	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	cOTJNbuUJq	2021-10-15 18:12:56	2021-10-15 18:12:56
24	collier.pierce@example.org	+1-832-721-4946	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	0lcbRqkpzK	2021-10-15 18:12:56	2021-10-15 18:12:56
25	lionel71@example.net	224.318.6365	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	72L9hRyLXN	2021-10-15 18:12:56	2021-10-15 18:12:56
26	kohler.kevon@example.org	1-469-688-9059	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	CUKAd3HyLH	2021-10-15 18:12:56	2021-10-15 18:12:56
27	lilyan.okeefe@example.com	872.878.5523	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	AY2ceSOeSP	2021-10-15 18:12:56	2021-10-15 18:12:56
28	sheridan38@example.com	657.669.4804	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	S2OuZSjGff	2021-10-15 18:12:56	2021-10-15 18:12:56
29	pgleason@example.com	+1.620.700.3166	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	75vs2wjsYG	2021-10-15 18:12:56	2021-10-15 18:12:56
30	adams.helga@example.net	+1.573.379.7339	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	2RIsXGmLw2	2021-10-15 18:12:56	2021-10-15 18:12:56
31	bailey.keshawn@example.org	1-586-701-3211	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	jBSb3VaeYm	2021-10-15 18:12:56	2021-10-15 18:12:56
32	hamill.else@example.com	737-520-4489	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	mgTYPbLvlM	2021-10-15 18:12:56	2021-10-15 18:12:56
33	ernser.jude@example.org	1-770-675-3910	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	48jbfRy70S	2021-10-15 18:12:56	2021-10-15 18:12:56
34	jovan82@example.org	+1-574-678-5559	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	oYcqykrzP6	2021-10-15 18:12:56	2021-10-15 18:12:56
35	ryder86@example.net	458.573.8215	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	He2ipVjsOL	2021-10-15 18:12:56	2021-10-15 18:12:56
36	waufderhar@example.org	+18435075295	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	bzroYPODJ2	2021-10-15 18:12:56	2021-10-15 18:12:56
37	emmett00@example.org	+1-859-954-9316	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	C9RDb8DY0p	2021-10-15 18:12:56	2021-10-15 18:12:56
38	halvorson.danny@example.com	+1 (321) 556-0682	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	Rjnt0H7VfD	2021-10-15 18:12:56	2021-10-15 18:12:56
39	streich.darrin@example.net	1-726-303-9467	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	HbvSV3NaJ5	2021-10-15 18:12:56	2021-10-15 18:12:56
40	zoie10@example.net	424-798-1848	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	M7aZzHKQMy	2021-10-15 18:12:56	2021-10-15 18:12:56
41	von.charlotte@example.com	+1-320-603-6685	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	H8qz0MOuv7	2021-10-15 18:12:56	2021-10-15 18:12:56
42	batz.adrain@example.net	1-859-940-3328	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	kBtwRRq6zT	2021-10-15 18:12:56	2021-10-15 18:12:56
43	crooks.edmond@example.com	1-575-847-2250	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	F2MRBhOH2T	2021-10-15 18:12:56	2021-10-15 18:12:56
44	doyle.kihn@example.net	+1 (678) 699-2489	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	EaPpvTsmVK	2021-10-15 18:12:56	2021-10-15 18:12:56
45	dwunsch@example.com	(757) 240-8426	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	gzU9KfmpLs	2021-10-15 18:12:56	2021-10-15 18:12:56
46	bjast@example.net	475-288-7307	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	46Kf8TKdxA	2021-10-15 18:12:56	2021-10-15 18:12:56
47	bvon@example.org	423-310-2855	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	04PSdymMx0	2021-10-15 18:12:56	2021-10-15 18:12:56
48	gleason.riley@example.net	+1-772-614-9880	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	OBEtNwU97P	2021-10-15 18:12:56	2021-10-15 18:12:56
49	ohaley@example.net	+1-580-688-4594	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	ogcadDyZrt	2021-10-15 18:12:56	2021-10-15 18:12:56
50	pzemlak@example.com	+1.610.463.5699	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	yN5Egwm9Eh	2021-10-15 18:12:56	2021-10-15 18:12:56
51	swaniawski.roberta@example.org	445.279.8383	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	KkEhwnAgrG	2021-10-15 18:12:56	2021-10-15 18:12:56
52	amurphy@example.com	(319) 768-6728	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	kvGzqgDyu1	2021-10-15 18:12:56	2021-10-15 18:12:56
53	kellen60@example.com	+1-854-683-8748	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	tfX1GFFBbH	2021-10-15 18:12:56	2021-10-15 18:12:56
54	monte.wolf@example.org	818-838-2705	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	zsZV8EXomc	2021-10-15 18:12:56	2021-10-15 18:12:56
55	jada.olson@example.org	(442) 885-8515	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	cajLnfw7hF	2021-10-15 18:12:56	2021-10-15 18:12:56
56	agustina23@example.com	+1-734-551-0799	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	icJNf0Dx9V	2021-10-15 18:12:56	2021-10-15 18:12:56
57	shields.clarissa@example.net	1-717-656-5028	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	lMrg7sjBku	2021-10-15 18:12:56	2021-10-15 18:12:56
58	ujerde@example.org	+1.586.567.3721	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	lLs5mgPXNX	2021-10-15 18:12:56	2021-10-15 18:12:56
59	lavonne25@example.org	1-681-319-6053	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	rdfYLmTYa4	2021-10-15 18:12:56	2021-10-15 18:12:56
60	juston99@example.com	928.845.5998	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	rYIgx3Bxrd	2021-10-15 18:12:56	2021-10-15 18:12:56
61	charlene.shields@example.com	+1-458-699-2992	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	PqxFFfD7fw	2021-10-15 18:12:56	2021-10-15 18:12:56
62	luna59@example.org	(810) 388-1832	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	dyaxMMiLQZ	2021-10-15 18:12:56	2021-10-15 18:12:56
63	ezieme@example.com	445.705.5161	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	pF7PDXXNGh	2021-10-15 18:12:56	2021-10-15 18:12:56
64	wschinner@example.net	1-530-765-0198	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	Jd0yqnHPiN	2021-10-15 18:12:56	2021-10-15 18:12:56
65	mlueilwitz@example.com	339-420-0533	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	DalPml99a2	2021-10-15 18:12:56	2021-10-15 18:12:56
66	wsmith@example.com	1-470-610-1671	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	NZQbG3kDoX	2021-10-15 18:12:56	2021-10-15 18:12:56
67	luz.veum@example.net	(640) 359-1245	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	ViCD1Oyv32	2021-10-15 18:12:56	2021-10-15 18:12:56
68	serdman@example.org	(848) 774-9714	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	eZqyGrqZZ9	2021-10-15 18:12:56	2021-10-15 18:12:56
69	jerdman@example.com	585-431-2905	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	mVV2LDtwty	2021-10-15 18:12:56	2021-10-15 18:12:56
70	cweimann@example.com	+1-925-465-5387	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	7NhtaRM0Bx	2021-10-15 18:12:56	2021-10-15 18:12:56
71	helene.nolan@example.net	+16463903080	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	9lFgBhx8Sf	2021-10-15 18:12:56	2021-10-15 18:12:56
72	white.greg@example.com	+1.832.466.2511	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	1FFBZzO9fQ	2021-10-15 18:12:56	2021-10-15 18:12:56
73	vbraun@example.net	+1.936.534.3445	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	xudlQoG5pK	2021-10-15 18:12:56	2021-10-15 18:12:56
74	alexandra.konopelski@example.net	530.539.3205	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	16zUDuiMMe	2021-10-15 18:12:56	2021-10-15 18:12:56
75	baumbach.odie@example.com	1-220-258-0451	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	D4K5w7okqN	2021-10-15 18:12:56	2021-10-15 18:12:56
76	denesik.casandra@example.org	+1.843.406.6905	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	oWUCHHGj3A	2021-10-15 18:12:56	2021-10-15 18:12:56
77	aurelia44@example.com	347.842.6424	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	72BocwElmJ	2021-10-15 18:12:56	2021-10-15 18:12:56
78	nikko.marks@example.org	828.785.6439	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	6bj62NzEiq	2021-10-15 18:12:56	2021-10-15 18:12:56
79	myrna.white@example.com	+1-341-289-6775	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	Zn2lJYcZK6	2021-10-15 18:12:56	2021-10-15 18:12:56
80	evolkman@example.org	614-799-7543	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	xGyZu91Y1r	2021-10-15 18:12:56	2021-10-15 18:12:56
81	zdurgan@example.com	1-657-791-6219	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	4rMsIYuQtP	2021-10-15 18:12:56	2021-10-15 18:12:56
82	kane20@example.com	+1 (386) 895-4761	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	3uPh5lkV00	2021-10-15 18:12:56	2021-10-15 18:12:56
83	rath.cory@example.com	(681) 477-2900	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	04YdqxjRO9	2021-10-15 18:12:56	2021-10-15 18:12:56
84	anderson.stephen@example.net	1-785-896-2657	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	UdUBKI5Zn8	2021-10-15 18:12:56	2021-10-15 18:12:56
85	enrique.koss@example.net	(586) 537-6105	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	Diex3wPAjm	2021-10-15 18:12:56	2021-10-15 18:12:56
86	garland05@example.com	+1-515-624-4513	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	iHszEjYC18	2021-10-15 18:12:56	2021-10-15 18:12:56
87	ylittle@example.com	781-349-1676	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	UbTE4OynP8	2021-10-15 18:12:56	2021-10-15 18:12:56
88	ggoodwin@example.org	281.772.8904	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	J8eUiJ09XB	2021-10-15 18:12:57	2021-10-15 18:12:57
89	turcotte.claudine@example.net	949-221-2471	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	FSUHKyEUhd	2021-10-15 18:12:57	2021-10-15 18:12:57
90	mattie.schmitt@example.org	1-936-241-9390	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	eT0LG40FJ8	2021-10-15 18:12:57	2021-10-15 18:12:57
91	kiehn.robbie@example.com	606.265.8232	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	AH9Vl0J7P1	2021-10-15 18:12:57	2021-10-15 18:12:57
92	keebler.mark@example.net	806.555.0544	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	14qc1gegfa	2021-10-15 18:12:57	2021-10-15 18:12:57
93	zoie94@example.com	+1 (513) 319-1638	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	JaX3pNBxVH	2021-10-15 18:12:57	2021-10-15 18:12:57
94	earline98@example.net	985-434-8465	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	aUPxPE8B84	2021-10-15 18:12:57	2021-10-15 18:12:57
95	ilangworth@example.com	(520) 538-0219	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	acKJvrSVQ7	2021-10-15 18:12:57	2021-10-15 18:12:57
96	gregg.breitenberg@example.org	1-765-870-2413	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	fO23yBlo43	2021-10-15 18:12:57	2021-10-15 18:12:57
97	mateo.crooks@example.org	989-426-8052	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	PeVB9feoHW	2021-10-15 18:12:57	2021-10-15 18:12:57
98	jones.torey@example.org	+16097406751	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	lbuTKSQe3E	2021-10-15 18:12:57	2021-10-15 18:12:57
99	hobart90@example.com	216-261-2307	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	eouFAIfOx2	2021-10-15 18:12:57	2021-10-15 18:12:57
100	kaleigh.baumbach@example.net	+1-763-710-5949	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	sq1IRqRFTD	2021-10-15 18:12:57	2021-10-15 18:12:57
101	mccullough.mack@example.net	650.796.0101	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	iftorLk3up	2021-10-15 18:12:57	2021-10-15 18:12:57
102	lou.stroman@example.org	1-785-703-8444	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	im023KXOrX	2021-10-15 18:12:57	2021-10-15 18:12:57
103	hanna45@example.com	678-584-6722	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	Mxw1CLWSIG	2021-10-15 18:12:57	2021-10-15 18:12:57
104	jewell.gleichner@example.net	1-678-669-2798	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	GnFrQ4FQMk	2021-10-15 18:12:57	2021-10-15 18:12:57
105	ottilie.collier@example.org	+17576216719	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	RXjVTkMQ7f	2021-10-15 18:12:57	2021-10-15 18:12:57
106	price.cameron@example.com	702-585-4288	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	RtUweu8D4X	2021-10-15 18:12:57	2021-10-15 18:12:57
107	jwehner@example.org	(646) 576-0049	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	vOw4xwP9VZ	2021-10-15 18:12:57	2021-10-15 18:12:57
108	lucy.blanda@example.net	1-928-588-8453	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	chp0q5A8aH	2021-10-15 18:12:57	2021-10-15 18:12:57
109	pkub@example.net	+1.361.313.2367	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	kyLk2N2oeO	2021-10-15 18:12:57	2021-10-15 18:12:57
110	nicola96@example.org	(636) 559-4397	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	oIw7cXUKjm	2021-10-15 18:12:57	2021-10-15 18:12:57
111	dario.mills@example.net	573.987.5305	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	VVd1b1xOlm	2021-10-15 18:12:57	2021-10-15 18:12:57
112	cornelius.heathcote@example.net	+1-218-805-0894	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	kgTTOhFcAA	2021-10-15 18:12:57	2021-10-15 18:12:57
113	buckridge.catherine@example.net	1-430-488-8543	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	3ap3pDOxNg	2021-10-15 18:12:57	2021-10-15 18:12:57
114	carey01@example.com	586-440-2181	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	CW5LS9eEqQ	2021-10-15 18:12:57	2021-10-15 18:12:57
115	jon.runte@example.com	+1.218.892.7961	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	z9WwmciGRW	2021-10-15 18:12:57	2021-10-15 18:12:57
116	macejkovic.tyrique@example.com	+1.210.253.4877	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	CPurA7ut6k	2021-10-15 18:12:57	2021-10-15 18:12:57
117	rosamond15@example.org	+1-954-327-8957	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	hIu0mcbUht	2021-10-15 18:12:57	2021-10-15 18:12:57
118	waltenwerth@example.org	+1-339-942-1825	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	AhqxVSIP7l	2021-10-15 18:12:57	2021-10-15 18:12:57
119	fabian39@example.com	1-763-625-8520	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	cmHF31UpNj	2021-10-15 18:12:57	2021-10-15 18:12:57
120	rossie64@example.com	+1-325-255-5737	2021-10-15 18:12:55	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	\N	ZeWXp82OSl	2021-10-15 18:12:57	2021-10-15 18:12:57
121	ndirangu.mepawa@gmail.com	074664976	\N	123456	\N	\N	2021-10-18 10:26:36	2021-10-18 10:26:36
124	ndirangu.mepawa@outlook.com	074864976	\N	123456	\N	\N	2021-10-18 10:35:44	2021-10-18 10:35:44
125	ndirangu.dev@outlook.com	074964976	\N	123456	\N	\N	2021-10-18 10:36:37	2021-10-18 10:36:37
130	ndirangu.dev@outlok.com	0747664976	\N	123456	\N	\N	2021-10-19 11:17:08	2021-10-19 11:17:08
131	ndirangu.dev@ofutlok.com	07476364976	\N	123456	\N	\N	2021-10-19 11:17:50	2021-10-19 11:17:50
132	ndirangu.dyev@ofutlok.com	0476364976	\N	123456	\N	\N	2021-10-19 11:18:28	2021-10-19 11:18:28
133	ndirngu.dyev@ofutlok.com	047636476	\N	123456	\N	\N	2021-10-19 11:19:03	2021-10-19 11:19:03
134	ndirngu.dv@ofutlok.com	0476396476	\N	123456	\N	\N	2021-10-19 11:21:26	2021-10-19 11:21:26
137	ndireraengu.mepawa@gmail.com	033746641976	\N	123456	\N	\N	2021-10-19 12:17:02	2021-10-19 12:17:02
138	ndirraenu.mepawa@gmail.com	0336641976	\N	123456	\N	\N	2021-10-19 12:20:21	2021-10-19 12:20:21
142	ndirraenu.mepawa@ail.com	033664176	\N	123456	\N	\N	2021-10-19 12:25:52	2021-10-19 12:25:52
143	123	03364176	\N	123456	\N	\N	2021-10-19 19:38:39	2021-10-19 19:38:39
145	ndirangu.dev@gmail.com	254746649566	\N	george1234	\N	\N	2021-12-24 11:31:34	2021-12-24 11:31:34
146	ndirangu.example@gmail.com	254746649366	\N	george1234	\N	\N	2021-12-24 11:37:22	2021-12-24 11:37:22
\.


--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 217
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.brands_id_seq', 102, true);


--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 219
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.categories_id_seq', 100, true);


--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 227
-- Name: credit_notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.credit_notes_id_seq', 110, true);


--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 211
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.customers_id_seq', 51, true);


--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 229
-- Name: debit_notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.debit_notes_id_seq', 135, true);


--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 205
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 223
-- Name: inventory_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.inventory_items_id_seq', 109, true);


--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 239
-- Name: metas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.metas_id_seq', 102, true);


--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 200
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.migrations_id_seq', 21, true);


--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 235
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.order_items_id_seq', 137, true);


--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 207
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 241
-- Name: product_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.product_categories_id_seq', 300, true);


--
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 221
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.products_id_seq', 116, true);


--
-- TOC entry 3434 (class 0 OID 0)
-- Dependencies: 231
-- Name: purchase_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.purchase_orders_id_seq', 123, true);


--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 233
-- Name: sales_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.sales_orders_id_seq', 117, true);


--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 209
-- Name: shop_owners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.shop_owners_id_seq', 48, true);


--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 215
-- Name: shops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.shops_id_seq', 105, true);


--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 225
-- Name: supplier_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.supplier_items_id_seq', 102, true);


--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 213
-- Name: suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.suppliers_id_seq', 48, true);


--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 237
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.transactions_id_seq', 149, true);


--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 202
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: microerp
--

SELECT pg_catalog.setval('public.users_id_seq', 146, true);


--
-- TOC entry 3148 (class 2606 OID 34596)
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- TOC entry 3150 (class 2606 OID 34607)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3158 (class 2606 OID 34667)
-- Name: credit_notes credit_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.credit_notes
    ADD CONSTRAINT credit_notes_pkey PRIMARY KEY (id);


--
-- TOC entry 3138 (class 2606 OID 34547)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3140 (class 2606 OID 34554)
-- Name: customers customers_user_id_unique; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_user_id_unique UNIQUE (user_id);


--
-- TOC entry 3160 (class 2606 OID 34685)
-- Name: debit_notes debit_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.debit_notes
    ADD CONSTRAINT debit_notes_pkey PRIMARY KEY (id);


--
-- TOC entry 3125 (class 2606 OID 34508)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3127 (class 2606 OID 34510)
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- TOC entry 3154 (class 2606 OID 34631)
-- Name: inventory_items inventory_items_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.inventory_items
    ADD CONSTRAINT inventory_items_pkey PRIMARY KEY (id);


--
-- TOC entry 3174 (class 2606 OID 34817)
-- Name: metas metas_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_pkey PRIMARY KEY (id);


--
-- TOC entry 3114 (class 2606 OID 34472)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3170 (class 2606 OID 34753)
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- TOC entry 3129 (class 2606 OID 34521)
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3131 (class 2606 OID 34524)
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- TOC entry 3176 (class 2606 OID 34895)
-- Name: product_categories product_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3152 (class 2606 OID 34618)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3162 (class 2606 OID 34720)
-- Name: purchase_orders purchase_orders_debit_note_id_unique; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_debit_note_id_unique UNIQUE (debit_note_id);


--
-- TOC entry 3164 (class 2606 OID 34703)
-- Name: purchase_orders purchase_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3166 (class 2606 OID 34745)
-- Name: sales_orders sales_orders_credit_note_id_unique; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.sales_orders
    ADD CONSTRAINT sales_orders_credit_note_id_unique UNIQUE (credit_note_id);


--
-- TOC entry 3168 (class 2606 OID 34728)
-- Name: sales_orders sales_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.sales_orders
    ADD CONSTRAINT sales_orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3134 (class 2606 OID 34532)
-- Name: shop_owners shop_owners_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.shop_owners
    ADD CONSTRAINT shop_owners_pkey PRIMARY KEY (id);


--
-- TOC entry 3136 (class 2606 OID 34539)
-- Name: shop_owners shop_owners_user_id_unique; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.shop_owners
    ADD CONSTRAINT shop_owners_user_id_unique UNIQUE (user_id);


--
-- TOC entry 3146 (class 2606 OID 34580)
-- Name: shops shops_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.shops
    ADD CONSTRAINT shops_pkey PRIMARY KEY (id);


--
-- TOC entry 3156 (class 2606 OID 34649)
-- Name: supplier_items supplier_items_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.supplier_items
    ADD CONSTRAINT supplier_items_pkey PRIMARY KEY (id);


--
-- TOC entry 3142 (class 2606 OID 34562)
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);


--
-- TOC entry 3144 (class 2606 OID 34569)
-- Name: suppliers suppliers_user_id_unique; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_user_id_unique UNIQUE (user_id);


--
-- TOC entry 3172 (class 2606 OID 34781)
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- TOC entry 3116 (class 2606 OID 34489)
-- Name: users users_api_token_unique; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_api_token_unique UNIQUE (api_token);


--
-- TOC entry 3118 (class 2606 OID 34485)
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 3120 (class 2606 OID 34487)
-- Name: users users_phone_unique; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_unique UNIQUE (phone);


--
-- TOC entry 3122 (class 2606 OID 34483)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3123 (class 1259 OID 34496)
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: microerp
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- TOC entry 3132 (class 1259 OID 34522)
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: microerp
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- TOC entry 3186 (class 2606 OID 34668)
-- Name: credit_notes credit_notes_customer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.credit_notes
    ADD CONSTRAINT credit_notes_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3187 (class 2606 OID 34673)
-- Name: credit_notes credit_notes_shop_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.credit_notes
    ADD CONSTRAINT credit_notes_shop_id_foreign FOREIGN KEY (shop_id) REFERENCES public.shops(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3178 (class 2606 OID 34548)
-- Name: customers customers_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3189 (class 2606 OID 34691)
-- Name: debit_notes debit_notes_shop_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.debit_notes
    ADD CONSTRAINT debit_notes_shop_id_foreign FOREIGN KEY (shop_id) REFERENCES public.shops(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3188 (class 2606 OID 34686)
-- Name: debit_notes debit_notes_supplier_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.debit_notes
    ADD CONSTRAINT debit_notes_supplier_id_foreign FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3183 (class 2606 OID 34637)
-- Name: inventory_items inventory_items_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.inventory_items
    ADD CONSTRAINT inventory_items_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3182 (class 2606 OID 34632)
-- Name: inventory_items inventory_items_shop_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.inventory_items
    ADD CONSTRAINT inventory_items_shop_id_foreign FOREIGN KEY (shop_id) REFERENCES public.shops(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3211 (class 2606 OID 34848)
-- Name: metas metas_brand_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_brand_id_foreign FOREIGN KEY (brand_id) REFERENCES public.brands(id) ON DELETE CASCADE;


--
-- TOC entry 3216 (class 2606 OID 34873)
-- Name: metas metas_credit_note_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_credit_note_id_foreign FOREIGN KEY (credit_note_id) REFERENCES public.credit_notes(id) ON DELETE CASCADE;


--
-- TOC entry 3207 (class 2606 OID 34828)
-- Name: metas metas_customer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- TOC entry 3217 (class 2606 OID 34878)
-- Name: metas metas_debit_note_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_debit_note_id_foreign FOREIGN KEY (debit_note_id) REFERENCES public.debit_notes(id) ON DELETE CASCADE;


--
-- TOC entry 3212 (class 2606 OID 34853)
-- Name: metas metas_inventory_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_inventory_item_id_foreign FOREIGN KEY (inventory_item_id) REFERENCES public.inventory_items(id) ON DELETE CASCADE;


--
-- TOC entry 3210 (class 2606 OID 34843)
-- Name: metas metas_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- TOC entry 3214 (class 2606 OID 34863)
-- Name: metas metas_purchase_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_purchase_order_id_foreign FOREIGN KEY (purchase_order_id) REFERENCES public.purchase_orders(id) ON DELETE CASCADE;


--
-- TOC entry 3215 (class 2606 OID 34868)
-- Name: metas metas_sales_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_sales_order_id_foreign FOREIGN KEY (sales_order_id) REFERENCES public.sales_orders(id) ON DELETE CASCADE;


--
-- TOC entry 3209 (class 2606 OID 34838)
-- Name: metas metas_shop_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_shop_id_foreign FOREIGN KEY (shop_id) REFERENCES public.shops(id) ON DELETE CASCADE;


--
-- TOC entry 3206 (class 2606 OID 34823)
-- Name: metas metas_shop_owner_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_shop_owner_id_foreign FOREIGN KEY (shop_owner_id) REFERENCES public.shop_owners(id) ON DELETE CASCADE;


--
-- TOC entry 3208 (class 2606 OID 34833)
-- Name: metas metas_supplier_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_supplier_id_foreign FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) ON DELETE CASCADE;


--
-- TOC entry 3213 (class 2606 OID 34858)
-- Name: metas metas_supplier_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_supplier_item_id_foreign FOREIGN KEY (supplier_item_id) REFERENCES public.supplier_items(id) ON DELETE CASCADE;


--
-- TOC entry 3218 (class 2606 OID 34883)
-- Name: metas metas_transaction_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_transaction_id_foreign FOREIGN KEY (transaction_id) REFERENCES public.transactions(id) ON DELETE CASCADE;


--
-- TOC entry 3205 (class 2606 OID 34818)
-- Name: metas metas_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 3199 (class 2606 OID 34769)
-- Name: order_items order_items_inventory_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_inventory_item_id_foreign FOREIGN KEY (inventory_item_id) REFERENCES public.inventory_items(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3198 (class 2606 OID 34764)
-- Name: order_items order_items_purchase_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_purchase_order_id_foreign FOREIGN KEY (purchase_order_id) REFERENCES public.purchase_orders(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3197 (class 2606 OID 34759)
-- Name: order_items order_items_sales_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_sales_order_id_foreign FOREIGN KEY (sales_order_id) REFERENCES public.sales_orders(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3196 (class 2606 OID 34754)
-- Name: order_items order_items_supplier_item_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_supplier_item_id_foreign FOREIGN KEY (supplier_item_id) REFERENCES public.supplier_items(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3219 (class 2606 OID 34896)
-- Name: product_categories product_categories_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_category_id_foreign FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3220 (class 2606 OID 34901)
-- Name: product_categories product_categories_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3181 (class 2606 OID 34619)
-- Name: products products_brand_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_brand_id_foreign FOREIGN KEY (brand_id) REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3191 (class 2606 OID 34709)
-- Name: purchase_orders purchase_orders_debit_note_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_debit_note_id_foreign FOREIGN KEY (debit_note_id) REFERENCES public.debit_notes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3192 (class 2606 OID 34714)
-- Name: purchase_orders purchase_orders_shop_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_shop_id_foreign FOREIGN KEY (shop_id) REFERENCES public.shops(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3190 (class 2606 OID 34704)
-- Name: purchase_orders purchase_orders_supplier_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_supplier_id_foreign FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3194 (class 2606 OID 34734)
-- Name: sales_orders sales_orders_credit_note_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.sales_orders
    ADD CONSTRAINT sales_orders_credit_note_id_foreign FOREIGN KEY (credit_note_id) REFERENCES public.credit_notes(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3193 (class 2606 OID 34729)
-- Name: sales_orders sales_orders_customer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.sales_orders
    ADD CONSTRAINT sales_orders_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3195 (class 2606 OID 34739)
-- Name: sales_orders sales_orders_shop_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.sales_orders
    ADD CONSTRAINT sales_orders_shop_id_foreign FOREIGN KEY (shop_id) REFERENCES public.shops(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3177 (class 2606 OID 34533)
-- Name: shop_owners shop_owners_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.shop_owners
    ADD CONSTRAINT shop_owners_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3180 (class 2606 OID 34581)
-- Name: shops shops_shop_owner_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.shops
    ADD CONSTRAINT shops_shop_owner_id_foreign FOREIGN KEY (shop_owner_id) REFERENCES public.shop_owners(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3185 (class 2606 OID 34655)
-- Name: supplier_items supplier_items_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.supplier_items
    ADD CONSTRAINT supplier_items_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3184 (class 2606 OID 34650)
-- Name: supplier_items supplier_items_supplier_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.supplier_items
    ADD CONSTRAINT supplier_items_supplier_id_foreign FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3179 (class 2606 OID 34563)
-- Name: suppliers suppliers_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3203 (class 2606 OID 34797)
-- Name: transactions transactions_customer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3200 (class 2606 OID 34782)
-- Name: transactions transactions_purchase_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_purchase_order_id_foreign FOREIGN KEY (purchase_order_id) REFERENCES public.purchase_orders(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3201 (class 2606 OID 34787)
-- Name: transactions transactions_sales_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_sales_order_id_foreign FOREIGN KEY (sales_order_id) REFERENCES public.sales_orders(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3202 (class 2606 OID 34792)
-- Name: transactions transactions_shop_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_shop_id_foreign FOREIGN KEY (shop_id) REFERENCES public.shops(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3204 (class 2606 OID 34802)
-- Name: transactions transactions_supplier_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: microerp
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_supplier_id_foreign FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2021-12-25 08:50:02 EAT

--
-- PostgreSQL database dump complete
--

