--
-- PostgreSQL database dump
--

-- Dumped from database version 13.12
-- Dumped by pg_dump version 13.12

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
-- Name: carrito_de_compras; Type: TABLE; Schema: public; Owner: carlos
--

CREATE TABLE public.carrito_de_compras (
    id_carrito_de_compras integer NOT NULL,
    id_usarios_foreing integer,
    id_productos_foreing integer,
    total numeric(10,2)
);


ALTER TABLE public.carrito_de_compras OWNER TO carlos;

--
-- Name: carrito_de_compras_id_carrito_de_compras_seq; Type: SEQUENCE; Schema: public; Owner: carlos
--

CREATE SEQUENCE public.carrito_de_compras_id_carrito_de_compras_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carrito_de_compras_id_carrito_de_compras_seq OWNER TO carlos;

--
-- Name: carrito_de_compras_id_carrito_de_compras_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: carlos
--

ALTER SEQUENCE public.carrito_de_compras_id_carrito_de_compras_seq OWNED BY public.carrito_de_compras.id_carrito_de_compras;


--
-- Name: direccion; Type: TABLE; Schema: public; Owner: carlos
--

CREATE TABLE public.direccion (
    id_direccion integer NOT NULL,
    calle character varying(45) NOT NULL,
    numero integer NOT NULL,
    numero_exterior integer,
    alcaldia character varying(40) NOT NULL,
    colonia character varying(40) NOT NULL,
    ciudad character varying(45) NOT NULL
);


ALTER TABLE public.direccion OWNER TO carlos;

--
-- Name: direccion_id_direccion_seq; Type: SEQUENCE; Schema: public; Owner: carlos
--

CREATE SEQUENCE public.direccion_id_direccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.direccion_id_direccion_seq OWNER TO carlos;

--
-- Name: direccion_id_direccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: carlos
--

ALTER SEQUENCE public.direccion_id_direccion_seq OWNED BY public.direccion.id_direccion;


--
-- Name: factura; Type: TABLE; Schema: public; Owner: carlos
--

CREATE TABLE public.factura (
    id_factura integer NOT NULL,
    id_carrito_de_compras_foreing integer NOT NULL,
    fecha_compra date
);


ALTER TABLE public.factura OWNER TO carlos;

--
-- Name: factura_id_factura_seq; Type: SEQUENCE; Schema: public; Owner: carlos
--

CREATE SEQUENCE public.factura_id_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.factura_id_factura_seq OWNER TO carlos;

--
-- Name: factura_id_factura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: carlos
--

ALTER SEQUENCE public.factura_id_factura_seq OWNED BY public.factura.id_factura;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: carlos
--

CREATE TABLE public.productos (
    id_productos integer NOT NULL,
    nombre_productos character varying(45) NOT NULL,
    marca character varying(45) NOT NULL,
    precio numeric(10,4) NOT NULL,
    id_vendedor_foreing integer
);


ALTER TABLE public.productos OWNER TO carlos;

--
-- Name: productos_id_productos_seq; Type: SEQUENCE; Schema: public; Owner: carlos
--

CREATE SEQUENCE public.productos_id_productos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_id_productos_seq OWNER TO carlos;

--
-- Name: productos_id_productos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: carlos
--

ALTER SEQUENCE public.productos_id_productos_seq OWNED BY public.productos.id_productos;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: carlos
--

CREATE TABLE public.usuarios (
    id_usuarios integer NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido_materno character varying(30) NOT NULL,
    apellido_paterno character varying(30) NOT NULL,
    telefonno character varying(10) NOT NULL,
    email character varying(45) NOT NULL,
    password character varying(40) NOT NULL,
    edad integer NOT NULL,
    id_direccion_foreing integer
);


ALTER TABLE public.usuarios OWNER TO carlos;

--
-- Name: usuarios_id_usuarios_seq; Type: SEQUENCE; Schema: public; Owner: carlos
--

CREATE SEQUENCE public.usuarios_id_usuarios_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_usuarios_seq OWNER TO carlos;

--
-- Name: usuarios_id_usuarios_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: carlos
--

ALTER SEQUENCE public.usuarios_id_usuarios_seq OWNED BY public.usuarios.id_usuarios;


--
-- Name: vendedor; Type: TABLE; Schema: public; Owner: carlos
--

CREATE TABLE public.vendedor (
    id_vendedor integer NOT NULL,
    nombre character varying(45) NOT NULL,
    apellido_materno character varying(45) NOT NULL,
    apellido_paterno character varying(45) NOT NULL
);


ALTER TABLE public.vendedor OWNER TO carlos;

--
-- Name: vendedor_id_vendedor_seq; Type: SEQUENCE; Schema: public; Owner: carlos
--

CREATE SEQUENCE public.vendedor_id_vendedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendedor_id_vendedor_seq OWNER TO carlos;

--
-- Name: vendedor_id_vendedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: carlos
--

ALTER SEQUENCE public.vendedor_id_vendedor_seq OWNED BY public.vendedor.id_vendedor;


--
-- Name: carrito_de_compras id_carrito_de_compras; Type: DEFAULT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.carrito_de_compras ALTER COLUMN id_carrito_de_compras SET DEFAULT nextval('public.carrito_de_compras_id_carrito_de_compras_seq'::regclass);


--
-- Name: direccion id_direccion; Type: DEFAULT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.direccion ALTER COLUMN id_direccion SET DEFAULT nextval('public.direccion_id_direccion_seq'::regclass);


--
-- Name: factura id_factura; Type: DEFAULT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.factura ALTER COLUMN id_factura SET DEFAULT nextval('public.factura_id_factura_seq'::regclass);


--
-- Name: productos id_productos; Type: DEFAULT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.productos ALTER COLUMN id_productos SET DEFAULT nextval('public.productos_id_productos_seq'::regclass);


--
-- Name: usuarios id_usuarios; Type: DEFAULT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuarios SET DEFAULT nextval('public.usuarios_id_usuarios_seq'::regclass);


--
-- Name: vendedor id_vendedor; Type: DEFAULT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.vendedor ALTER COLUMN id_vendedor SET DEFAULT nextval('public.vendedor_id_vendedor_seq'::regclass);


--
-- Data for Name: carrito_de_compras; Type: TABLE DATA; Schema: public; Owner: carlos
--

COPY public.carrito_de_compras (id_carrito_de_compras, id_usarios_foreing, id_productos_foreing, total) FROM stdin;
16	16	1	30000.00
17	17	2	899.99
18	18	3	1099.99
19	19	4	799.99
20	20	5	599.99
21	21	6	349.99
22	22	7	2399.99
23	23	8	149.99
24	24	9	699.99
25	25	10	499.99
26	26	11	199.99
27	27	12	499.99
28	28	13	2499.99
29	29	14	599.99
30	30	15	799.99
\.


--
-- Data for Name: direccion; Type: TABLE DATA; Schema: public; Owner: carlos
--

COPY public.direccion (id_direccion, calle, numero, numero_exterior, alcaldia, colonia, ciudad) FROM stdin;
1	Calle Primavera	123	456	Benito Ju rez	Del Valle	Ciudad de M‚xico
2	Avenida Libertad	789	1011	Miguel Hidalgo	Polanco	Ciudad de M‚xico
3	Calle Pino	456	789	µlvaro Obreg¢n	Santa Fe	Ciudad de M‚xico
4	Avenida Flores	8910	1112	Coyoac n	Del Carmen	Ciudad de M‚xico
5	Calle Azalea	1314	1516	Gustavo A. Madero	Lindavista	Ciudad de M‚xico
6	Avenida Monta¤a	1718	1920	Iztacalco	Agr¡cola Oriental	Ciudad de M‚xico
7	Calle Sol	2122	2324	Tlalpan	Miraflores	Ciudad de M‚xico
8	Avenida Lluvia	2526	2728	Xochimilco	San Francisco	Ciudad de M‚xico
9	Calle Bosque	2930	3132	Cuajimalpa	Cuajimalpa Centro	Ciudad de M‚xico
10	Avenida R¡o	3334	3536	Azcapotzalco	Claver¡a	Ciudad de M‚xico
11	Calle Jard¡n	3738	3940	Venustiano Carranza	Moctezuma	Ciudad de M‚xico
12	Avenida Aurora	4142	4344	Milpa Alta	Villa Milpa Alta	Ciudad de M‚xico
13	Calle Estrella	4546	4748	Tl huac	Del Mar	Ciudad de M‚xico
14	Avenida Cielo	4950	5152	Iztapalapa	Los Reyes	Ciudad de M‚xico
15	Calle Luna	5354	5556	Magdalena Contreras	San Jer¢nimo	Ciudad de M‚xico
\.


--
-- Data for Name: factura; Type: TABLE DATA; Schema: public; Owner: carlos
--

COPY public.factura (id_factura, id_carrito_de_compras_foreing, fecha_compra) FROM stdin;
1	16	2023-09-20
2	17	2023-09-25
3	18	2023-09-26
4	19	2023-09-27
5	20	2023-09-28
6	21	2023-09-29
7	22	2023-09-30
8	23	2023-10-01
9	24	2023-10-02
10	25	2023-10-03
11	26	2023-10-04
12	27	2023-10-05
13	28	2023-10-06
14	29	2023-10-07
15	30	2023-10-08
\.


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: carlos
--

COPY public.productos (id_productos, nombre_productos, marca, precio, id_vendedor_foreing) FROM stdin;
1	iphone 14 por max	apple	30000.0000	1
2	Smartphone Samsung Galaxy S21	Samsung	899.9900	2
3	Laptop HP Pavilion x360	HP	1099.9900	3
4	TV LED Sony Bravia 55"	Sony	799.9900	4
5	Tablet Apple iPad Air	Apple	599.9900	5
6	Auriculares Sony WH-1000XM4	Sony	349.9900	6
7	C mara Mirrorless Canon EOS R6	Canon	2399.9900	7
8	Altavoz Bluetooth JBL Charge 4	JBL	149.9900	8
9	Monitor Gaming ASUS ROG Swift	ASUS	699.9900	9
10	Impresora Epson EcoTank ET-4760	Epson	499.9900	10
11	Reproductor Blu-ray Sony UBP-X700	Sony	199.9900	11
12	Consola de videojuegos Xbox Series X	Microsoft	499.9900	12
13	Proyector Epson Home Cinema 5050UB	Epson	2499.9900	13
14	Smartwatch Garmin Forerunner 945	Garmin	599.9900	14
15	Drone DJI Mavic Air 2	DJI	799.9900	15
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: carlos
--

COPY public.usuarios (id_usuarios, nombre, apellido_materno, apellido_paterno, telefonno, email, password, edad, id_direccion_foreing) FROM stdin;
16	Juan	Hern ndez	Gonz lez	5551234567	juan@gmail.com	mypassword123	30	1
17	Mar¡a	Garc¡a	L¢pez	5559876543	maria@hotmail.com	p@ssw0rd	25	2
18	Pedro	G¢mez	S nchez	5555555555	pedro@yahoo.com	securepass	35	3
19	Laura	Mart¡nez	Hern ndez	5551112233	laura@gmail.com	mypassword456	28	4
20	Sof¡a	D¡az	Mart¡nez	5553332211	sofia@hotmail.com	password1234	32	5
21	Carlos	L¢pez	Hern ndez	5558765432	carlos@gmail.com	securepassword	40	6
22	Ana	Gonz lez	Hern ndez	5557890123	ana@yahoo.com	mypass123	29	7
23	Luis	Fern ndez	S nchez	5554445555	luis@hotmail.com	password567	33	8
24	Carmen	S nchez	Garc¡a	5556781234	carmen@gmail.com	mypassword789	26	9
25	Javier	P‚rez	G¢mez	5552223333	javier@yahoo.com	pass1234	31	10
26	Isabel	Hern ndez	G¢mez	5558765432	isabel@gmail.com	password890	27	11
27	Fernando	Rodr¡guez	Mart¡nez	5555551212	fernando@hotmail.com	mypass567	38	12
28	Elena	Guti‚rrez	Garc¡a	5557778888	elena@gmail.com	mypassword999	35	13
29	Pablo	L¢pez	Mart¡nez	5554445555	pablo@yahoo.com	password999	29	14
30	Lorena	Garc¡a	Hern ndez	5559998888	lorena@hotmail.com	mypassword000	41	15
\.


--
-- Data for Name: vendedor; Type: TABLE DATA; Schema: public; Owner: carlos
--

COPY public.vendedor (id_vendedor, nombre, apellido_materno, apellido_paterno) FROM stdin;
1	Albero	Flores	Lara
2	Juan	P‚rez	G¢mez
3	Mar¡a	Garc¡a	L¢pez
4	Carlos	Rodr¡guez	Fern ndez
5	Ana	Mart¡nez	D¡az
6	Luis	S nchez	Vargas
7	Laura	L¢pez	Hern ndez
8	Pedro	Fern ndez	P‚rez
9	Sof¡a	G¢mez	Guti‚rrez
10	Javier	D¡az	Rodr¡guez
11	Carmen	Hern ndez	S nchez
12	Pablo	Vargas	Garc¡a
13	Isabel	P‚rez	Mart¡nez
14	Fernando	L¢pez	Fern ndez
15	Elena	Garc¡a	Hern ndez
\.


--
-- Name: carrito_de_compras_id_carrito_de_compras_seq; Type: SEQUENCE SET; Schema: public; Owner: carlos
--

SELECT pg_catalog.setval('public.carrito_de_compras_id_carrito_de_compras_seq', 30, true);


--
-- Name: direccion_id_direccion_seq; Type: SEQUENCE SET; Schema: public; Owner: carlos
--

SELECT pg_catalog.setval('public.direccion_id_direccion_seq', 15, true);


--
-- Name: factura_id_factura_seq; Type: SEQUENCE SET; Schema: public; Owner: carlos
--

SELECT pg_catalog.setval('public.factura_id_factura_seq', 15, true);


--
-- Name: productos_id_productos_seq; Type: SEQUENCE SET; Schema: public; Owner: carlos
--

SELECT pg_catalog.setval('public.productos_id_productos_seq', 15, true);


--
-- Name: usuarios_id_usuarios_seq; Type: SEQUENCE SET; Schema: public; Owner: carlos
--

SELECT pg_catalog.setval('public.usuarios_id_usuarios_seq', 30, true);


--
-- Name: vendedor_id_vendedor_seq; Type: SEQUENCE SET; Schema: public; Owner: carlos
--

SELECT pg_catalog.setval('public.vendedor_id_vendedor_seq', 15, true);


--
-- Name: carrito_de_compras carrito_de_compras_pkey; Type: CONSTRAINT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.carrito_de_compras
    ADD CONSTRAINT carrito_de_compras_pkey PRIMARY KEY (id_carrito_de_compras);


--
-- Name: direccion direccion_pkey; Type: CONSTRAINT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.direccion
    ADD CONSTRAINT direccion_pkey PRIMARY KEY (id_direccion);


--
-- Name: factura factura_pkey; Type: CONSTRAINT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (id_factura);


--
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_productos);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuarios);


--
-- Name: vendedor vendedor_pkey; Type: CONSTRAINT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_pkey PRIMARY KEY (id_vendedor);


--
-- Name: factura carrito_de_compras_fk; Type: FK CONSTRAINT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.factura
    ADD CONSTRAINT carrito_de_compras_fk FOREIGN KEY (id_carrito_de_compras_foreing) REFERENCES public.carrito_de_compras(id_carrito_de_compras);


--
-- Name: usuarios direccion_fk; Type: FK CONSTRAINT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT direccion_fk FOREIGN KEY (id_direccion_foreing) REFERENCES public.direccion(id_direccion);


--
-- Name: productos id_vendedor_fk; Type: FK CONSTRAINT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT id_vendedor_fk FOREIGN KEY (id_vendedor_foreing) REFERENCES public.vendedor(id_vendedor);


--
-- Name: carrito_de_compras productos_fk; Type: FK CONSTRAINT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.carrito_de_compras
    ADD CONSTRAINT productos_fk FOREIGN KEY (id_productos_foreing) REFERENCES public.productos(id_productos);


--
-- Name: carrito_de_compras usuarios_fk; Type: FK CONSTRAINT; Schema: public; Owner: carlos
--

ALTER TABLE ONLY public.carrito_de_compras
    ADD CONSTRAINT usuarios_fk FOREIGN KEY (id_usarios_foreing) REFERENCES public.usuarios(id_usuarios);


--
-- PostgreSQL database dump complete
--

