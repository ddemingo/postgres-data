--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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

--
-- Name: scott; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE scott WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE scott OWNER TO postgres;

\connect scott

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
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    custid integer NOT NULL,
    name text,
    address text,
    city text,
    state text,
    zip text,
    area integer,
    phone text,
    repid integer,
    creditlimit numeric,
    comments text
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: dept; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept (
    deptno integer NOT NULL,
    dname text,
    loc text
);


ALTER TABLE public.dept OWNER TO postgres;

--
-- Name: emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emp (
    empno integer NOT NULL,
    ename text,
    job text,
    mgr integer,
    hiredate date,
    sal integer,
    comm integer,
    deptno integer
);


ALTER TABLE public.emp OWNER TO postgres;

--
-- Name: item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item (
    ordid integer NOT NULL,
    itemid integer NOT NULL,
    prodid integer,
    actualprice numeric,
    qty integer,
    itemtot numeric
);


ALTER TABLE public.item OWNER TO postgres;

--
-- Name: ord; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ord (
    ordid integer NOT NULL,
    orderdate date,
    commplan text,
    custid integer,
    shipdate date,
    total numeric
);


ALTER TABLE public.ord OWNER TO postgres;

--
-- Name: price; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.price (
    prodid integer NOT NULL,
    startdate date NOT NULL,
    stdprice numeric,
    minprice numeric,
    enddate date
);


ALTER TABLE public.price OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    prodid integer NOT NULL,
    descrip text
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: salgrade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salgrade (
    grade integer NOT NULL,
    losal integer,
    hisal integer
);


ALTER TABLE public.salgrade OWNER TO postgres;

--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (custid, name, address, city, state, zip, area, phone, repid, creditlimit, comments) FROM stdin;
100	JOCKSPORTS	345 VIEWRIDCE	BELMONT	CA	96711	415	598-6609	7844	5000	No Comment
101	TKS SPORT SHOP	490 BOLY RD.	REDWOD CITY	CA	94061	415	368-1223	7521	10000	No Comment
102	VOLLYRITE	9722 HAMILTON	BURLINGAME	CA	95133	415	644-3341	7654	7000	No Comment
103	JUST TENNIS	HILLVIEW MALL	BURLINGAME	CA	97544	415	677-9312	7521	3000	No Comment
104	EVERY MOUNTANY	574 SURRY RD.	CUPERTINO	CA	93301	408	996-2323	7499	10000	No Comment
105	K + T SPORTS	3476 EL PASEO	SANTA CLARA	CA	91003	408	376-9966	7844	5000	No Comment
106	SHAPE UP	908 SEQUOIA	PALO ALTO	CA	94301	415	364-9777	7521	6000	No Comment
107	WOMENS SPORT	VALCO VILLAGE	SUNNYVALE	CA	93301	408	967-4398	7499	10000	No Comment
108	NORTH WOODS HEALTH	98 LONE PINE WAY	HIBBING	MN	55649	612	566-9123	7844	8000	No Comment
\.


--
-- Data for Name: dept; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dept (deptno, dname, loc) FROM stdin;
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON
\.


--
-- Data for Name: emp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) FROM stdin;
7369	SMITH	CLERK	7902	1980-12-17	800	\N	20
7499	ALLEN	SALESMAN	7698	1981-02-20	1600	300	30
7521	WARD	SALESMAN	7698	1981-02-22	1250	500	30
7566	JONES	MANAGER	7839	1981-04-02	2975	\N	20
7654	MARTIN	SALESMAN	7698	1981-09-28	1250	1400	30
7698	BLAKE	MANAGER	7839	1981-05-01	2850	\N	30
7782	CLARK	MANAGER	7839	1981-06-09	2450	\N	10
7788	SCOTT	ANALYST	7566	1982-12-09	3000	\N	20
7839	KING	PRESIDENT	\N	1981-11-17	5000	\N	10
7844	TURNER	SALESMAN	7698	1981-09-08	1500	0	30
7876	ADAMS	CLERK	7788	1983-01-12	1100	\N	20
7900	JAMES	CLERK	7698	1981-12-03	950	\N	30
7902	FORD	ANALYST	7566	1981-12-03	3000	\N	20
7934	MILLER	CLERK	7782	1982-01-23	1300	\N	10
\.


--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.item (ordid, itemid, prodid, actualprice, qty, itemtot) FROM stdin;
601	1	200376	5.2	10	52
602	1	100870	2.8	20	56
603	1	100870	2.8	15	42
603	2	100860	30	4	120
604	1	100890	53	3	165
604	2	100861	37	2	74
604	3	100860	29	10	290
605	1	100890	52	3	156
605	2	100861	37.5	2	75
606	1	200376	5.5	5	27.5
607	1	100870	3	20	60
608	1	100870	3.1	30	93
608	2	100860	29	5	145
609	1	100890	57	3	171
609	2	100861	40	3	120
609	3	100860	28	12	336
610	1	100860	31	2	62
610	2	100870	2.8	3	8.4
610	3	100890	58	1	58
611	1	100871	4.8	10	48
612	1	100870	3.2	25	80
613	1	100890	57	3	171
613	2	100860	32	4	128
614	1	100890	54	2	108
614	2	100861	38	2	76
614	3	100860	32	10	320
615	1	100890	58	3	174
615	2	100861	39	2	78
616	1	200376	6.2	5	31
617	1	100870	3	20	60
619	1	100890	53	3	165
619	2	100871	5	30	150
619	3	100860	35	15	525
620	1	100860	35	2	70
620	2	100861	40	3	120
620	3	100890	58	2	116
621	1	200376	6.5	20	130
621	2	101863	24	4	96
\.


--
-- Data for Name: ord; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ord (ordid, orderdate, commplan, custid, shipdate, total) FROM stdin;
605	2016-02-15	A	106	2016-02-21	231
606	2016-02-17	A	100	2016-02-20	27.5
607	2016-05-18	C	104	2016-05-18	60
608	2016-07-25	C	104	2016-07-25	238
611	2017-02-11	B	102	2017-02-11	48
612	2017-02-15	C	104	2017-02-20	80
613	2017-03-01		108	2017-03-03	299
614	2017-05-07		102	2017-05-15	504
615	2017-06-01		107	2017-06-06	252
616	2017-06-03		103	2017-06-10	31
617	2017-07-05		105	2017-07-07	60
621	2018-02-15	A	100	2018-02-18	226
601	2016-01-03	A	106	2016-01-16	52
602	2016-01-05	B	102	2016-01-12	56
603	2016-01-05		102	2016-01-16	162
604	2016-01-07	A	106	2016-01-15	529
609	2016-08-01	B	100	2016-08-15	627
610	2017-01-07	A	101	2017-01-08	128.4
619	2018-01-02		104	2018-01-04	840
620	2018-01-12		100	2018-01-12	306
\.


--
-- Data for Name: price; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.price (prodid, startdate, stdprice, minprice, enddate) FROM stdin;
100860	2017-01-01	32	25.6	2017-05-31
100860	2016-01-01	30	24	2016-12-31
100861	2016-01-01	38	35.5	2016-05-31
100870	2016-01-01	3	2.6	2017-12-31
100871	2016-01-01	4.8	3.2	2017-12-01
100890	2016-01-01	54	40.5	2016-05-31
101860	2017-01-01	35	32.5	2017-05-31
101860	2016-01-01	33	29	2016-12-31
101863	2016-01-01	22	20	2017-12-31
102130	2016-01-01	10	7.5	2017-12-01
200376	2016-01-01	5.5	5	2016-05-31
100860	2017-06-01	35	28	\N
100861	2017-06-01	40	38	\N
100870	2018-06-01	3.5	2.8	\N
100871	2017-12-02	5.2	3.8	\N
100890	2017-06-01	58	46.4	\N
101860	2017-06-01	40	35	\N
102130	2017-12-02	11	8	\N
101863	2018-06-01	25	22	\N
200376	2017-06-01	6	5.5	\N
200380	2017-06-01	6.2	5.4	\N
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (prodid, descrip) FROM stdin;
100860	ACE TENNIS RACKET I
100861	ACE TENNIS RACKET II
100870	ACE TENNIS BALLS-3 PACK
100871	ACE TENNIS BALLS-6 PACK
100890	ACE TENNIS NET
101860	SP TENNIS RACKET
101863	SP JUNIOR RACKET
102130	RH: GUIDE TO TENNIS
200376	SB ENERGY BAR-6 PACK
200380	SB VITA SNACK-6 PACK
\.


--
-- Data for Name: salgrade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salgrade (grade, losal, hisal) FROM stdin;
1	700	1200
2	1201	1400
3	1401	2000
4	2001	3000
5	3001	9999
\.


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (custid);


--
-- Name: item item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (ordid, itemid);


--
-- Name: ord ord_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ord
    ADD CONSTRAINT ord_pkey PRIMARY KEY (ordid);


--
-- Name: dept pk_dept; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept
    ADD CONSTRAINT pk_dept PRIMARY KEY (deptno);


--
-- Name: emp pk_emp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT pk_emp PRIMARY KEY (empno);


--
-- Name: salgrade pk_salgrade; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salgrade
    ADD CONSTRAINT pk_salgrade PRIMARY KEY (grade);


--
-- Name: price price_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_pkey PRIMARY KEY (prodid, startdate);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (prodid);


--
-- Name: customer customer_repid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_repid_fkey FOREIGN KEY (repid) REFERENCES public.emp(empno);


--
-- Name: emp fk_deptno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT fk_deptno FOREIGN KEY (deptno) REFERENCES public.dept(deptno);


--
-- Name: emp fk_mgr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT fk_mgr FOREIGN KEY (mgr) REFERENCES public.emp(empno);


--
-- Name: item item_ordid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_ordid_fkey FOREIGN KEY (ordid) REFERENCES public.ord(ordid);


--
-- Name: item item_prodid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_prodid_fkey FOREIGN KEY (prodid) REFERENCES public.product(prodid);


--
-- Name: ord ord_custid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ord
    ADD CONSTRAINT ord_custid_fkey FOREIGN KEY (custid) REFERENCES public.customer(custid);


--
-- Name: price price_prodid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_prodid_fkey FOREIGN KEY (prodid) REFERENCES public.product(prodid);


--
-- PostgreSQL database dump complete
--

