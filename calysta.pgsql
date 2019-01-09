--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: list_jasa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.list_jasa (
    id_jasa integer NOT NULL,
    kategori character varying(20),
    perawatan character varying(50),
    harga integer
);


ALTER TABLE public.list_jasa OWNER TO postgres;

--
-- Name: list_jasa_id_jasa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.list_jasa_id_jasa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.list_jasa_id_jasa_seq OWNER TO postgres;

--
-- Name: list_jasa_id_jasa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.list_jasa_id_jasa_seq OWNED BY public.list_jasa.id_jasa;


--
-- Name: list_pegawai; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.list_pegawai (
    id_pegawai character varying(3),
    nama character varying(30),
    role character varying(30)
);


ALTER TABLE public.list_pegawai OWNER TO postgres;

--
-- Name: list_pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.list_pelanggan (
    id_pelanggan integer,
    nama character varying(100)
);


ALTER TABLE public.list_pelanggan OWNER TO postgres;

--
-- Name: list_produk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.list_produk (
    id_produk integer NOT NULL,
    kategori character varying(50),
    kode character varying(50),
    pack character varying(20),
    stok integer,
    harga integer
);


ALTER TABLE public.list_produk OWNER TO postgres;

--
-- Name: list_produk_id_produk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.list_produk_id_produk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.list_produk_id_produk_seq OWNER TO postgres;

--
-- Name: list_produk_id_produk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.list_produk_id_produk_seq OWNED BY public.list_produk.id_produk;


--
-- Name: tx_jasa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tx_jasa (
    id_transaksi integer NOT NULL,
    id_pelanggan integer,
    id_jasa integer,
    tanggal date
);


ALTER TABLE public.tx_jasa OWNER TO postgres;

--
-- Name: tx_jasa_id_transaksi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tx_jasa_id_transaksi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tx_jasa_id_transaksi_seq OWNER TO postgres;

--
-- Name: tx_jasa_id_transaksi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tx_jasa_id_transaksi_seq OWNED BY public.tx_jasa.id_transaksi;


--
-- Name: tx_produk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tx_produk (
    id_transaksi integer NOT NULL,
    id_pelanggan integer,
    id_produk integer,
    jumlah integer,
    tanggal date
);


ALTER TABLE public.tx_produk OWNER TO postgres;

--
-- Name: tx_produk_id_transaksi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tx_produk_id_transaksi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tx_produk_id_transaksi_seq OWNER TO postgres;

--
-- Name: tx_produk_id_transaksi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tx_produk_id_transaksi_seq OWNED BY public.tx_produk.id_transaksi;


--
-- Name: list_jasa id_jasa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.list_jasa ALTER COLUMN id_jasa SET DEFAULT nextval('public.list_jasa_id_jasa_seq'::regclass);


--
-- Name: list_produk id_produk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.list_produk ALTER COLUMN id_produk SET DEFAULT nextval('public.list_produk_id_produk_seq'::regclass);


--
-- Name: tx_jasa id_transaksi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tx_jasa ALTER COLUMN id_transaksi SET DEFAULT nextval('public.tx_jasa_id_transaksi_seq'::regclass);


--
-- Name: tx_produk id_transaksi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tx_produk ALTER COLUMN id_transaksi SET DEFAULT nextval('public.tx_produk_id_transaksi_seq'::regclass);


--
-- Data for Name: list_jasa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.list_jasa (id_jasa, kategori, perawatan, harga) FROM stdin;
200	FACIAL	F REGULER VIT C	80000
201	FACIAL	F ACNE	150000
202	FACIAL	F ACNE PLUS	200000
203	FACIAL	F WHITENING	125000
204	FACIAL	F PLACENTA	160000
205	FACIAL	F GOLD	150000
206	FACIAL	F SNAIL	150000
207	FACIAL	F BIO ENZYME	150000
208	FACIAL PLUS	FACIAL ACNE PLUS	225000
209	FACIAL PLUS	FACIAL DETOX	200000
210	FACIAL PLUS	OXY FACIAL	250000
211	FACIAL PLUS	OXY FACIAL DERMABRASI	325000
212	PEELING	PEELING BRIGHT	175500
213	PEELING	PEELING REJUV 1	180000
214	PEELING	PEELING REJUV 2	180000
215	PEELING	PEELING ACNE	175000
216	PEELING	MICRODERMABRASI	200000
217	MEDIS	CHEMICAL PEELING BRIGHTENING	150000
218	MEDIS	CHEMICAL PEELING REJUV 1	175000
219	MEDIS	CHEMICAL PEELING REJUV 2	175000
220	MEDIS	CHEMICAL PEELING ACNE	150000
221	MEDIS	DERMAROLLER	350000
222	MEDIS	MESONEEDLE GLOW	300000
223	MEDIS	MESONEEDLE LIFT	300000
224	MEDIS	SUNTIK ACNE (PER TITIK JERAWAT)	70000
225	BODY	RF PERUT	200000
226	BODY	RF PAHA	200000
227	BODY	RF LENGAN	175000
228	BODY	RF PERUT + PAHA	400000
229	BODY	RF PERUT/PAHA + LENGAN	375000
230	BODY	RF FULL (PAHA+PERUT+LENGAN)	575000
231	BODY	RF PERUT + SLIMMING CAPSULE	475000
232	BODY	RF PERUT + PAHA + SLIMMING CAPSULE	675000
233	BODY	RF FULL + SLIMMING CAPSULE	850000
234	BODY	MESOBODY	400000
235	BODY	MESOBODY + RF PERUT/PAHA	600000
236	BODY	MESOBODY + RF PERUT+PAHA	750000
237	BODY	MESOBODY + RF FULL	900000
238	BODY	TES ALERGI	180000
239	INJECTION	SUNTIK VIT C	90000
240	INJECTION	SUNTIK WHITE PLUS	300000
241	INJECTION	SUNTIK ANTI AGING	350000
242	INJECTION	SUNTIK ACNE SPOT	60000
243	INJECTION	SUNTIK WHITE SUPER	600000
244	IPL TREATMENT	IPL ACNE	300000
245	IPL TREATMENT	IPL REJUVE	300000
246	IPL TREATMENT	IPL HAIR REMOVAL AREA 1	300000
247	IPL TREATMENT	DERMAGLOW LIGHT THERAPY	475000
248	FACE RF	RF WAJAH (facelift Radio Frequency)	200000
249	ELECTROCAUTER	ELECTROCAUTER 3	200000
250	PDT	PHOTO THERAPY - (PDT) MASK	90000
251	MESOTHERAPY 	V-SHAPE	600000
252	EYE TREATMENT	REFRESH EYE TREATMENT	150000
253	LASER	LASER REJUVE-PEEL	450000
254	LASER	LASER PIGMENTANSI	900000
255	PAKET SKIN FACE	F. WHITENING + BRIGHTENING PEELING	260000
256	PAKET SKIN FACE	F. GOLD + BRIGHTENING PEELING	285000
257	PAKET SKIN FACE	F. WHITENING + REJUV 1	285000
258	PAKET SKIN FACE	F. WHITENING + REJUV 2	285000
259	PAKET SKIN FACE	F. GOLD + REJUV 1	310000
260	PAKET SKIN FACE	F. GOLD + REJUV 2	310000
261	PAKET SKIN FACE	F. ACNE + ACNE PEELING	285000
262	PAKET SKIN FACE	F. ACNE PLUS + ACNE PEELING	335000
263	PAKET SKIN FACE	F. WHITENING + MICRODERMABRASI	325000
264	PAKET SKIN FACE	F. GOLD + MICRODERMABRASI (GROUPON)	350000
265	PAKET SKIN FACE	F. WHITENING + FACE RF	325000
266	PAKET SKIN FACE	F. GOLD + FACE RF (LAKUPON)	350000
267	PAKET SKIN FACE	F. BIO ENZYME + FACE RF	350000
268	PAKET SKIN FACE	F. WHITENING + MESO	255000
269	PAKET SKIN FACE	F. GOLD + MESO	280000
270	PAKET SKIN FACE	F. BIO ENZYME + MESO	280000
271	PAKET SKIN FACE	DERMAROLLER 3 X	925000
272	PAKET BODY	SUNTIK VIT C 4 X	325000
273	PAKET BODY	SUNTIK WHITE PLUS 4 X	1100000
274	PAKET BODY	SUNTIK ANTI AGING 4 X	1300000
275	PAKET BODY	SUNTIK WHITE SUPER 4 X	2250000
276	PAKET BODY	RF PERUT 4 X	700000
277	PAKET BODY	RF PAHA 4 X	700000
278	PAKET BODY	RF LENGAN 4 X	600000
279	PAKET BODY	RF PERUT + PAHA 4 X	1400000
280	PAKET BODY	RF PERUT + PAHA 2 X (GROUPON)	800000
281	PAKET BODY	RF FULL  4X	2000000
282	PAKET BODY	RF PERUT 4X + SLIMMING CAPSULE 1 FLES	950000
283	PAKET BODY	RF (PERUT + PAHA) 4 X + SLIMMING CAPSULE 1 FLES	1600000
284	PAKET BODY	RF  FULL 4 X + SLIMMING CAPSULE 1 FLES	2200000
285	PAKET BODY	MESOBODY + RF PERUT/PAHA  4 X	2200000
286	PAKET BODY	MESOBODY + RF PERUT+PAHA  4 X	2800000
287	PAKET BODY	MESOBODY + RF FULL   4X	3350000
\.


--
-- Data for Name: list_pegawai; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.list_pegawai (id_pegawai, nama, role) FROM stdin;
p1	Ika	pegawai
d1	Dr Firdha	dokter
p2	Mauly	pegawai
p3	Mega	pegawai
p4	Friska	pegawai
p5	Ajeng	pegawai
d2	Dr Dwi Lestari	dokter
d3	Dr Nia	dokter
p6	Dr Sakinah	dokter
\.


--
-- Data for Name: list_pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.list_pelanggan (id_pelanggan, nama) FROM stdin;
100	Yusrina Rahma Dewi
101	Khairita
102	Waode Carolina R
103	Rindu
104	Puteri Nadya (PTS SUKABUMI)
105	M Imran
106	Tiurlis
107	Dr.Sakinah
108	Yusrina Rahma Dewi
109	Syelsi Ratna N.H
110	Ayu Wulandari Zainuddin
111	Setiani Sunarningsih
112	Muthrofin (mute)
113	Novilia Tawang W
114	Septi Dwi Maryani
115	Arinda Putri
116	Siti Chadizah
117	Dede Masniah
118	Antonius Simatupang
119	Julia Sonya
120	Annisa Anggiana
121	Adinda Asti Gita
122	Yanti
123	Wiwi Widya
124	Shelfina Darmawati
125	Desi Susanti
126	Ghina Khoirunisa
127	Cicilia Rahmayani (pts Bsd)
128	Sri Suwarningsih (ema)
129	Elsa Mawarni
130	Niken Dwi Puspitasari
131	Arina Anjarsari
132	Febi Purwantono
133	Siti Rahma pts BSD
134	Ike Annisa pts BSD
135	Titin Agustin
136	Nuraeni (shopee)
137	Between Octaria S
138	Siti Nur K
139	Martini
140	Dian Pratiwi
141	Nur Wahyuni
142	Sari
143	Sry Augusta Rahayu
144	Naswati
145	Biah
146	Indah Nurshadrina
147	nini riani
148	Siti Hardiyanti
149	wulandari
150	yekti opiniwati
151	Regita Putri Cristanti
152	Mutia
153	Febriana B (PTS BKS)
154	Vivirawati
155	Rika Nuroctaviani O
156	Kamelia Rahmat
157	Helga
158	dian rosdiana
159	Usmawati Anggita S (PTS BKS)
160	Tiersa Vera J
161	Yolla Oktavia Rani
162	Sheilla Angelina
163	SRI NURASIH (PTS BKS)
164	Tjong Dewi
165	Mutiah Wijayanti
166	Saskia Dea Septiani
167	Fitri Rachmadona
168	Lita
169	Siti Anisyah
170	Verra Randing
171	isyana ratu azizah
172	Dewi Ps
173	Andini T. H.
174	nuryanti 
175	Emilda
176	devi
177	Lita Oktavianti
178	Raysisca Elvide
179	Yayah
180	Indri P
181	Puput
182	Andini Prastica
183	Dyah Purwaningtyas
184	Imas Solihat
185	Eva Kurniawati
186	Rahel H
187	Siti Shofiah
188	Wisto Candra Wati
189	lisa anggraeni 
190	Maemunah
191	Ridha Abdillah
192	Ira Melia R
193	Kusnul Mei Hardini
194	Fathin
195	Sandra
196	Mega Yanuarti
197	Adellya Puput
198	Putri Hernawati
199	Rani Novya
200	Halimah
201	Dita Parwati
202	Soraya Putri M
203	Erliasari
204	Denina Putri Wy
205	Syarie
206	Sumitri
207	Suciati
208	Novi Nurfitrah
209	Yhanti Ghofar
210	Giza Amalia
211	Elis Sri Wahyuni
212	Darwati
213	Amelia Dwi Sartika
214	Welina
215	Ayun
216	Silvany Normalita
217	Pittinty
218	Puspita (shopee)
219	Erna
220	Gian Prayoga
221	Nurhayati
222	Ernas
223	Mutiara Putri (pts Sukabumi)
224	Yanti Nurapriyanti
225	Walma
226	Suniti
227	Resti widia Sari
228	Diana Ariestyarini
229	Evi Kristina
230	Mega Kartikawati
231	Nur Susilowati
232	Rosi Rozalina
233	Maria
234	Sarah Yunisha
235	Wiwit Murtiningsih
236	Melia Azzahra Hasbi
237	Arini
238	cahaya 
239	LOUHI
240	Ela Melia Nurcahya
241	Octivia
242	Anis
243	Rabiatul Adawiah
244	Ida Wida Ninggsih
245	Virlyvia
246	Siti Nurul Quaini
247	Devi Achni
248	Riska Latifah (Kuningan 1598)
249	Nuryatun
250	Ellen Law
251	Hanni Cintya Munardi
252	rahma  aisiyyah
253	Dwi Oktrandini (GRD30173)
254	Nurul Fajriyah
255	Yosephine
256	Ripani Purba (bsd)
257	Sarah Rahmah
258	Maesi
259	Nur Rahma
260	Juli Rachmila
261	Anita Hermawan
262	Iffat
263	Dehan
264	Laeli Sumartati
265	Ika Veronika
266	Olga Noersaphira
267	Rini Surtini Yusuf
268	Tri Wahyuni (pts Cirebon)
269	Revita Nuraeni
270	Ernny Yusnita
271	Pinaka Fitri Mayasari ( Emc Cirebon )
272	Ariani Sitepu
273	Evi Gustina
274	Aqilla Yumna Hasnanisa
275	Dewinta Furganawati Salam
276	Rina Ariyanti
277	MHD Rizal Hasibuan
278	Dilla (pts Tasik)
279	Susania Novita Putri
280	rika 
281	Neneng Rosita
282	Vera
283	Margaretta
284	Nurul Khoirumnisya ( Pts Bsd)
285	Pipit Prihartini
286	Nurlia
287	Widha (Sukabumi)
288	Wuri Indrastuti
289	Dila Rahma
290	Evi (pts bsd)
291	Rani
292	Aini Bintuhasbi
293	Siska
294	Welly
295	Citra R.A (PTS BKS)
296	Putik Larasari
297	Dwi Setia Rini
298	Putri Handayani
299	Tazkia Narulita A
300	Siti Wimaisih
301	mega rini 
302	Liswatun Naimah
303	Retno Firdiani
304	Amalin Azizah
305	Dwi Julianti
306	Tarmini
307	Legawati
308	Elmy
309	hadid walidain
310	Selvy Letlora
311	Ika Wulandari
312	SAVIRA
313	Ema Robiati 
314	TANIA 
315	Desy Navatilova
316	Robiah
317	novita sari 
318	Mekka Medhina
319	Khonsa Syahidah
320	Audi Aurelia Ali 
321	Susi Mintari
322	egi ratna juwita
323	Syaiful Anwar
324	Ermayanti 
325	Tri Agustina
326	Anggi
327	Indah S
328	Juliana safitri
329	FARIDA SARAH
330	Yusi Nabela
331	Yaqut hidayanti
332	Sariningsih
333	Leonita T
334	Lilis Kurnia
335	Cut Mahdarisa
336	Nabila A Mashabi
337	Novita Pitri
338	Lilik Susilowati
339	AYU RAHAYU (PTS KNG)
340	Latifah
341	Boen We Ling
342	Maulydia
343	Dila T.s (pts Bsd)
344	Rilistya Wahyu Dwi Untari
345	Liliana Alie
346	Dwi Andini P
347	WIDA SAPUTRI D
348	Laila Khairani
349	Maryam Roswita Sari
350	asri fitri kuningan
351	Dilla
352	Elda Wahyu
353	Tessa Vinasty
354	Mery Mercy
355	Vauziah Rahmi
356	Dara Wanda 
357	Susan
358	Laylie Vianda
359	Stephanie Karismawati
360	Martha Indah Wahyuni
361	Merry Emawati
362	Rika Indah Citra
363	Siti Nurohmah
364	Emy Daryanti
365	Sheila Aprilia Putri
\.


--
-- Data for Name: list_produk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.list_produk (id_produk, kategori, kode, pack, stok, harga) FROM stdin;
101	KRIM MALAM	NCF1	Pot 10 g	35	55000
102	KRIM MALAM	NCF2	Pot 10 g	24	65000
103	KRIM MALAM	NCM2	Pot 10 g	25	70000
104	KRIM MALAM	NCM3	Pot 10 g	38	70000
105	KRIM MALAM	NCA2	Pot 10 g	52	65000
106	KRIM MALAM	NCA3	Pot 10 g	33	70000
107	KRIM MALAM	AH2	Pot 10 g	11	50000
108	KRIM MALAM	AF3	Pot 5 gr	49	55000
109	KRIM MALAM	NCHT	Pot 10 gr	62	60000
110	KRIM MALAM	ANC	Pot 10 gr	12	65000
111	KRIM MALAM	NCT	Pot 10 gr	30	50000
112	KRIM MALAM	RL	Botol 30 ml	45	70000
113	KRIM MALAM	NCHT-1	Pot 10 gr	60	50000
114	KRIM MALAM	NCHT-2	Pot 10 gr	13	50000
115	KRIM MALAM	NCA1	Pot 10 gr	13	55000
116	KRIM MALAM	NANO WHITE-1	Pot 10 gr	14	115000
117	KRIM MALAM	NANO WHITE-2	Pot 10 gr	32	125000
118	KRIM MALAM	ANTI OXIDANT	Pot 10 gr	29	70000
119	KRIM PAGI	MP	Pot 10 g	58	60000
120	KRIM PAGI	AP	Pot 10 g	41	65000
121	KRIM PAGI	BC1	Pot 10 g	55	65000
122	KRIM PAGI	BC2	Pot 5 g	62	55000
123	KRIM PAGI	AH1	Pot 10 g	46	50000
124	KRIM PAGI	NT	Pot 10 g	43	65000
125	KRIM PAGI	WH2	Pot 10 g	12	65000
126	KRIM PAGI	NS	Pot 10 g	23	55000
127	KRIM PAGI	DAY SPRAY	Botol 30 mL	20	70000
128	KRIM PAGI	BC3	Pot 10 g	57	55000
129	TABIR SURYA	SB1	Pot 10 g	60	50000
130	TABIR SURYA	SB2	Pot 10 g	28	55000
131	TABIR SURYA	SB3	Pot 10 g	48	55000
132	TABIR SURYA	SB4	Pot 10 g	26	60000
133	TABIR SURYA	SB SPF 50	Pot 10 g	38	100000
134	CLEANSER	FW1	Botol 100 ml	16	60000
135	CLEANSER	FW2	Botol 100 ml	17	60000
136	CLEANSER	TO1	Botol 100 ml	13	50000
137	CLEANSER	TO2	Botol 100 ml	48	50000
138	CLEANSER	CM	Botol 100 ml	36	50000
139	SERUM	WHITENING	Botol 20 ml	39	110000
140	SERUM	VIT C 20	Botol 20 ml	17	110000
141	SERUM	SERUM GOLD BRIGHT	Botol 20 ml	42	165000
142	SERUM	SERUM ACNE 	Botol 9 ml	13	80000
143	SERUM	DERMACEPT 10%	Btl 10ml	12	55000
144	SERUM	DERMACEPT 15%	Btl 10ml	12	285000
145	SERUM	REJUVENATING SERUM	Botol 15 ml	24	245000
146	SERUM	ANTI BLEMISH	Botol 9 ml	13	85000
147	SUPPORT	ANTI IRITASI 	Pot 5 g	43	30000
148	SUPPORT	EYE BAG GEL	Pot 5 g	58	50000
149	SUPPORT	CALMING CREAM 	Pot 10 g	34	50000
150	SUPPORT	ANTI WRINKLE	Pot 5 g	47	200000
151	SUPPORT	SALEP G	Pot 5 g	57	25000
152	SUPPORT	SALEP T	Pot 5 g	10	50000
153	SUPPORT	REPAIR EYE CREAM	Pot 5 g	64	80000
154	SUPPORT	REJUVENATING CREAM	Pot 10 g	48	195000
155	SUPPORT	SOOTHING CREAM	Pot 10gr	62	55000
156	DECORATIVE	NATURAL 	Pot 20 g	44	70000
157	DECORATIVE	MINERAL	Pot 20 g	31	75000
158	DECORATIVE	LP1	Pot 20 g	58	70000
159	DECORATIVE	LP2	Pot 20 g	53	70000
160	DECORATIVE	LP3	Pot 20 g	61	70000
161	DECORATIVE	LP4	Pot 20 g	52	120000
162	DECORATIVE	CP1	Pot 20 g	12	120000
163	DECORATIVE	CYX AIR CUSHION FOUNDATION - SOFT BEIGE	Pot 20 g	57	120000
164	DECORATIVE	CYX AIR CUSHION FOUNDATION - NATURAL	Pot 20 g	10	120000
165	DECORATIVE	CC CREAM	Pot 5 gr	49	70000
166	DECORATIVE	BB GOLD CREAM SPF 30	Pot 10gr	36	85000
167	BODY_CARE	DAY BODY LOTION	Botol 120 ml	26	85000
168	BODY_CARE	NIGHT BODY LOTION	Botol 120 ml	14	85000
169	BODY_CARE	SLIMMING CREAM 	Pot 50 gr	25	95000
170	BODY_CARE	SLIMMING GEL	Botol 120 ml	37	95000
171	BODY_CARE	UNDERARM WHITENING 	Tube 30 g	59	70000
172	BODY_CARE	STRETCH MARK	Tube 50 g	15	95000
173	TEENS	WHITE NIGHT CREAM TEENS	pot 10 gr	57	60000
174	TEENS	WHITE DAY CREAM TEENS	pot 10 gr	61	50000
175	TEENS	WHITE FACIAL WASH TEENS	btl 100ml	49	50000
176	TEENS	WHITE TONER TEENS	btl 100ml	22	45000
177	TEENS	ACNE NIGHT CREAM TEENS	pot 10 gr	23	60000
178	TEENS	ACNE DAY CREAM TEENS	pot 10 gr	22	50000
179	TEENS	ACNE FACIAL WASH TEENS	btl 100ml	38	50000
180	TEENS	ACNE TONER TEENS	btl 100ml	33	45000
181	ALAT & SERUM MESOTHERAPY	ALAT DERMAROLLER	pcs	41	250000
182	MEDICINE	CLYNDAMYCIN 150	CAPSUL	50	1800
183	MEDICINE	CLYNDAMYCIN 300	CAPSUL	28	2600
184	MEDICINE	ZINK	CAPSUL	36	1800
185	MEDICINE	DOXYLINE	CAPSUL	61	1800
186	SUPLEMEN	PYNOCARE	BLIS @ 10 CAP	24	135000
187	SUPLEMEN	PYNOCARE WHITE	BLIS @ 10 CAP	46	175000
188	SUPLEMEN	ACNACARE	BLIS @ 10 CAP	51	90000
189	SUPLEMEN	GLOW	BLIS @ 10 CAP	16	90000
190	SUPLEMEN	WHITE BEAUTY	BLIS @ 10 CAP	17	60000
191	SUPLEMEN	SLIMMING CAPS 	BOTOL @ 30 CAP	27	315000
\.


--
-- Data for Name: tx_jasa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tx_jasa (id_transaksi, id_pelanggan, id_jasa, tanggal) FROM stdin;
6001	121	201	2018-10-01
6002	114	201	2018-10-01
6003	308	204	2018-10-01
6004	330	204	2018-10-01
6005	348	204	2018-10-01
6006	341	210	2018-10-01
6007	162	202	2018-10-01
6008	152	217	2018-10-01
6009	173	201	2018-10-01
6010	170	201	2018-10-02
6011	178	201	2018-10-02
6012	169	201	2018-10-02
6013	106	201	2018-10-02
6014	115	201	2018-10-02
6015	100	202	2018-10-02
6016	110	200	2018-10-02
6017	200	200	2018-10-03
6018	227	216	2018-10-03
6019	246	220	2018-10-03
6020	236	203	2018-10-03
6021	142	202	2018-10-03
6022	145	202	2018-10-03
6023	148	202	2018-10-03
6024	315	225	2018-10-03
6025	336	200	2018-10-04
6026	348	201	2018-10-04
6027	227	201	2018-10-04
6028	192	201	2018-10-04
6029	166	201	2018-10-04
6030	292	202	2018-10-04
6031	309	202	2018-10-05
6032	312	202	2018-10-05
6033	252	225	2018-10-05
6034	272	200	2018-10-05
6035	296	201	2018-10-05
6036	108	201	2018-10-05
6037	132	200	2018-10-06
6038	192	204	2018-10-06
6039	158	204	2018-10-06
6040	349	210	2018-10-06
6041	318	202	2018-10-06
6042	324	217	2018-10-06
6043	298	201	2018-10-07
6044	272	201	2018-10-07
6045	275	202	2018-10-07
6046	208	202	2018-10-07
6047	234	201	2018-10-07
6048	236	201	2018-10-07
6049	173	202	2018-10-07
6050	132	200	2018-10-07
6051	210	200	2018-10-08
6052	221	239	2018-10-08
6053	274	204	2018-10-08
6054	275	204	2018-10-08
6055	262	210	2018-10-08
6056	263	202	2018-10-08
6057	207	217	2018-10-08
6058	199	201	2018-10-09
6059	210	201	2018-10-09
6060	118	202	2018-10-09
6061	267	201	2018-10-09
6062	307	201	2018-10-09
6063	311	201	2018-10-09
6064	328	202	2018-10-10
6065	237	200	2018-10-10
6066	220	204	2018-10-10
6067	208	210	2018-10-10
6068	192	202	2018-10-11
6069	121	217	2018-10-11
6070	102	201	2018-10-11
6071	141	201	2018-10-11
6072	137	201	2018-10-11
6073	145	201	2018-10-12
6074	304	201	2018-10-12
6075	305	232	2018-10-12
6076	289	202	2018-10-12
6077	290	200	2018-10-12
6078	199	200	2018-10-13
6079	184	216	2018-10-13
6080	299	220	2018-10-13
6081	293	203	2018-10-13
6082	273	202	2018-10-13
6083	279	202	2018-10-13
6084	260	202	2018-10-14
6085	121	225	2018-10-14
6086	120	200	2018-10-14
6087	204	201	2018-10-14
6088	250	201	2018-10-14
6089	245	201	2018-10-14
6090	218	202	2018-10-14
6091	200	217	2018-10-14
6092	225	201	2018-10-14
6093	240	220	2018-10-15
6094	170	203	2018-10-15
6095	178	202	2018-10-15
6096	240	202	2018-10-15
6097	245	202	2018-10-15
6098	260	202	2018-10-15
6099	251	200	2018-10-15
6100	346	200	2018-10-15
\.


--
-- Data for Name: tx_produk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tx_produk (id_transaksi, id_pelanggan, id_produk, jumlah, tanggal) FROM stdin;
5001	102	144	2	2018-10-01
5002	170	167	1	2018-10-02
5003	336	165	1	2018-10-15
5004	178	153	2	2018-10-02
5005	169	157	1	2018-10-02
5006	204	176	1	2018-10-02
5007	207	106	1	2018-10-02
5008	199	101	2	2018-10-02
5009	210	125	2	2018-10-02
5010	200	131	1	2018-10-03
5011	227	117	1	2018-10-03
5012	246	141	1	2018-10-03
5013	141	139	3	2018-10-01
5014	236	133	1	2018-10-03
5015	240	154	1	2018-10-03
5016	245	148	2	2018-10-03
5017	260	107	3	2018-10-03
5018	251	102	1	2018-10-03
5019	346	106	1	2018-10-04
5020	348	120	2	2018-10-04
5021	227	114	2	2018-10-04
5022	192	124	2	2018-10-04
5023	166	165	1	2018-10-04
5024	137	153	1	2018-10-01
5025	208	156	1	2018-10-04
5026	234	165	1	2018-10-05
5027	236	177	2	2018-10-05
5028	252	183	5	2018-10-05
5029	272	188	1	2018-10-05
5030	296	164	1	2018-10-05
5031	308	150	1	2018-10-05
5032	330	125	2	2018-10-06
5033	348	134	1	2018-10-06
5034	341	111	1	2018-10-06
5035	145	156	2	2018-10-01
5036	349	114	1	2018-10-06
5037	318	126	1	2018-10-06
5038	324	106	2	2018-10-06
5039	298	129	3	2018-10-07
5040	272	126	1	2018-10-07
5041	275	143	2	2018-10-07
5042	292	137	2	2018-10-07
5043	309	140	1	2018-10-07
5044	312	120	2	2018-10-07
5045	304	109	1	2018-10-07
5046	132	128	2	2018-10-01
5047	305	115	1	2018-10-07
5048	289	115	1	2018-10-08
5049	290	117	1	2018-10-08
5050	274	103	1	2018-10-08
5051	275	132	2	2018-10-08
5052	262	167	5	2018-10-08
5053	263	153	1	2018-10-08
5054	250	157	1	2018-10-08
5055	237	176	1	2018-10-09
5056	220	117	2	2018-10-09
5057	158	115	1	2018-10-01
5058	208	141	1	2018-10-09
5059	192	133	1	2018-10-09
5060	120	154	1	2018-10-09
5061	106	148	1	2018-10-09
5062	115	107	3	2018-10-10
5063	100	144	1	2018-10-10
5064	110	139	1	2018-10-10
5065	118	153	2	2018-10-10
5066	121	156	2	2018-10-11
5067	121	120	1	2018-10-11
5068	162	117	1	2018-10-01
5069	121	114	1	2018-10-11
5070	114	124	1	2018-10-11
5071	108	165	1	2018-10-11
5072	132	156	1	2018-10-12
5073	173	165	2	2018-10-12
5074	192	177	2	2018-10-12
5075	210	164	1	2018-10-12
5076	221	150	1	2018-10-12
5077	199	125	1	2018-10-13
5078	184	134	1	2018-10-13
5079	152	103	1	2018-10-01
5080	299	111	2	2018-10-13
5081	293	114	1	2018-10-13
5082	273	136	1	2018-10-13
5083	279	155	1	2018-10-13
5084	260	114	1	2018-10-14
5085	267	126	2	2018-10-14
5086	307	106	1	2018-10-14
5087	311	129	2	2018-10-14
5088	328	126	1	2018-10-14
5089	245	106	1	2018-10-14
5090	173	132	3	2018-10-01
5091	218	101	1	2018-10-14
5092	200	125	1	2018-10-14
5093	225	184	10	2018-10-14
5094	240	159	2	2018-10-15
5095	170	183	2	2018-10-15
5096	178	110	1	2018-10-15
5097	142	127	1	2018-10-15
5098	145	138	1	2018-10-15
5099	148	152	2	2018-10-15
5100	315	160	1	2018-10-15
\.


--
-- Name: list_jasa_id_jasa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.list_jasa_id_jasa_seq', 1, false);


--
-- Name: list_produk_id_produk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.list_produk_id_produk_seq', 1, false);


--
-- Name: tx_jasa_id_transaksi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tx_jasa_id_transaksi_seq', 1, false);


--
-- Name: tx_produk_id_transaksi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tx_produk_id_transaksi_seq', 1, false);


--
-- PostgreSQL database dump complete
--

