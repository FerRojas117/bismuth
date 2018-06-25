--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

-- Started on 2018-06-12 11:42:33

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16389)
-- Name: re_device; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_device (
    device_id integer NOT NULL,
    part_id integer NOT NULL
);


ALTER TABLE public.re_device OWNER TO bismuth;

--
-- TOC entry 197 (class 1259 OID 16392)
-- Name: re_device_device_id_seq; Type: SEQUENCE; Schema: public; Owner: bismuth
--

CREATE SEQUENCE public.re_device_device_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.re_device_device_id_seq OWNER TO bismuth;

--
-- TOC entry 2300 (class 0 OID 0)
-- Dependencies: 197
-- Name: re_device_device_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bismuth
--

ALTER SEQUENCE public.re_device_device_id_seq OWNED BY public.re_device.device_id;


--
-- TOC entry 198 (class 1259 OID 16394)
-- Name: re_part; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_part (
    part_id integer NOT NULL,
    part_description jsonb NOT NULL
);


ALTER TABLE public.re_part OWNER TO bismuth;

--
-- TOC entry 199 (class 1259 OID 16400)
-- Name: re_part_part_id_seq; Type: SEQUENCE; Schema: public; Owner: bismuth
--

CREATE SEQUENCE public.re_part_part_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.re_part_part_id_seq OWNER TO bismuth;

--
-- TOC entry 2301 (class 0 OID 0)
-- Dependencies: 199
-- Name: re_part_part_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bismuth
--

ALTER SEQUENCE public.re_part_part_id_seq OWNED BY public.re_part.part_id;


--
-- TOC entry 200 (class 1259 OID 16402)
-- Name: re_person; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_person (
    person_id integer NOT NULL,
    person_description jsonb NOT NULL
);


ALTER TABLE public.re_person OWNER TO bismuth;

--
-- TOC entry 201 (class 1259 OID 16408)
-- Name: re_person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: bismuth
--

CREATE SEQUENCE public.re_person_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.re_person_person_id_seq OWNER TO bismuth;

--
-- TOC entry 2302 (class 0 OID 0)
-- Dependencies: 201
-- Name: re_person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bismuth
--

ALTER SEQUENCE public.re_person_person_id_seq OWNED BY public.re_person.person_id;


--
-- TOC entry 202 (class 1259 OID 16410)
-- Name: re_person_rol; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_person_rol (
    person_id integer NOT NULL,
    rol_id integer NOT NULL
);


ALTER TABLE public.re_person_rol OWNER TO bismuth;

--
-- TOC entry 203 (class 1259 OID 16413)
-- Name: re_place; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_place (
    place_id integer NOT NULL,
    place_description character varying NOT NULL
);


ALTER TABLE public.re_place OWNER TO bismuth;

--
-- TOC entry 204 (class 1259 OID 16419)
-- Name: re_place_place_id_seq; Type: SEQUENCE; Schema: public; Owner: bismuth
--

CREATE SEQUENCE public.re_place_place_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.re_place_place_id_seq OWNER TO bismuth;

--
-- TOC entry 2303 (class 0 OID 0)
-- Dependencies: 204
-- Name: re_place_place_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bismuth
--

ALTER SEQUENCE public.re_place_place_id_seq OWNED BY public.re_place.place_id;


--
-- TOC entry 205 (class 1259 OID 16421)
-- Name: re_rol; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_rol (
    rol_id integer NOT NULL,
    rol_description character varying NOT NULL
);


ALTER TABLE public.re_rol OWNER TO bismuth;

--
-- TOC entry 206 (class 1259 OID 16427)
-- Name: re_rol_rol_id_seq; Type: SEQUENCE; Schema: public; Owner: bismuth
--

CREATE SEQUENCE public.re_rol_rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.re_rol_rol_id_seq OWNER TO bismuth;

--
-- TOC entry 2304 (class 0 OID 0)
-- Dependencies: 206
-- Name: re_rol_rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bismuth
--

ALTER SEQUENCE public.re_rol_rol_id_seq OWNED BY public.re_rol.rol_id;


--
-- TOC entry 207 (class 1259 OID 16429)
-- Name: re_status; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_status (
    status_id integer NOT NULL,
    status_description character varying NOT NULL
);


ALTER TABLE public.re_status OWNER TO bismuth;

--
-- TOC entry 208 (class 1259 OID 16435)
-- Name: re_status_status_id_seq; Type: SEQUENCE; Schema: public; Owner: bismuth
--

CREATE SEQUENCE public.re_status_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.re_status_status_id_seq OWNER TO bismuth;

--
-- TOC entry 2305 (class 0 OID 0)
-- Dependencies: 208
-- Name: re_status_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bismuth
--

ALTER SEQUENCE public.re_status_status_id_seq OWNED BY public.re_status.status_id;


--
-- TOC entry 209 (class 1259 OID 16437)
-- Name: re_supplier; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_supplier (
    person_id integer NOT NULL,
    warehouse_id integer NOT NULL
);


ALTER TABLE public.re_supplier OWNER TO bismuth;

--
-- TOC entry 210 (class 1259 OID 16440)
-- Name: re_warehouse; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_warehouse (
    warehouse_id integer NOT NULL,
    warehouse_quantity double precision NOT NULL,
    warehouse_minimum double precision,
    warehouse_maximum double precision,
    place_id integer,
    part_id integer
);


ALTER TABLE public.re_warehouse OWNER TO bismuth;

--
-- TOC entry 211 (class 1259 OID 16443)
-- Name: re_warehouse_bom; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_warehouse_bom (
    warehouse_id integer NOT NULL,
    warehouse_quantity real,
    warehouse_description jsonb
);


ALTER TABLE public.re_warehouse_bom OWNER TO bismuth;

--
-- TOC entry 212 (class 1259 OID 16449)
-- Name: re_warehouse_warehouse_id_seq; Type: SEQUENCE; Schema: public; Owner: bismuth
--

CREATE SEQUENCE public.re_warehouse_warehouse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.re_warehouse_warehouse_id_seq OWNER TO bismuth;

--
-- TOC entry 2306 (class 0 OID 0)
-- Dependencies: 212
-- Name: re_warehouse_warehouse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bismuth
--

ALTER SEQUENCE public.re_warehouse_warehouse_id_seq OWNED BY public.re_warehouse.warehouse_id;


--
-- TOC entry 213 (class 1259 OID 16451)
-- Name: re_work_order; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_work_order (
    work_order_id integer NOT NULL,
    device_id integer NOT NULL,
    client_id integer NOT NULL,
    place_id integer,
    part_id integer NOT NULL,
    work_order_description jsonb
);


ALTER TABLE public.re_work_order OWNER TO bismuth;

--
-- TOC entry 214 (class 1259 OID 16457)
-- Name: re_work_order_bom; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_work_order_bom (
    work_order_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    work_order_bom_date timestamp with time zone
);


ALTER TABLE public.re_work_order_bom OWNER TO bismuth;

--
-- TOC entry 215 (class 1259 OID 16460)
-- Name: re_work_order_status; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_work_order_status (
    work_order_id integer NOT NULL,
    status_id integer NOT NULL,
    work_order_status_start timestamp with time zone,
    work_order_status_end timestamp with time zone
);


ALTER TABLE public.re_work_order_status OWNER TO bismuth;

--
-- TOC entry 216 (class 1259 OID 16463)
-- Name: re_work_order_work_order_id_seq; Type: SEQUENCE; Schema: public; Owner: bismuth
--

CREATE SEQUENCE public.re_work_order_work_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.re_work_order_work_order_id_seq OWNER TO bismuth;

--
-- TOC entry 2307 (class 0 OID 0)
-- Dependencies: 216
-- Name: re_work_order_work_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bismuth
--

ALTER SEQUENCE public.re_work_order_work_order_id_seq OWNED BY public.re_work_order.work_order_id;


--
-- TOC entry 217 (class 1259 OID 16465)
-- Name: re_work_order_worker; Type: TABLE; Schema: public; Owner: bismuth
--

CREATE TABLE public.re_work_order_worker (
    work_order_id integer NOT NULL,
    worker_id integer NOT NULL,
    worker_description jsonb
);


ALTER TABLE public.re_work_order_worker OWNER TO bismuth;

--
-- TOC entry 2098 (class 2604 OID 16471)
-- Name: re_device device_id; Type: DEFAULT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_device ALTER COLUMN device_id SET DEFAULT nextval('public.re_device_device_id_seq'::regclass);


--
-- TOC entry 2099 (class 2604 OID 16472)
-- Name: re_part part_id; Type: DEFAULT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_part ALTER COLUMN part_id SET DEFAULT nextval('public.re_part_part_id_seq'::regclass);


--
-- TOC entry 2100 (class 2604 OID 16473)
-- Name: re_person person_id; Type: DEFAULT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_person ALTER COLUMN person_id SET DEFAULT nextval('public.re_person_person_id_seq'::regclass);


--
-- TOC entry 2101 (class 2604 OID 16474)
-- Name: re_place place_id; Type: DEFAULT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_place ALTER COLUMN place_id SET DEFAULT nextval('public.re_place_place_id_seq'::regclass);


--
-- TOC entry 2102 (class 2604 OID 16475)
-- Name: re_rol rol_id; Type: DEFAULT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_rol ALTER COLUMN rol_id SET DEFAULT nextval('public.re_rol_rol_id_seq'::regclass);


--
-- TOC entry 2103 (class 2604 OID 16476)
-- Name: re_status status_id; Type: DEFAULT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_status ALTER COLUMN status_id SET DEFAULT nextval('public.re_status_status_id_seq'::regclass);


--
-- TOC entry 2104 (class 2604 OID 16477)
-- Name: re_warehouse warehouse_id; Type: DEFAULT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_warehouse ALTER COLUMN warehouse_id SET DEFAULT nextval('public.re_warehouse_warehouse_id_seq'::regclass);


--
-- TOC entry 2105 (class 2604 OID 16478)
-- Name: re_work_order work_order_id; Type: DEFAULT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order ALTER COLUMN work_order_id SET DEFAULT nextval('public.re_work_order_work_order_id_seq'::regclass);


--
-- TOC entry 2272 (class 0 OID 16389)
-- Dependencies: 196
-- Data for Name: re_device; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2274 (class 0 OID 16394)
-- Dependencies: 198
-- Data for Name: re_part; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2276 (class 0 OID 16402)
-- Dependencies: 200
-- Data for Name: re_person; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2278 (class 0 OID 16410)
-- Dependencies: 202
-- Data for Name: re_person_rol; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2279 (class 0 OID 16413)
-- Dependencies: 203
-- Data for Name: re_place; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2281 (class 0 OID 16421)
-- Dependencies: 205
-- Data for Name: re_rol; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2283 (class 0 OID 16429)
-- Dependencies: 207
-- Data for Name: re_status; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2285 (class 0 OID 16437)
-- Dependencies: 209
-- Data for Name: re_supplier; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2286 (class 0 OID 16440)
-- Dependencies: 210
-- Data for Name: re_warehouse; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2287 (class 0 OID 16443)
-- Dependencies: 211
-- Data for Name: re_warehouse_bom; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2289 (class 0 OID 16451)
-- Dependencies: 213
-- Data for Name: re_work_order; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2290 (class 0 OID 16457)
-- Dependencies: 214
-- Data for Name: re_work_order_bom; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2291 (class 0 OID 16460)
-- Dependencies: 215
-- Data for Name: re_work_order_status; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2293 (class 0 OID 16465)
-- Dependencies: 217
-- Data for Name: re_work_order_worker; Type: TABLE DATA; Schema: public; Owner: bismuth
--



--
-- TOC entry 2308 (class 0 OID 0)
-- Dependencies: 197
-- Name: re_device_device_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bismuth
--

SELECT pg_catalog.setval('public.re_device_device_id_seq', 1, false);


--
-- TOC entry 2309 (class 0 OID 0)
-- Dependencies: 199
-- Name: re_part_part_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bismuth
--

SELECT pg_catalog.setval('public.re_part_part_id_seq', 1, false);


--
-- TOC entry 2310 (class 0 OID 0)
-- Dependencies: 201
-- Name: re_person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bismuth
--

SELECT pg_catalog.setval('public.re_person_person_id_seq', 1, false);


--
-- TOC entry 2311 (class 0 OID 0)
-- Dependencies: 204
-- Name: re_place_place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bismuth
--

SELECT pg_catalog.setval('public.re_place_place_id_seq', 1, false);


--
-- TOC entry 2312 (class 0 OID 0)
-- Dependencies: 206
-- Name: re_rol_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bismuth
--

SELECT pg_catalog.setval('public.re_rol_rol_id_seq', 1, false);


--
-- TOC entry 2313 (class 0 OID 0)
-- Dependencies: 208
-- Name: re_status_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bismuth
--

SELECT pg_catalog.setval('public.re_status_status_id_seq', 1, false);


--
-- TOC entry 2314 (class 0 OID 0)
-- Dependencies: 212
-- Name: re_warehouse_warehouse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bismuth
--

SELECT pg_catalog.setval('public.re_warehouse_warehouse_id_seq', 1, false);


--
-- TOC entry 2315 (class 0 OID 0)
-- Dependencies: 216
-- Name: re_work_order_work_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bismuth
--

SELECT pg_catalog.setval('public.re_work_order_work_order_id_seq', 1, false);


--
-- TOC entry 2107 (class 2606 OID 16480)
-- Name: re_device re_device_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_device
    ADD CONSTRAINT re_device_pk PRIMARY KEY (device_id, part_id);


--
-- TOC entry 2109 (class 2606 OID 16482)
-- Name: re_part re_part_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_part
    ADD CONSTRAINT re_part_pk PRIMARY KEY (part_id);


--
-- TOC entry 2111 (class 2606 OID 16484)
-- Name: re_person re_person_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_person
    ADD CONSTRAINT re_person_pk PRIMARY KEY (person_id);


--
-- TOC entry 2113 (class 2606 OID 16486)
-- Name: re_person_rol re_person_rol_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_person_rol
    ADD CONSTRAINT re_person_rol_pk PRIMARY KEY (person_id, rol_id);


--
-- TOC entry 2115 (class 2606 OID 16488)
-- Name: re_place re_place_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_place
    ADD CONSTRAINT re_place_pk PRIMARY KEY (place_id);


--
-- TOC entry 2117 (class 2606 OID 16490)
-- Name: re_rol re_rol_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_rol
    ADD CONSTRAINT re_rol_pk PRIMARY KEY (rol_id);


--
-- TOC entry 2119 (class 2606 OID 16492)
-- Name: re_status re_status_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_status
    ADD CONSTRAINT re_status_pk PRIMARY KEY (status_id);


--
-- TOC entry 2121 (class 2606 OID 16494)
-- Name: re_supplier re_supplier_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_supplier
    ADD CONSTRAINT re_supplier_pk PRIMARY KEY (person_id, warehouse_id);


--
-- TOC entry 2125 (class 2606 OID 16496)
-- Name: re_warehouse_bom re_warehouse_bom_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_warehouse_bom
    ADD CONSTRAINT re_warehouse_bom_pk PRIMARY KEY (warehouse_id);


--
-- TOC entry 2123 (class 2606 OID 16498)
-- Name: re_warehouse re_warehouse_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_warehouse
    ADD CONSTRAINT re_warehouse_pk PRIMARY KEY (warehouse_id);


--
-- TOC entry 2129 (class 2606 OID 16596)
-- Name: re_work_order_bom re_work_order_bom_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order_bom
    ADD CONSTRAINT re_work_order_bom_pk PRIMARY KEY (work_order_id, warehouse_id);


--
-- TOC entry 2127 (class 2606 OID 16594)
-- Name: re_work_order re_work_order_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order
    ADD CONSTRAINT re_work_order_pk PRIMARY KEY (work_order_id);


--
-- TOC entry 2131 (class 2606 OID 16598)
-- Name: re_work_order_status re_work_order_status_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order_status
    ADD CONSTRAINT re_work_order_status_pk PRIMARY KEY (work_order_id, status_id);


--
-- TOC entry 2133 (class 2606 OID 16600)
-- Name: re_work_order_worker re_work_order_worker_pk; Type: CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order_worker
    ADD CONSTRAINT re_work_order_worker_pk PRIMARY KEY (work_order_id, worker_id);


--
-- TOC entry 2134 (class 2606 OID 16507)
-- Name: re_device re_device_re_part_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_device
    ADD CONSTRAINT re_device_re_part_fk FOREIGN KEY (part_id) REFERENCES public.re_part(part_id);


--
-- TOC entry 2135 (class 2606 OID 16512)
-- Name: re_person_rol re_person_rol_re_person_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_person_rol
    ADD CONSTRAINT re_person_rol_re_person_fk FOREIGN KEY (person_id) REFERENCES public.re_person(person_id);


--
-- TOC entry 2136 (class 2606 OID 16517)
-- Name: re_person_rol re_person_rol_re_rol_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_person_rol
    ADD CONSTRAINT re_person_rol_re_rol_fk FOREIGN KEY (rol_id) REFERENCES public.re_rol(rol_id);


--
-- TOC entry 2137 (class 2606 OID 16522)
-- Name: re_supplier re_supplier_re_person_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_supplier
    ADD CONSTRAINT re_supplier_re_person_fk FOREIGN KEY (person_id) REFERENCES public.re_person(person_id);


--
-- TOC entry 2138 (class 2606 OID 16527)
-- Name: re_supplier re_supplier_re_warehouse_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_supplier
    ADD CONSTRAINT re_supplier_re_warehouse_fk FOREIGN KEY (warehouse_id) REFERENCES public.re_warehouse(warehouse_id);


--
-- TOC entry 2141 (class 2606 OID 16532)
-- Name: re_warehouse_bom re_warehouse_bom_re_warehouse_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_warehouse_bom
    ADD CONSTRAINT re_warehouse_bom_re_warehouse_fk FOREIGN KEY (warehouse_id) REFERENCES public.re_warehouse(warehouse_id);


--
-- TOC entry 2139 (class 2606 OID 16537)
-- Name: re_warehouse re_warehouse_re_part_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_warehouse
    ADD CONSTRAINT re_warehouse_re_part_fk FOREIGN KEY (part_id) REFERENCES public.re_part(part_id);


--
-- TOC entry 2140 (class 2606 OID 16542)
-- Name: re_warehouse re_warehouse_re_place_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_warehouse
    ADD CONSTRAINT re_warehouse_re_place_fk FOREIGN KEY (place_id) REFERENCES public.re_place(place_id);


--
-- TOC entry 2145 (class 2606 OID 16547)
-- Name: re_work_order_bom re_work_order_bom_re_warehouse_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order_bom
    ADD CONSTRAINT re_work_order_bom_re_warehouse_fk FOREIGN KEY (warehouse_id) REFERENCES public.re_warehouse(warehouse_id);


--
-- TOC entry 2146 (class 2606 OID 16606)
-- Name: re_work_order_bom re_work_order_bom_re_work_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order_bom
    ADD CONSTRAINT re_work_order_bom_re_work_order_fk FOREIGN KEY (work_order_id) REFERENCES public.re_work_order(work_order_id);


--
-- TOC entry 2142 (class 2606 OID 16557)
-- Name: re_work_order re_work_order_re_device_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order
    ADD CONSTRAINT re_work_order_re_device_fk FOREIGN KEY (device_id, part_id) REFERENCES public.re_device(device_id, part_id);


--
-- TOC entry 2143 (class 2606 OID 16562)
-- Name: re_work_order re_work_order_re_person_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order
    ADD CONSTRAINT re_work_order_re_person_fk FOREIGN KEY (client_id) REFERENCES public.re_person(person_id);


--
-- TOC entry 2144 (class 2606 OID 16567)
-- Name: re_work_order re_work_order_re_place_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order
    ADD CONSTRAINT re_work_order_re_place_fk FOREIGN KEY (place_id) REFERENCES public.re_place(place_id);


--
-- TOC entry 2147 (class 2606 OID 16572)
-- Name: re_work_order_status re_work_order_status_re_status_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order_status
    ADD CONSTRAINT re_work_order_status_re_status_fk FOREIGN KEY (status_id) REFERENCES public.re_status(status_id);


--
-- TOC entry 2148 (class 2606 OID 16601)
-- Name: re_work_order_status re_work_order_status_re_work_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order_status
    ADD CONSTRAINT re_work_order_status_re_work_order_fk FOREIGN KEY (work_order_id) REFERENCES public.re_work_order(work_order_id);


--
-- TOC entry 2150 (class 2606 OID 16611)
-- Name: re_work_order_worker re_work_order_worker_re_work_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order_worker
    ADD CONSTRAINT re_work_order_worker_re_work_order_fk FOREIGN KEY (work_order_id) REFERENCES public.re_work_order(work_order_id);


--
-- TOC entry 2149 (class 2606 OID 16582)
-- Name: re_work_order_worker re_work_order_workers_re_person_fk; Type: FK CONSTRAINT; Schema: public; Owner: bismuth
--

ALTER TABLE ONLY public.re_work_order_worker
    ADD CONSTRAINT re_work_order_workers_re_person_fk FOREIGN KEY (worker_id) REFERENCES public.re_person(person_id);


-- Completed on 2018-06-12 11:42:35

--
-- PostgreSQL database dump complete
--

