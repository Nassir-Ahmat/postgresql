--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

-- Started on 2022-01-27 09:53:47 WAT

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
-- TOC entry 203 (class 1259 OID 16461)
-- Name: docteur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.docteur (
    id_doc integer NOT NULL,
    nom character varying(100),
    prenom character varying(100),
    telephone character varying(100),
    quartier character varying(100)
);


ALTER TABLE public.docteur OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16459)
-- Name: docteur_id_doc_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.docteur_id_doc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.docteur_id_doc_seq OWNER TO postgres;

--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 202
-- Name: docteur_id_doc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.docteur_id_doc_seq OWNED BY public.docteur.id_doc;


--
-- TOC entry 205 (class 1259 OID 16469)
-- Name: medicament; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicament (
    id_med integer NOT NULL,
    nom character varying(150),
    description text
);


ALTER TABLE public.medicament OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16467)
-- Name: medicament_id_med_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.medicament_id_med_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medicament_id_med_seq OWNER TO postgres;

--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 204
-- Name: medicament_id_med_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.medicament_id_med_seq OWNED BY public.medicament.id_med;


--
-- TOC entry 207 (class 1259 OID 16480)
-- Name: patient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patient (
    id_pa integer NOT NULL,
    nom character varying(100),
    prenom character varying(100),
    ville character varying(100),
    telephone character varying(100)
);


ALTER TABLE public.patient OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16478)
-- Name: patient_id_pa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patient_id_pa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patient_id_pa_seq OWNER TO postgres;

--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 206
-- Name: patient_id_pa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patient_id_pa_seq OWNED BY public.patient.id_pa;


--
-- TOC entry 209 (class 1259 OID 16499)
-- Name: prescription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prescription (
    id_pres integer NOT NULL,
    patient_id integer NOT NULL,
    medicament_id integer NOT NULL,
    posologie text
);


ALTER TABLE public.prescription OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16497)
-- Name: prescription_id_pres_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prescription_id_pres_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prescription_id_pres_seq OWNER TO postgres;

--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 208
-- Name: prescription_id_pres_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prescription_id_pres_seq OWNED BY public.prescription.id_pres;


--
-- TOC entry 211 (class 1259 OID 16520)
-- Name: visite; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.visite (
    id_vi integer NOT NULL,
    date_visite date,
    prix character varying(150),
    docteur_id integer NOT NULL,
    patient_id integer NOT NULL
);


ALTER TABLE public.visite OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16518)
-- Name: visite_id_vi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visite_id_vi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visite_id_vi_seq OWNER TO postgres;

--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 210
-- Name: visite_id_vi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visite_id_vi_seq OWNED BY public.visite.id_vi;


--
-- TOC entry 2866 (class 2604 OID 16464)
-- Name: docteur id_doc; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docteur ALTER COLUMN id_doc SET DEFAULT nextval('public.docteur_id_doc_seq'::regclass);


--
-- TOC entry 2867 (class 2604 OID 16472)
-- Name: medicament id_med; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicament ALTER COLUMN id_med SET DEFAULT nextval('public.medicament_id_med_seq'::regclass);


--
-- TOC entry 2868 (class 2604 OID 16483)
-- Name: patient id_pa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patient ALTER COLUMN id_pa SET DEFAULT nextval('public.patient_id_pa_seq'::regclass);


--
-- TOC entry 2869 (class 2604 OID 16502)
-- Name: prescription id_pres; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prescription ALTER COLUMN id_pres SET DEFAULT nextval('public.prescription_id_pres_seq'::regclass);


--
-- TOC entry 2870 (class 2604 OID 16523)
-- Name: visite id_vi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visite ALTER COLUMN id_vi SET DEFAULT nextval('public.visite_id_vi_seq'::regclass);


--
-- TOC entry 3012 (class 0 OID 16461)
-- Dependencies: 203
-- Data for Name: docteur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.docteur (id_doc, nom, prenom, telephone, quartier) FROM stdin;
1	Wendeline	Chugg	(108) 8036569	Summerview
2	Dov	Simonsson	(297) 1859028	Duke
3	Sarine	Mithon	(215) 9010741	Eggendart
4	Benjy	Beamson	(745) 2463413	Riverside
5	Regan	Leibold	(619) 4717004	Cherokee
6	Mathew	Ashcroft	(121) 8101608	Village Green
7	Lucas	Oppy	(736) 5763716	Bobwhite
8	Arvin	Pickles	(930) 3376049	East
9	Vyky	Ebbins	(481) 2682438	Namekagon
10	Ashien	Boules	(504) 4708608	Vera
11	Shaughn	Kindred	(503) 7710697	Oneill
12	Brandea	Howard - Gater	(835) 6653701	Pawling
13	Alena	Horrigan	(696) 6189318	Norway Maple
14	Candra	Tomlins	(902) 3964501	Hovde
15	Meier	Sedgman	(588) 6080259	Karstens
16	Barrie	Burnard	(933) 1892203	Nevada
17	Annelise	Casper	(144) 3440766	Mallory
18	Annabela	Binne	(569) 7208769	Lindbergh
19	Milissent	Pickton	(934) 2219013	Sundown
20	Bradly	Whipple	(654) 3055751	Ilene
21	Cyndi	Depper	(388) 6514243	Maywood
22	Opaline	Stowgill	(814) 2248600	Eastlawn
23	Damian	Burfield	(392) 6725199	Dorton
24	Rosamund	Filliskirk	(991) 7412122	Ruskin
25	Dorotea	Buckam	(699) 4175029	Harper
26	Minnnie	Bru	(355) 3266647	Stephen
27	Neddy	Gooderson	(814) 2656179	Pankratz
28	Patricia	MacGown	(191) 2168449	Hayes
29	Jaine	Trynor	(508) 8095331	Kenwood
30	Zonnya	Anwyl	(535) 7571498	Debra
31	Linn	McGannon	(460) 4217026	Garrison
32	Taryn	Bowler	(690) 8911463	Northland
33	Rhiamon	Phetteplace	(833) 9935792	Tennyson
34	Ophelie	Dies	(569) 3984795	Colorado
35	Leisha	Allett	(768) 8438157	Mayfield
36	Morten	Waldron	(736) 3166342	Hallows
37	Kate	Jurgenson	(297) 3438441	Corscot
38	Renelle	Peschmann	(387) 9830149	Mosinee
39	Lief	Boulton	(451) 7947194	Lake View
40	Harlie	Cockarill	(387) 4943357	Dakota
41	Tamiko	Mathison	(192) 7144930	Forest
42	Stern	Mirando	(684) 2380611	Bay
43	Tova	Cliff	(789) 8045220	Washington
44	Merrel	Brabban	(534) 8966819	Esch
45	Marylinda	Twaite	(860) 5221874	Sloan
46	Skyler	Conrard	(877) 7185649	Rockefeller
47	Marylynne	Rolfo	(835) 6283810	Katie
48	Kimmy	McCrow	(219) 2226574	Amoth
49	Emmery	Went	(699) 9222059	Oak Valley
50	Maximilien	Duddy	(619) 1525403	Fallview
51	Moise	Beiderbecke	(646) 4521929	Autumn Leaf
52	Sibyl	Ryland	(923) 2062292	Spohn
53	Chloris	Estcot	(170) 4800140	Becker
54	Ty	Kneesha	(375) 6884666	Hallows
55	Nisse	Patnelli	(498) 3020429	Lake View
56	Jilleen	Colmer	(260) 2810112	Petterle
57	Neel	Wimlet	(694) 9870477	Brentwood
58	Jo-ann	Gyngell	(602) 6507160	Rutledge
59	Dyann	Gaskarth	(599) 7911693	Iowa
60	Bailie	Cuss	(506) 4672661	Morningstar
61	Leelah	Swede	(990) 2060187	Farmco
62	Darice	Dahle	(739) 1052295	Novick
63	Stillmann	Janaszkiewicz	(385) 5428262	Spaight
64	Gilbert	Osipov	(132) 1335377	Mesta
65	Eilis	Shipman	(915) 6859291	Forest Dale
66	Yvor	Cessford	(157) 2254810	Katie
67	Molly	Thredder	(498) 9617180	Quincy
68	Gusty	Loveday	(221) 4049084	Straubel
69	Toni	McInally	(609) 9993375	Texas
70	Aurea	Chimienti	(657) 1710213	Hermina
71	Fara	McNutt	(841) 2720453	Oneill
72	Lulita	Jerrom	(203) 6522817	Main
73	Cassey	Dominichelli	(460) 3096037	Thackeray
74	Lionel	Stebbin	(882) 4198404	Almo
75	Zaccaria	Jent	(848) 6506594	Loeprich
76	Leilah	Hurdedge	(158) 4593917	Cordelia
77	Tuesday	Mechell	(589) 7862655	Granby
78	Feodora	Hubbock	(100) 4298130	Donald
79	Lizabeth	Gumery	(589) 3932973	Petterle
80	Fayette	Boanas	(299) 6674751	Buena Vista
81	Berenice	Trundler	(422) 2218643	Daystar
82	Pegeen	Woolpert	(930) 3499266	Russell
83	Farleigh	Veque	(389) 4694543	Holmberg
84	Adrian	Bourchier	(786) 5342673	Pine View
85	Gretchen	Knibbs	(937) 9065547	Burrows
86	Carly	Sulman	(481) 8828737	Chive
87	Jodie	Wales	(219) 5278544	Annamark
88	Selie	Kinnin	(213) 2815015	Spenser
89	Hedwiga	Brashaw	(351) 2582328	Buena Vista
90	Merrel	Hunting	(732) 2940336	Prairie Rose
91	Marthena	Stelli	(176) 7594815	Sloan
92	Addy	O'Corrane	(646) 3527525	Graceland
93	Pavia	Blesdill	(440) 6846218	Dixon
94	Angie	Richardes	(175) 2978584	Merry
95	Mendy	Kyles	(185) 1694225	Autumn Leaf
96	Elisabetta	Pigney	(373) 7204135	Havey
97	Miguela	Crassweller	(901) 3011559	Hollow Ridge
98	Violette	Javes	(909) 2274782	Comanche
99	Charlie	Gillfillan	(871) 5929939	Blackbird
100	Taryn	Wyldes	(203) 5848813	Fallview
\.


--
-- TOC entry 3014 (class 0 OID 16469)
-- Dependencies: 205
-- Data for Name: medicament; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medicament (id_med, nom, description) FROM stdin;
1	False Ragweed	49ce7c0342f1125721208fc2eddd5bb1064f92d7
2	Topiclear Xtra beauty	49ce7c0342f1125721208fc2eddd5bb1064f92d7
3	GUAAP	49ce7c0342f1125721208fc2eddd5bb1064f92d7
4	Levetiracetam	49ce7c0342f1125721208fc2eddd5bb1064f92d7
5	Pramipexole	49ce7c0342f1125721208fc2eddd5bb1064f92d7
6	Librium	49ce7c0342f1125721208fc2eddd5bb1064f92d7
7	PediaCare Infants Gas Relief Dye Free	49ce7c0342f1125721208fc2eddd5bb1064f92d7
8	Theophylline	49ce7c0342f1125721208fc2eddd5bb1064f92d7
9	RANITIDINE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
10	METFORMIN HYDROCHLORIDE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
11	Tacrolimus	49ce7c0342f1125721208fc2eddd5bb1064f92d7
12	Ice Quake	49ce7c0342f1125721208fc2eddd5bb1064f92d7
13	Benazepril Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
14	Candida albicans	49ce7c0342f1125721208fc2eddd5bb1064f92d7
15	healthy accents triple antibiotic	49ce7c0342f1125721208fc2eddd5bb1064f92d7
16	Ferrum Quartz	49ce7c0342f1125721208fc2eddd5bb1064f92d7
17	Female Energy	49ce7c0342f1125721208fc2eddd5bb1064f92d7
18	Octreotide acetate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
19	Caduet	49ce7c0342f1125721208fc2eddd5bb1064f92d7
20	Cimetidine Hydrochloride Oral Solution	49ce7c0342f1125721208fc2eddd5bb1064f92d7
21	flu and sore throat	49ce7c0342f1125721208fc2eddd5bb1064f92d7
22	Premarin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
23	Curly Dock	49ce7c0342f1125721208fc2eddd5bb1064f92d7
24	Budesonide	49ce7c0342f1125721208fc2eddd5bb1064f92d7
25	PEANUTS ANTI-CAVITY FLUORIDE TOOTHPASTE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
26	SNAIL THERAPY 80 EMULSION	49ce7c0342f1125721208fc2eddd5bb1064f92d7
27	KEYTRUDA	49ce7c0342f1125721208fc2eddd5bb1064f92d7
28	ADSOL Red Cell Preservation Solution System in Plastic Container (PL 146 Plastic)	49ce7c0342f1125721208fc2eddd5bb1064f92d7
29	Childrens Allergy Relief	49ce7c0342f1125721208fc2eddd5bb1064f92d7
30	Levocetirizine Dihydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
31	Amitriptyline Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
32	Chlorpromazine Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
33	Propranolol Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
34	meloxicam	49ce7c0342f1125721208fc2eddd5bb1064f92d7
35	Athletes Foot	49ce7c0342f1125721208fc2eddd5bb1064f92d7
36	Erythromycin and Benzoyl Peroxide	49ce7c0342f1125721208fc2eddd5bb1064f92d7
37	Cold Spot	49ce7c0342f1125721208fc2eddd5bb1064f92d7
38	Eco.kid	49ce7c0342f1125721208fc2eddd5bb1064f92d7
39	ZIT ERASER	49ce7c0342f1125721208fc2eddd5bb1064f92d7
40	Clemastine Fumarate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
41	Male Stimulant	49ce7c0342f1125721208fc2eddd5bb1064f92d7
42	UV ESSENTIEL	49ce7c0342f1125721208fc2eddd5bb1064f92d7
43	Lamotrigine	49ce7c0342f1125721208fc2eddd5bb1064f92d7
44	ONDANSETRON	49ce7c0342f1125721208fc2eddd5bb1064f92d7
45	Colgate Total Zx Pro-Shield Plus Sensitive	49ce7c0342f1125721208fc2eddd5bb1064f92d7
46	Balahist	49ce7c0342f1125721208fc2eddd5bb1064f92d7
47	sunmark	49ce7c0342f1125721208fc2eddd5bb1064f92d7
48	LYM	49ce7c0342f1125721208fc2eddd5bb1064f92d7
49	Ampicillin and Sulbactam	49ce7c0342f1125721208fc2eddd5bb1064f92d7
50	a d	49ce7c0342f1125721208fc2eddd5bb1064f92d7
51	IT RADIANT CC CUSHION	49ce7c0342f1125721208fc2eddd5bb1064f92d7
52	Quetiapine fumarate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
53	Covergirl Outlast Stay Fabulous 3in1 Foundation	49ce7c0342f1125721208fc2eddd5bb1064f92d7
54	Arava	49ce7c0342f1125721208fc2eddd5bb1064f92d7
55	Sulfamethoxazole and Trimethoprim	49ce7c0342f1125721208fc2eddd5bb1064f92d7
56	smart sense miconazole 1	49ce7c0342f1125721208fc2eddd5bb1064f92d7
57	Dicyclomine	49ce7c0342f1125721208fc2eddd5bb1064f92d7
58	Nefazodone Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
59	pain relief	49ce7c0342f1125721208fc2eddd5bb1064f92d7
60	Double Antibiotic Plus Pain Relief	49ce7c0342f1125721208fc2eddd5bb1064f92d7
61	Risperidone	49ce7c0342f1125721208fc2eddd5bb1064f92d7
62	Dicyclomine	49ce7c0342f1125721208fc2eddd5bb1064f92d7
63	BLACK OLIVE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
64	Food - Plant Source, Cashew Nut Anacardium occidentalie	49ce7c0342f1125721208fc2eddd5bb1064f92d7
65	Orphenadrine Citrate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
66	Meprobamate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
67	zinc oxide	49ce7c0342f1125721208fc2eddd5bb1064f92d7
68	GAS	49ce7c0342f1125721208fc2eddd5bb1064f92d7
69	smart sense ibuprofen pm	49ce7c0342f1125721208fc2eddd5bb1064f92d7
70	Potassium Chloride in Dextrose and Sodium Chloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
71	Cephalexin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
72	Cefazolin Sodium	49ce7c0342f1125721208fc2eddd5bb1064f92d7
73	Rabbit Hair	49ce7c0342f1125721208fc2eddd5bb1064f92d7
74	Bupivacaine Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
75	Greasewood Pollen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
76	Lisinopril and hydrochlorothiazide	49ce7c0342f1125721208fc2eddd5bb1064f92d7
77	Triple Complex Mood Tonic	49ce7c0342f1125721208fc2eddd5bb1064f92d7
78	Methimazole	49ce7c0342f1125721208fc2eddd5bb1064f92d7
79	Mucus Relief	49ce7c0342f1125721208fc2eddd5bb1064f92d7
80	Benicar Hct	49ce7c0342f1125721208fc2eddd5bb1064f92d7
81	Desempacho	49ce7c0342f1125721208fc2eddd5bb1064f92d7
82	Diltiazem Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
83	AcipHex	49ce7c0342f1125721208fc2eddd5bb1064f92d7
84	pain reliever pm	49ce7c0342f1125721208fc2eddd5bb1064f92d7
85	Viscum Belladonna	49ce7c0342f1125721208fc2eddd5bb1064f92d7
86	Ropinirole Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
87	ClearCalm 3 Anti-Acne Starter	49ce7c0342f1125721208fc2eddd5bb1064f92d7
88	BOTRYTIS CINEREA	49ce7c0342f1125721208fc2eddd5bb1064f92d7
89	CLE DE PEAU BEAUTE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
90	FEXOFENADINE HYDROCHLORIDE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
91	Cefaclor	49ce7c0342f1125721208fc2eddd5bb1064f92d7
92	Pure Oral hCG	49ce7c0342f1125721208fc2eddd5bb1064f92d7
93	Simply Sleep	49ce7c0342f1125721208fc2eddd5bb1064f92d7
94	Banana Boat Sport Performance Active Dry protect	49ce7c0342f1125721208fc2eddd5bb1064f92d7
95	Arneu	49ce7c0342f1125721208fc2eddd5bb1064f92d7
96	Risperidone M-TAB	49ce7c0342f1125721208fc2eddd5bb1064f92d7
97	Ziprasidone Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
98	Pleo San Staph	49ce7c0342f1125721208fc2eddd5bb1064f92d7
99	Ranitidine	49ce7c0342f1125721208fc2eddd5bb1064f92d7
100	Paperbark Birch	49ce7c0342f1125721208fc2eddd5bb1064f92d7
101	acetylcysteine	49ce7c0342f1125721208fc2eddd5bb1064f92d7
102	Warfarin Sodium	49ce7c0342f1125721208fc2eddd5bb1064f92d7
103	Strawberry	49ce7c0342f1125721208fc2eddd5bb1064f92d7
104	Gabapentin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
105	COLGATE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
106	Being Well Adult Cough Relief DM	49ce7c0342f1125721208fc2eddd5bb1064f92d7
107	Hand Sanitizer	49ce7c0342f1125721208fc2eddd5bb1064f92d7
108	ADVAIR	49ce7c0342f1125721208fc2eddd5bb1064f92d7
109	TYLENOL COLD	49ce7c0342f1125721208fc2eddd5bb1064f92d7
110	Liquid B	49ce7c0342f1125721208fc2eddd5bb1064f92d7
111	LEVOTHYROXINE SODIUM	49ce7c0342f1125721208fc2eddd5bb1064f92d7
112	Ditropan	49ce7c0342f1125721208fc2eddd5bb1064f92d7
113	LISINOPRIL AND HYDROCHLOROTHIAZIDE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
114	Glytone skin bleaching fading	49ce7c0342f1125721208fc2eddd5bb1064f92d7
115	Divalproex Sodium	49ce7c0342f1125721208fc2eddd5bb1064f92d7
116	care one flu and severe cold and cough	49ce7c0342f1125721208fc2eddd5bb1064f92d7
117	Neosporin Plus Pain Relief Neo To Go First Aid Antiseptic Pain Relieving	49ce7c0342f1125721208fc2eddd5bb1064f92d7
118	risedronate sodium	49ce7c0342f1125721208fc2eddd5bb1064f92d7
119	Vibativ	49ce7c0342f1125721208fc2eddd5bb1064f92d7
120	Vigoril for Men	49ce7c0342f1125721208fc2eddd5bb1064f92d7
121	Lymph Drainage	49ce7c0342f1125721208fc2eddd5bb1064f92d7
122	leader sinus congestion and pain	49ce7c0342f1125721208fc2eddd5bb1064f92d7
123	PHENTERMINE HYDROCHLORIDE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
124	Vytorin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
125	Ribavirin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
126	KSS CLEAN HANDS ANTISEPTIC CLEANER	49ce7c0342f1125721208fc2eddd5bb1064f92d7
127	Curad Saline Laxative	49ce7c0342f1125721208fc2eddd5bb1064f92d7
128	Isosorbide	49ce7c0342f1125721208fc2eddd5bb1064f92d7
129	Fetzima	49ce7c0342f1125721208fc2eddd5bb1064f92d7
130	Carvedilol	49ce7c0342f1125721208fc2eddd5bb1064f92d7
131	LUBRIDERM	49ce7c0342f1125721208fc2eddd5bb1064f92d7
132	Zeel	49ce7c0342f1125721208fc2eddd5bb1064f92d7
133	Mango Spice Antibacterial Foaming Handwash	49ce7c0342f1125721208fc2eddd5bb1064f92d7
134	Lidocaine Hydrochloride and Dextrose	49ce7c0342f1125721208fc2eddd5bb1064f92d7
135	PENTOXIFYLLINE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
136	Mucinex Fast-Max Day Time Severe Congestion and Cough and Mucinex Fast-Max Night Time Cold and Flu	49ce7c0342f1125721208fc2eddd5bb1064f92d7
137	Glipizide and Metformin HCl	49ce7c0342f1125721208fc2eddd5bb1064f92d7
138	Preferred Plus Ibuprofen 200	49ce7c0342f1125721208fc2eddd5bb1064f92d7
139	All Day Pain Relief	49ce7c0342f1125721208fc2eddd5bb1064f92d7
140	PURELL Instant Hand Sanitizer Foam (ETHYL ALCOHOL)	49ce7c0342f1125721208fc2eddd5bb1064f92d7
141	ABILIFY	49ce7c0342f1125721208fc2eddd5bb1064f92d7
142	Levofloxacin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
143	Risperidone	49ce7c0342f1125721208fc2eddd5bb1064f92d7
144	Bronchitis-Asthma	49ce7c0342f1125721208fc2eddd5bb1064f92d7
145	The First Ampoule Essence BB	49ce7c0342f1125721208fc2eddd5bb1064f92d7
146	RISPERDAL	49ce7c0342f1125721208fc2eddd5bb1064f92d7
147	Dorama-Neo	49ce7c0342f1125721208fc2eddd5bb1064f92d7
148	Silk Antibacterial Foaming Hand Original	49ce7c0342f1125721208fc2eddd5bb1064f92d7
149	Clopidogrel bisulfate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
150	Iman Time Control Oil Free Moisture Complex SPF 15	49ce7c0342f1125721208fc2eddd5bb1064f92d7
151	Hydrogen Peroxide	49ce7c0342f1125721208fc2eddd5bb1064f92d7
152	Simvastatin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
153	Antibacterial	49ce7c0342f1125721208fc2eddd5bb1064f92d7
154	Witch Hazel	49ce7c0342f1125721208fc2eddd5bb1064f92d7
155	Etodolac	49ce7c0342f1125721208fc2eddd5bb1064f92d7
156	Sertraline Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
157	SEROQUEL	49ce7c0342f1125721208fc2eddd5bb1064f92d7
158	Allergy Relief Non Drowsy	49ce7c0342f1125721208fc2eddd5bb1064f92d7
159	SERTRALINE HYDROCHLORIDE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
160	Peter Island Continuous Sport Sunscreen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
161	Fluocinonide	49ce7c0342f1125721208fc2eddd5bb1064f92d7
162	Senna Plus	49ce7c0342f1125721208fc2eddd5bb1064f92d7
163	NUTRITIOUS	49ce7c0342f1125721208fc2eddd5bb1064f92d7
164	CLONIDINE HYDROCHLORIDE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
165	Prascion	49ce7c0342f1125721208fc2eddd5bb1064f92d7
166	triple antibiotic	49ce7c0342f1125721208fc2eddd5bb1064f92d7
167	Risperidone	49ce7c0342f1125721208fc2eddd5bb1064f92d7
168	Body Luxuries Sweet Lavender Hand Sanitizer	49ce7c0342f1125721208fc2eddd5bb1064f92d7
169	Warfarin Sodium	49ce7c0342f1125721208fc2eddd5bb1064f92d7
170	Metformin Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
171	Adrenal Energy	49ce7c0342f1125721208fc2eddd5bb1064f92d7
172	Olanzapine	49ce7c0342f1125721208fc2eddd5bb1064f92d7
173	Indigestion	49ce7c0342f1125721208fc2eddd5bb1064f92d7
174	good sense cold and allergy	49ce7c0342f1125721208fc2eddd5bb1064f92d7
175	Glyburide and Metformin Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
176	Enoxaparin Sodium	49ce7c0342f1125721208fc2eddd5bb1064f92d7
177	Zanaflex	49ce7c0342f1125721208fc2eddd5bb1064f92d7
178	Betamethasone Dipropionate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
179	Hectorol	49ce7c0342f1125721208fc2eddd5bb1064f92d7
180	Fluconazole	49ce7c0342f1125721208fc2eddd5bb1064f92d7
181	L Dopa Phenolic	49ce7c0342f1125721208fc2eddd5bb1064f92d7
182	Congestaid II	49ce7c0342f1125721208fc2eddd5bb1064f92d7
183	Exelon	49ce7c0342f1125721208fc2eddd5bb1064f92d7
184	Meclizine Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
185	Hydralazine Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
186	Focalin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
187	Joint Rescue	49ce7c0342f1125721208fc2eddd5bb1064f92d7
188	MEGESTOL	49ce7c0342f1125721208fc2eddd5bb1064f92d7
189	ERYTHROMYCIN ETHYLSUCCINATE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
190	SINGULAIR	49ce7c0342f1125721208fc2eddd5bb1064f92d7
191	Topcare Ibuprofen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
192	Ibuprofen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
193	Head and Shoulders	49ce7c0342f1125721208fc2eddd5bb1064f92d7
194	Amlodipine Besylate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
195	C-Nate DHA	49ce7c0342f1125721208fc2eddd5bb1064f92d7
196	EMINENCE Bright Skin Moisturizer BROAD SPECTRUM SPF 30 SUNSCREEN	49ce7c0342f1125721208fc2eddd5bb1064f92d7
197	Neutrogena MoistureShine SPF20	49ce7c0342f1125721208fc2eddd5bb1064f92d7
198	Lisinopril	49ce7c0342f1125721208fc2eddd5bb1064f92d7
199	Childrens Ibuprofen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
200	Oxygen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
201	Pioglitazone and metformin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
202	miconazole 3	49ce7c0342f1125721208fc2eddd5bb1064f92d7
203	Acetylcysteine	49ce7c0342f1125721208fc2eddd5bb1064f92d7
204	Concord Grape	49ce7c0342f1125721208fc2eddd5bb1064f92d7
205	Darby	49ce7c0342f1125721208fc2eddd5bb1064f92d7
206	equate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
207	AlbuRx	49ce7c0342f1125721208fc2eddd5bb1064f92d7
208	Wal-Zan	49ce7c0342f1125721208fc2eddd5bb1064f92d7
209	junior strength acetaminophen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
210	Pancreas Argentum	49ce7c0342f1125721208fc2eddd5bb1064f92d7
211	little ones vitamin a and d	49ce7c0342f1125721208fc2eddd5bb1064f92d7
212	Lubricant Eye	49ce7c0342f1125721208fc2eddd5bb1064f92d7
213	Active Sport	49ce7c0342f1125721208fc2eddd5bb1064f92d7
214	Divalproex Sodium	49ce7c0342f1125721208fc2eddd5bb1064f92d7
215	Amlodipine besylate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
216	Good Sense Severe Daytime Cold and Flu	49ce7c0342f1125721208fc2eddd5bb1064f92d7
217	LYCOPODIUM CLAVATUM	49ce7c0342f1125721208fc2eddd5bb1064f92d7
218	Fluoxetine	49ce7c0342f1125721208fc2eddd5bb1064f92d7
219	Halibut	49ce7c0342f1125721208fc2eddd5bb1064f92d7
220	Minocycline Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
221	Green Guard Stomach Relief	49ce7c0342f1125721208fc2eddd5bb1064f92d7
222	Antiseptic Mouth Rinse	49ce7c0342f1125721208fc2eddd5bb1064f92d7
223	VARIVAX	49ce7c0342f1125721208fc2eddd5bb1064f92d7
224	citroma	49ce7c0342f1125721208fc2eddd5bb1064f92d7
225	Kroger Sport Sunscreen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
226	Pollens - Weeds, Dock/Sorrel Mix	49ce7c0342f1125721208fc2eddd5bb1064f92d7
227	Dove	49ce7c0342f1125721208fc2eddd5bb1064f92d7
228	Fluide Fondant Desalterant SPF 15 Hydra Quench - Formula B	49ce7c0342f1125721208fc2eddd5bb1064f92d7
229	equate athletes foot	49ce7c0342f1125721208fc2eddd5bb1064f92d7
230	Orange	49ce7c0342f1125721208fc2eddd5bb1064f92d7
231	CLADOSPORIUM SPHAEROSPERMUM	49ce7c0342f1125721208fc2eddd5bb1064f92d7
232	Vicks DayQuil	49ce7c0342f1125721208fc2eddd5bb1064f92d7
233	VISIBLE DIFFERENCE MULTI TARGETED BB CREAM BROAD SPECTRUM SUNSCREEN SPF 30 SHADE 3	49ce7c0342f1125721208fc2eddd5bb1064f92d7
234	Dermaquest Skin Therapy Post-Skin Resurfacing Balm	49ce7c0342f1125721208fc2eddd5bb1064f92d7
235	SHISEIDO SHEER AND PERFECT COMPACT (REFILL)	49ce7c0342f1125721208fc2eddd5bb1064f92d7
236	Adapalene	49ce7c0342f1125721208fc2eddd5bb1064f92d7
237	Prednisone	49ce7c0342f1125721208fc2eddd5bb1064f92d7
238	NITROGEN	49ce7c0342f1125721208fc2eddd5bb1064f92d7
239	Entre-S	49ce7c0342f1125721208fc2eddd5bb1064f92d7
240	Dicyclomine Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
241	Furosemide	49ce7c0342f1125721208fc2eddd5bb1064f92d7
242	Divalproex Sodium	49ce7c0342f1125721208fc2eddd5bb1064f92d7
243	Cheong-Kwan-Jang Sliced Korean HongSam	49ce7c0342f1125721208fc2eddd5bb1064f92d7
244	Kiehls Since 1851 Activated Sun Protector Broad Spectrum SPF 50 Sunscreen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
245	Labetalol hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
246	NEUTRAMAXX 5000 PLUS TURBO	49ce7c0342f1125721208fc2eddd5bb1064f92d7
247	ARTEMISIA VULGARIS POLLEN	49ce7c0342f1125721208fc2eddd5bb1064f92d7
248	Cardinal Health Hand Sanitizer with Aloe	49ce7c0342f1125721208fc2eddd5bb1064f92d7
249	Famciclovir	49ce7c0342f1125721208fc2eddd5bb1064f92d7
250	Isoniazid	49ce7c0342f1125721208fc2eddd5bb1064f92d7
251	SHISEIDO SHEER AND PERFECT FOUNDATION	49ce7c0342f1125721208fc2eddd5bb1064f92d7
252	Pollens - Trees, Linden (Basswood) Tilia americana	49ce7c0342f1125721208fc2eddd5bb1064f92d7
253	Fremont Cottonwood	49ce7c0342f1125721208fc2eddd5bb1064f92d7
254	Clonazepam	49ce7c0342f1125721208fc2eddd5bb1064f92d7
255	Letrozole	49ce7c0342f1125721208fc2eddd5bb1064f92d7
256	Hand Sanitizer	49ce7c0342f1125721208fc2eddd5bb1064f92d7
257	Naproxen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
258	LETTERS Lavender Hand Sanitizer	49ce7c0342f1125721208fc2eddd5bb1064f92d7
259	Queen Palm	49ce7c0342f1125721208fc2eddd5bb1064f92d7
260	Zinka SPF 50 Facestick	49ce7c0342f1125721208fc2eddd5bb1064f92d7
261	Heparin Sodium	49ce7c0342f1125721208fc2eddd5bb1064f92d7
262	LIDODERM	49ce7c0342f1125721208fc2eddd5bb1064f92d7
263	Lidocaine	49ce7c0342f1125721208fc2eddd5bb1064f92d7
264	Hydroxyzine Pamoate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
265	Oxygen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
266	LOTEMAX	49ce7c0342f1125721208fc2eddd5bb1064f92d7
267	Crataegus Nicotiana	49ce7c0342f1125721208fc2eddd5bb1064f92d7
268	Clindamycin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
269	Food - Animal Products and Poultry Products, Egg, Yolk Gallus sp.	49ce7c0342f1125721208fc2eddd5bb1064f92d7
270	Tiger Balm Red	49ce7c0342f1125721208fc2eddd5bb1064f92d7
271	Isosorbide Dinitrate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
272	Benazepril hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
273	3M Avagard Instant Hand Antiseptic with Moisturizers	49ce7c0342f1125721208fc2eddd5bb1064f92d7
274	CLARINS Broad Spectrum SPF 20 Super Restorative Tinted Tint 05	49ce7c0342f1125721208fc2eddd5bb1064f92d7
275	Ketotifen Fumarate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
276	Lamotrigine	49ce7c0342f1125721208fc2eddd5bb1064f92d7
277	Anti-Bacterial Wipes	49ce7c0342f1125721208fc2eddd5bb1064f92d7
278	CULTIVATED BARLEY POLLEN	49ce7c0342f1125721208fc2eddd5bb1064f92d7
279	Besivance	49ce7c0342f1125721208fc2eddd5bb1064f92d7
280	Idamycin PFS	49ce7c0342f1125721208fc2eddd5bb1064f92d7
281	Pre-Dental Visit	49ce7c0342f1125721208fc2eddd5bb1064f92d7
282	Moexipril Hydrochloride and Hydrochlorothiazide	49ce7c0342f1125721208fc2eddd5bb1064f92d7
283	Sulindac	49ce7c0342f1125721208fc2eddd5bb1064f92d7
284	Cedaprin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
285	Carvedilol	49ce7c0342f1125721208fc2eddd5bb1064f92d7
286	Germ Crusher Hand Sanitizer Wipes	49ce7c0342f1125721208fc2eddd5bb1064f92d7
287	Oralair	49ce7c0342f1125721208fc2eddd5bb1064f92d7
288	Lisinopril	49ce7c0342f1125721208fc2eddd5bb1064f92d7
289	Amnesteem	49ce7c0342f1125721208fc2eddd5bb1064f92d7
290	Simvastatin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
291	lubricant and redness reliever	49ce7c0342f1125721208fc2eddd5bb1064f92d7
292	Suave Pacific Breeze	49ce7c0342f1125721208fc2eddd5bb1064f92d7
293	Carboplatin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
294	Cepacol	49ce7c0342f1125721208fc2eddd5bb1064f92d7
295	La Roche Posay	49ce7c0342f1125721208fc2eddd5bb1064f92d7
296	infants fever reducer and pain reliever	49ce7c0342f1125721208fc2eddd5bb1064f92d7
297	Effervescent Pain Relief Fast Relief	49ce7c0342f1125721208fc2eddd5bb1064f92d7
298	Sumatriptan Succinate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
299	Goodys	49ce7c0342f1125721208fc2eddd5bb1064f92d7
300	Claritin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
301	Skin Supplies for Men antiperspirant	49ce7c0342f1125721208fc2eddd5bb1064f92d7
302	Sulfamethoxazole and Trimethoprim	49ce7c0342f1125721208fc2eddd5bb1064f92d7
303	CounterAct	49ce7c0342f1125721208fc2eddd5bb1064f92d7
304	Amazonian Clay BB Tinted Moisturizer Broad Spectrum SPF 20 Sunscreen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
305	Hydroxyzine Pamoate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
306	Conjunctiva Argentum	49ce7c0342f1125721208fc2eddd5bb1064f92d7
307	Baclofen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
308	Antibactierial Hand Sanitizer	49ce7c0342f1125721208fc2eddd5bb1064f92d7
309	OXYGEN	49ce7c0342f1125721208fc2eddd5bb1064f92d7
310	Diovan HCT	49ce7c0342f1125721208fc2eddd5bb1064f92d7
311	Allopurinol	49ce7c0342f1125721208fc2eddd5bb1064f92d7
312	Equetro	49ce7c0342f1125721208fc2eddd5bb1064f92d7
313	Mineral Oil	49ce7c0342f1125721208fc2eddd5bb1064f92d7
314	allergy relief	49ce7c0342f1125721208fc2eddd5bb1064f92d7
315	ibuprofen pm	49ce7c0342f1125721208fc2eddd5bb1064f92d7
316	healthy accents all day pain relief	49ce7c0342f1125721208fc2eddd5bb1064f92d7
317	Hydromorphone Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
318	TEMODAR	49ce7c0342f1125721208fc2eddd5bb1064f92d7
319	Roxicodone	49ce7c0342f1125721208fc2eddd5bb1064f92d7
320	Glycolic Day Cream SPF 30	49ce7c0342f1125721208fc2eddd5bb1064f92d7
321	ULTRA CONTROL	49ce7c0342f1125721208fc2eddd5bb1064f92d7
322	UV ESSENTIEL	49ce7c0342f1125721208fc2eddd5bb1064f92d7
323	Chantix	49ce7c0342f1125721208fc2eddd5bb1064f92d7
324	nasal spray	49ce7c0342f1125721208fc2eddd5bb1064f92d7
325	CLIV Barrier Power	49ce7c0342f1125721208fc2eddd5bb1064f92d7
326	PRIME ASTHMA RELIEF	49ce7c0342f1125721208fc2eddd5bb1064f92d7
327	Cold and Hot Pain Relief	49ce7c0342f1125721208fc2eddd5bb1064f92d7
328	Hydromorphone Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
329	Carvedilol	49ce7c0342f1125721208fc2eddd5bb1064f92d7
330	WALGREENS MAXIMUM REDNESS RELIEF	49ce7c0342f1125721208fc2eddd5bb1064f92d7
331	SINGULAIR	49ce7c0342f1125721208fc2eddd5bb1064f92d7
332	Perrigo Ibuprofen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
333	Clearasil	49ce7c0342f1125721208fc2eddd5bb1064f92d7
334	UTRASURE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
335	ANTIBACTERIAL HAND	49ce7c0342f1125721208fc2eddd5bb1064f92d7
336	LBEL RENOVANCE JOUR Daytime Face SPF 15 All Skin Types	49ce7c0342f1125721208fc2eddd5bb1064f92d7
337	Avelox	49ce7c0342f1125721208fc2eddd5bb1064f92d7
338	Clotrimazole	49ce7c0342f1125721208fc2eddd5bb1064f92d7
339	LBEL SUPREMACIE NX JOUR Replenishing Treatment Daytime Face SPF 15 Normal To Dry Skin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
340	Ciprofloxacin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
341	Ciprofloxacin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
342	PANROSA Lavender Scented Hand	49ce7c0342f1125721208fc2eddd5bb1064f92d7
343	Albuminar-25	49ce7c0342f1125721208fc2eddd5bb1064f92d7
344	Atenolol	49ce7c0342f1125721208fc2eddd5bb1064f92d7
345	LBEL Couleur luxe rouge irresistible maximum hydration SPF 17	49ce7c0342f1125721208fc2eddd5bb1064f92d7
346	DANDRUFF SHAMPOO AND CONDITIONER	49ce7c0342f1125721208fc2eddd5bb1064f92d7
347	Procardia	49ce7c0342f1125721208fc2eddd5bb1064f92d7
348	Coppertone Water BABIES	49ce7c0342f1125721208fc2eddd5bb1064f92d7
349	Lamotrigine	49ce7c0342f1125721208fc2eddd5bb1064f92d7
350	Levetiracetam	49ce7c0342f1125721208fc2eddd5bb1064f92d7
351	CVS Alcohol Prep	49ce7c0342f1125721208fc2eddd5bb1064f92d7
352	Ciprofloxacin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
353	Amlodipine and Benazepril Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
354	CLINIMIX E	49ce7c0342f1125721208fc2eddd5bb1064f92d7
355	Keppra	49ce7c0342f1125721208fc2eddd5bb1064f92d7
356	Crest Pro-Health	49ce7c0342f1125721208fc2eddd5bb1064f92d7
357	Pure Finish Mineral Powder Foundation SPF 20 Pure Finish 9	49ce7c0342f1125721208fc2eddd5bb1064f92d7
358	KIDS CHOICE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
359	TOPOTECAN HYDROCHLORIDE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
360	enema mineral oil	49ce7c0342f1125721208fc2eddd5bb1064f92d7
361	ACTONEL	49ce7c0342f1125721208fc2eddd5bb1064f92d7
362	escitalopram oxalate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
363	Diphenoxylate Hydrochloride and Atropine Sulfate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
364	Serdaen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
365	Lotensin HCT	49ce7c0342f1125721208fc2eddd5bb1064f92d7
366	Vagisil Medicated Wipes	49ce7c0342f1125721208fc2eddd5bb1064f92d7
367	Lidocaine Hydrochloride	49ce7c0342f1125721208fc2eddd5bb1064f92d7
368	Inflammation II	49ce7c0342f1125721208fc2eddd5bb1064f92d7
369	finipil pro/elec	49ce7c0342f1125721208fc2eddd5bb1064f92d7
370	OXYGEN	49ce7c0342f1125721208fc2eddd5bb1064f92d7
371	VANATAB DX	49ce7c0342f1125721208fc2eddd5bb1064f92d7
372	CETIRIZINE HYDROCHLORIDE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
373	MORPHINE SULFATE	49ce7c0342f1125721208fc2eddd5bb1064f92d7
374	Homeopathic Gas Relief Formula	49ce7c0342f1125721208fc2eddd5bb1064f92d7
375	Personal Care Antibacterial Hand - Raspberry	49ce7c0342f1125721208fc2eddd5bb1064f92d7
376	Captopril	49ce7c0342f1125721208fc2eddd5bb1064f92d7
377	Midazolam HCl	49ce7c0342f1125721208fc2eddd5bb1064f92d7
378	Divalproex Sodium Extended-Release	49ce7c0342f1125721208fc2eddd5bb1064f92d7
379	Meloxicam	49ce7c0342f1125721208fc2eddd5bb1064f92d7
380	Fluconazole	49ce7c0342f1125721208fc2eddd5bb1064f92d7
381	Epsom Salt	49ce7c0342f1125721208fc2eddd5bb1064f92d7
382	Petroleum Jelly with Shea Butter and Argan Oil	49ce7c0342f1125721208fc2eddd5bb1064f92d7
383	Fast Freeze	49ce7c0342f1125721208fc2eddd5bb1064f92d7
384	GH Flex	49ce7c0342f1125721208fc2eddd5bb1064f92d7
385	Ringers	49ce7c0342f1125721208fc2eddd5bb1064f92d7
386	Medroxyprogesterone Acetate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
387	Neutrogena Naturals Acne Foaming Scrub	49ce7c0342f1125721208fc2eddd5bb1064f92d7
388	Ciprofloxacin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
389	Tuna Fish	49ce7c0342f1125721208fc2eddd5bb1064f92d7
390	Benztropine Mesylate	49ce7c0342f1125721208fc2eddd5bb1064f92d7
391	Ibuprofen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
392	Clear	49ce7c0342f1125721208fc2eddd5bb1064f92d7
393	Vecuronium bromide	49ce7c0342f1125721208fc2eddd5bb1064f92d7
394	Neutrogena Clinical Lifting Wrinkle Treatment System	49ce7c0342f1125721208fc2eddd5bb1064f92d7
395	good sense pain relief	49ce7c0342f1125721208fc2eddd5bb1064f92d7
396	Phenytoin Sodium	49ce7c0342f1125721208fc2eddd5bb1064f92d7
397	Terocin	49ce7c0342f1125721208fc2eddd5bb1064f92d7
398	Hemorrhoidal	49ce7c0342f1125721208fc2eddd5bb1064f92d7
399	Nitrogen	49ce7c0342f1125721208fc2eddd5bb1064f92d7
400	ORCHID SECRET FOUNDATION	49ce7c0342f1125721208fc2eddd5bb1064f92d7
\.


--
-- TOC entry 3016 (class 0 OID 16480)
-- Dependencies: 207
-- Data for Name: patient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patient (id_pa, nom, prenom, ville, telephone) FROM stdin;
1	Derk	Tanman	Melbourne	(321) 3400668
2	Elisabet	Fawlkes	Dori	(815) 1535659
3	Cilka	Kless	Ksawerów	(675) 3913953
4	Maurene	Broddle	Coloncito	(222) 3244924
5	Gearalt	Such	Pleshanovo	(669) 2609843
6	Yvonne	Kilford	Novyy Uoyan	(229) 8221197
7	Carmine	Yankeev	Mŭynoq	(734) 7782273
8	William	Kennerley	Julun	(503) 5244124
9	Dore	Gladwell	Dadaha	(902) 3128052
10	Niki	Oyley	Fram	(667) 7122647
11	Flemming	Sawday	Coaticook	(722) 5478461
12	Minna	Luckham	Lab	(560) 1245007
13	Anne-marie	Gerdes	Fuyang	(875) 2046163
14	Retha	Airs	Siluman	(512) 1842854
15	Jarret	Tulloch	Moyale	(918) 5335564
16	Tillie	Bramwich	Khokhryaki	(939) 4358583
17	Layne	Sabbins	Xinglong	(927) 4547170
18	Seymour	Pariso	Huari	(892) 4603774
19	Ingeberg	Bentame	Kanada	(340) 4923314
20	Ced	Pollastrone	Sharga	(380) 3099080
21	Katharine	Wintersgill	Xiatang	(389) 1246050
22	Jermayne	Dovidian	Diamantino	(892) 7456786
23	Tiphanie	Thebeau	Poços de Caldas	(411) 8669321
24	Renell	Malafe	Arvika	(104) 1151615
25	Erma	Pinke	Debe	(621) 2873797
26	Christopher	Fylan	Örebro	(119) 1320367
27	Tamma	Bradford	Damaturu	(369) 3500629
28	Alyse	Knutton	Izumi	(511) 9650444
29	Tymon	Riddles	Guozhen	(966) 2227184
30	Alisun	Curgenven	Skara	(612) 2083581
31	Morly	Van Der Walt	Sambongmulyo	(708) 7414864
32	Chrissy	Paramor	Wulan Hada	(189) 4164975
33	Kiah	Caulcutt	Glatik	(530) 1105058
34	Fernando	Dovidian	Itacoatiara	(803) 3388002
35	Yank	Corston	Arroyo Salado	(639) 8177303
36	Sigrid	Ackermann	Bang Ban	(546) 3825580
37	Twyla	Looby	Halton	(250) 3284828
38	Kayle	Mordy	Xinxu	(877) 4134452
39	Allie	Lafrentz	Yilan	(766) 8034404
40	Darell	Liquorish	Neepawa	(615) 7900693
41	Roda	Karlicek	Youwei	(115) 3852225
42	Whitney	Pryde	Binalonan	(105) 7744335
43	Verla	Pugh	Padasuka	(860) 8072562
44	Gavan	Sallings	Tumauini	(626) 2747838
45	Arvy	Riall	Albardón	(380) 8259203
46	Remy	Halfpenny	Merdeka	(384) 8276735
47	Eimile	Fysh	Wiślica	(413) 5274612
48	Iggie	Breche	Aravissós	(515) 7165876
49	Maia	Bemlott	Gumawang	(583) 7816126
50	Amalie	Roger	Oujiangcha	(551) 1561129
51	Noe	Brittlebank	Vista Hermosa	(416) 8392231
52	Cazzie	Greally	Guimbal	(535) 1943083
53	Richy	Reddie	Jomda	(671) 2823703
54	Teodoor	Storek	Macun	(891) 5137195
55	Xylia	Cassie	San Jose	(309) 3485361
56	Petey	Lalonde	Il’skiy	(589) 4483052
57	Etan	Gail	Gamawa	(535) 4011341
58	Andrus	Tomasian	Otterburn Park	(897) 4210067
59	Asia	Cheesley	Starodub	(481) 5680505
60	Austen	Chestney	Przemyśl	(140) 5488621
61	Theda	Morecombe	Taber	(771) 2447733
62	Retha	Arthey	Lisewo Malborskie	(699) 8958521
63	Sanson	Westwick	Azacualpa	(268) 3893084
64	Bernette	Losano	Banjing	(154) 5146208
65	Morganica	Beuscher	Beloyarskiy	(995) 1562785
66	Rosie	Ludwikiewicz	São Roque	(164) 9229946
67	Willamina	Hubbert	Kazlų Rūda	(918) 9703127
68	Dode	Rubie	Manning	(718) 2165072
69	Sayre	Grand	Gaomi	(726) 8808565
70	Mylo	Trayford	Du’ermenqin	(337) 1442302
71	Addison	Andrewartha	São Mateus	(517) 4679691
72	Miles	Partener	Kapunduk	(366) 7415652
73	Eloise	Beumant	Waimangura	(803) 5929750
74	Mirna	Forker	Libode	(764) 8588748
75	Valida	Sowrey	Pitai	(953) 9654652
76	Eldridge	Habbershon	Sovetskaya	(945) 9944460
77	Ellswerth	Giffen	Nashville	(615) 1971047
78	Martynne	Flounders	Nar'yan-Mar	(632) 5847351
79	Lorens	Ashness	Maishi	(533) 7397352
80	Bar	Josephov	Port-Gentil	(271) 3278256
81	Natty	Brabbs	Xiugu	(417) 3663884
82	Mariejeanne	Forstall	Mashui	(137) 6747805
83	Mead	Fuggle	Frankfurt am Main	(713) 2461077
84	Eddy	Craghead	Dongjin	(225) 4065620
85	Sheppard	Touzey	Digne-les-Bains	(552) 3696255
86	Errol	Trittam	Jiguan	(756) 6844117
87	Tamas	Sidnall	Cisalakdesa	(566) 2997923
88	Christiane	Norvill	Bangunharja	(656) 5147150
89	Caresse	Jasiak	Muzambinho	(479) 3591251
90	Daffie	Earle	Marataizes	(821) 9777061
91	Carie	Tampin	Adolfo Lopez Mateos	(245) 6802696
92	Blondy	Blease	Belfast	(877) 4647613
93	Nettie	McKeurtan	Valinhos	(482) 3299873
94	Elana	Liggons	Dedza	(796) 6886907
95	Ignatius	Bearns	Carcassonne	(579) 7936615
96	Maximilian	Folan	Jiangwakou	(932) 5747413
97	Somerset	Sturges	Krajan Jabungcandi	(938) 8543286
98	Ty	Borge	Huelkail	(625) 7539965
99	Sarine	Normanville	Mbaké	(397) 3307733
100	Kimmi	Purple	Mulandoro	(875) 7236152
101	Larina	Ind	Huipinggeng	(727) 3822464
102	Fannie	Ankers	Tuqiao	(216) 9340211
103	Gerardo	Samwell	Mangochi	(347) 7141039
104	Margette	Danilchik	Seren	(705) 3927402
105	Gustavo	Addionisio	Paris 11	(290) 3055648
106	Kinny	Stilgoe	Ipoh	(945) 4697612
107	Kelley	Wadesworth	Uvarovo	(443) 1141663
108	Lynn	Gath	Xilai	(405) 4453976
109	Eal	Valek	Pyongyang	(682) 7705619
110	Timmi	Skegg	L-Iklin	(909) 5447273
111	Casi	Blowen	Jatake	(285) 6183516
112	Ekaterina	Matchett	Bothaville	(415) 4249187
113	Susy	Strick	Kopang Satu	(925) 6321451
114	Carolee	Boland	Penanggungan	(335) 8330701
115	Natty	Dauncey	Huangcun	(621) 7779877
116	Delia	Gadsby	Lille	(550) 9065299
117	Xavier	Benez	Shijie	(567) 3328761
118	Katee	Iacavone	Dong’an	(899) 2177388
119	Rafael	Jerwood	Qanliko’l	(882) 4596928
120	Cosme	Paynter	Sandao	(324) 7029331
121	Xenos	Juett	Kotkot	(394) 8214991
122	Starla	Pohl	Strezhevoy	(727) 5222697
123	Eda	Klaff	Sete Cidades	(733) 8152074
124	Micheil	Heathwood	Jiusi	(253) 8673231
125	Thom	Hargreave	Jadowniki	(851) 9936648
126	Bax	Pickrell	Chalchuapa	(538) 1948621
127	Kamillah	Gecks	Lianhe	(307) 9693946
128	Dorise	Marchetti	Ervedosa do Douro	(580) 2318716
129	Jonas	Crichley	Sigayevo	(641) 2792321
130	Isidore	Feavers	Salamrejo	(263) 3667112
131	Devondra	Ullett	Mvomero	(411) 7742623
132	Deny	Coal	Sathing Phra	(931) 1925738
133	Margarethe	Huertas	Mujur	(834) 2499487
134	Dorey	Munsey	Tanahgrogot	(800) 4732225
135	Alvina	Cratere	Stockholm	(595) 9083675
136	Deny	Packwood	Andahuaylas	(652) 8618913
137	Perkin	Brothers	Turangi	(764) 5882187
138	Flori	Eakeley	Bagok	(714) 9474419
139	Clo	Champney	Pelabuhan Dagang	(873) 5584643
140	Niko	Scanlan	Inabaan Sur	(466) 7458520
141	Percival	Freear	Jacksonville	(904) 1957820
142	Clemence	Rawcliffe	Kutamandarakan	(579) 9305932
143	Ursula	Kittow	Magadan	(647) 7245574
144	Krystalle	Rossiter	Villa Consuelo	(230) 5759066
145	Adams	Cannop	Anjani Barat	(371) 6104601
146	Jaymee	Joice	Brisbane	(678) 8104367
147	Ulrica	Burstowe	Yacuiba	(121) 8671141
148	Meghann	Grinaugh	Bidikotak	(357) 3829315
149	Timothee	Ilyin	Liulin	(923) 5202636
150	Herta	Pitney	Citalahab	(681) 9480386
151	Florence	Lamden	Kallíthiron	(829) 7751690
152	Lorianne	Gammel	Östersund	(337) 2529554
153	Vern	Croad	Oslo	(631) 1536446
154	Jerome	Leggitt	Ishioka	(829) 6989551
155	Arturo	Risom	Lazurne	(612) 1002868
156	Bobine	Laughnan	Ágios Stéfanos	(614) 3586154
157	Danni	Frangione	Bonsari	(367) 3826376
158	Emlynne	Yegorovnin	Wat Bot	(860) 6444169
159	Osbert	Hudleston	Nahuo	(860) 8027854
160	Riley	Domm	Luti	(765) 3111261
161	Waverly	Postlethwaite	Zangkaxa	(450) 4245766
162	Zachariah	Howgill	Runsonglaozhai	(437) 7090351
163	Ansley	Jex	Majayjay	(486) 6761498
164	Deane	Crollman	Visby	(917) 4803915
165	Delphinia	Fiddyment	Xi’an	(790) 3218425
166	Willem	Abbatucci	Kasoa	(253) 1194147
167	Coral	Milkin	Riangbao	(556) 4242779
168	Yardley	Troop	Atbasar	(811) 2345333
169	Hyacinthe	Marciek	Przemyśl	(731) 7924481
170	Cornie	Joskovitch	Lysyanka	(789) 7046155
171	Elspeth	Early	Omoku	(517) 1668478
172	Skelly	Faye	Odivelas	(860) 1236958
173	Bride	Epp	Xicun	(762) 7073970
174	Andra	Mathwen	Zebrzydowice	(546) 4899360
175	Cyril	Ickov	Belos Ares	(804) 9746218
176	Ethyl	Battson	Sandao	(223) 9147455
177	Ines	Vaan	Tokuyama	(754) 1381425
178	Gusty	Ellerker	Solok	(576) 9055770
179	Ilaire	Isaksen	Takaishi	(446) 7868815
180	Verile	Aylen	Brumado	(888) 5574853
181	Donia	Labroue	Likasi	(165) 7058044
182	Wynn	Trigwell	Dikson	(276) 5806886
183	Lucila	Kenen	Lebedyn	(590) 4205163
184	Chas	Yuranovev	Taipinghu	(613) 4933877
185	Britni	Nani	Nggambel	(753) 4577913
186	Lauri	Peacher	Leigu	(248) 5573206
187	Renault	Marzelo	Ţūlkarm	(606) 5938112
188	Amelita	Scrase	Chengxiang	(819) 8786953
189	Danita	Pipworth	Ila Orangun	(988) 1428989
190	Holmes	Illwell	Sanhe	(135) 3508220
191	Bell	Hasluck	Södertälje	(124) 4318128
192	Scarface	Carreck	Kuleqi	(141) 7112858
193	Laurella	Dunphy	Białośliwie	(564) 3303626
194	Berti	Calvie	Okhtyrka	(555) 6557063
195	Ilario	Rossant	Orléans	(811) 5274008
196	Adelbert	Falvey	Puncakwangi	(332) 8816631
197	Benjamen	James	Alilem	(255) 8535315
198	Bobby	Tomsa	Riosucio	(919) 5884420
199	Martie	Pollie	Sadao	(212) 8443005
200	Pooh	Perrington	Vale de Figueira	(541) 1105468
\.


--
-- TOC entry 3018 (class 0 OID 16499)
-- Dependencies: 209
-- Data for Name: prescription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prescription (id_pres, patient_id, medicament_id, posologie) FROM stdin;
1	20	203	nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio
2	69	213	dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed
3	140	120	blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem
4	112	297	lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis
5	101	200	congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at
6	143	322	cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id
7	38	13	eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus
8	21	276	felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet
9	177	54	ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis
10	117	24	vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet
11	175	14	in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget
12	158	276	donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna
13	36	16	eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis
14	90	250	praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio
15	4	163	in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat
16	61	155	venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie
90	159	316	at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl
17	181	32	consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo
18	121	323	amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum
19	120	194	quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices
20	65	202	platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla
21	3	349	sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes
22	84	280	lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna
23	142	298	non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse
24	14	290	in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam
25	35	152	feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue
26	168	160	tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum
27	177	237	suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla
28	26	57	justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed
29	49	66	id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum
30	141	76	sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam
31	93	175	sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient
32	180	11	nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor
33	131	132	accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra
34	140	149	viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum
35	111	279	curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus
36	126	167	commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus
37	84	327	turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem
38	48	152	sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula
39	15	232	dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse
40	54	46	cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas
41	181	51	vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien
42	153	299	mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et
43	160	286	leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer
44	95	191	aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum
45	167	284	lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis
46	80	245	velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis
47	83	259	sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus
48	94	303	etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate
49	79	71	commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu
50	62	304	lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit
51	126	143	sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse
52	103	179	pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum
53	164	278	ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices
54	186	173	porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui
55	161	248	blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis
56	20	248	venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt
57	113	204	tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien
58	174	152	cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur
59	113	384	cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam
60	153	232	at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo
61	189	316	dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia
62	59	294	aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus
63	44	12	tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis
64	125	1	aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis
65	80	257	dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien
66	162	140	lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem
67	158	194	eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis
68	1	235	sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes
69	92	87	ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat
70	131	133	lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi
71	19	129	nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus
72	84	200	porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla
73	131	9	ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie
74	110	58	enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper
75	154	56	nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum
76	73	35	est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum
77	142	186	in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl
78	142	198	quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio
79	42	399	lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam
80	109	162	id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas
81	44	84	non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac
82	2	345	lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi
83	20	156	diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum
84	129	371	quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis
85	79	72	auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue
86	41	71	eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras
87	146	5	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum
88	113	50	sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere
89	131	310	mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient
91	163	259	pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum
92	127	92	cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet
93	98	22	et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy
94	194	162	dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget
95	37	342	odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse
96	27	294	lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus
97	112	287	adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum
98	78	53	aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo
99	6	209	ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus
100	60	90	magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede
101	127	138	tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis
102	50	370	vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim
103	35	15	nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque
104	194	117	magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo
105	91	59	curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque
106	49	316	morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque
107	111	293	blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst
108	133	103	vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus
109	79	320	nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo
110	35	115	posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis
111	145	183	faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit
112	169	380	justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id
113	43	321	augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec
114	63	117	vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus
115	44	62	varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet
116	157	275	eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut
117	42	353	praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo
118	158	142	donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at
119	186	102	duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla
120	56	182	magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean
121	180	317	aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut
122	118	150	porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla
123	4	178	maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl
124	51	316	potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel
125	101	175	sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis
126	66	310	justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis
127	132	19	vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in
128	87	316	id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula
129	127	149	luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien
130	36	90	eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh
131	25	190	sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam
132	12	177	fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna
133	142	306	ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien
134	91	104	at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper
135	13	258	semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus
136	187	368	quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et
137	125	348	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac
138	76	270	consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus
139	132	361	feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi
140	34	227	fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris
141	70	377	eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris
142	181	300	interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus
143	179	374	auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in
144	92	389	pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien
145	118	301	sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst
146	147	218	faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio
147	110	166	donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla
148	103	185	dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis
149	21	51	faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in
150	125	369	sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at
151	34	394	posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan
152	60	93	cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at
153	37	170	suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea
154	106	129	amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec
155	6	200	nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci
156	28	171	ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero
157	145	287	quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus
158	109	398	amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis
159	127	245	posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis
160	83	36	sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur
161	145	130	duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras
162	54	30	id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut
163	87	388	ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in
164	33	286	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi
165	167	270	eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus
166	12	251	aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam
167	68	183	metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis
168	157	112	nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque
169	19	260	pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede
170	188	46	varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis
171	23	295	rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem
172	134	81	nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam
173	29	377	orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue
174	165	64	ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet
175	33	175	quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque
176	118	363	rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio
177	115	22	integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt
178	64	203	lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum
179	97	296	at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam
291	130	390	eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl
180	89	238	habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo
181	52	39	in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in
182	107	319	amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non
183	63	25	augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque
184	43	63	vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate
185	186	346	ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec
186	126	236	vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer
187	31	268	ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero
188	171	3	odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac
189	115	47	nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti
190	81	69	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris
191	67	397	sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium
192	190	348	sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis
193	55	180	non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat
194	104	270	posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu
195	89	252	orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar
196	109	278	in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis
197	107	8	eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper
215	135	327	pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in
198	77	11	bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum
199	156	145	erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet
200	103	242	erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac
201	59	301	sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros
202	17	219	eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent
203	45	287	consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed
204	15	338	pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse
205	29	385	lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis
206	111	353	amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque
207	138	102	nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa
208	32	191	a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra
209	42	331	pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis
210	44	264	quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus
211	17	86	potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes
212	77	123	sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque
213	98	385	elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend
214	82	355	pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum
216	123	87	amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id
217	162	158	mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut
218	4	218	pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam
219	21	73	id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis
220	128	346	tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est
221	135	146	in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis
222	34	49	platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id
223	52	320	consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue
224	73	147	a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae
225	194	375	pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis
226	51	159	nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin
227	76	317	ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a
228	107	140	montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci
229	33	80	nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui
230	170	321	eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac
231	143	194	lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis
232	18	341	a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis
233	196	336	lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis
234	85	135	lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi
253	144	362	mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu
235	56	36	sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula
236	27	25	eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum
237	187	159	tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam
238	99	123	cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis
239	47	231	faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat
240	18	139	interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt
241	191	214	leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor
242	27	265	ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea
243	130	137	magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor
244	200	182	volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia
245	181	47	eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare
246	196	192	est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna
247	115	161	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed
248	30	205	maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor
249	126	377	sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum
250	80	389	parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut
251	124	112	cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue
252	65	285	ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere
254	173	370	gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor
255	44	151	aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum
256	199	40	et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi
257	83	306	dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo
258	83	63	felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci
259	170	39	dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in
260	172	79	orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum
261	181	344	mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia
262	33	236	felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis
263	104	309	nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices
264	114	301	lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien
265	145	133	lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat
266	75	130	sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla
267	54	239	sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum
268	186	196	proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet
269	131	74	eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat
270	193	46	congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut
292	83	74	gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer
271	35	2	diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras
272	113	294	cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis
273	134	231	congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo
274	110	17	ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam
275	57	94	vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum
276	32	145	euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec
277	92	286	adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis
278	13	285	morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo
279	115	328	hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl
280	11	64	vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis
281	161	398	blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit
282	126	379	quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate
283	46	233	orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor
284	4	1	commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit
285	147	203	eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla
286	62	80	nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in
287	167	12	sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce
288	59	50	pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras
289	78	214	nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat
290	159	215	pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus
293	58	387	sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum
294	12	119	lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet
295	93	305	purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus
296	53	271	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in
297	103	213	nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
298	53	189	mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo
299	31	148	dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus
300	163	46	nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla
301	78	388	orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo
302	180	355	lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium
303	144	272	dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla
304	18	204	tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat
305	70	187	sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis
306	73	214	adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue
307	180	30	a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus
308	9	364	diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla
309	138	37	id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus
310	9	13	nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit
311	14	218	a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac
312	163	58	erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse
313	185	161	pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in
314	41	266	velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse
315	164	363	vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet
316	190	71	augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis
317	113	325	ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit
318	90	251	augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper
319	88	286	sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus
320	117	130	consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh
321	29	209	felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede
322	87	146	in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus
323	136	108	fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis
324	32	233	nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer
325	140	60	tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus
326	77	201	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim
327	66	193	hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis
328	46	358	dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh
329	26	138	diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras
330	172	367	non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula
331	30	260	in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis
332	47	176	diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque
333	165	114	ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi
334	67	127	risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan
335	183	216	nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi
336	148	272	dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a
337	78	21	curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel
338	107	212	odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at
339	11	63	eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus
340	72	398	erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio
341	162	34	fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris
342	134	157	dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie
343	25	143	vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus
344	175	71	magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea
345	74	195	volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue
346	68	65	diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat
347	167	124	vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus
348	13	156	orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras
349	122	33	eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in
350	74	350	auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo
351	130	378	massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit
352	113	238	vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien
353	113	262	sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum
354	61	37	tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor
355	62	14	platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel
356	81	385	rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus
357	147	134	aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in
358	176	96	ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum
359	115	343	maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse
360	172	273	augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor
361	177	160	vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus
362	131	56	luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est
363	32	289	risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo
364	13	176	orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum
365	190	244	blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed
366	195	135	vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor
367	179	260	pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede
368	110	198	mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia
369	160	192	condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi
370	7	304	penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id
371	164	238	neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl
372	188	72	sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio
373	153	308	nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam
374	37	304	eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit
375	20	35	aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing
376	85	57	magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst
377	2	33	pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean
378	89	298	cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio
379	163	308	eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer
380	5	98	varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla
381	121	339	dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing
382	8	199	sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit
383	148	360	lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae
384	169	342	adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus
385	106	279	sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec
386	157	208	vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum
387	38	49	donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est
388	175	320	id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus
389	121	239	vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl
390	53	148	eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci
391	154	119	pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo
392	63	372	dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis
393	27	286	leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien
394	129	45	sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in
395	99	155	erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque
396	169	365	odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero
397	180	139	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at
398	4	254	leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer
399	80	65	donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in
400	60	251	id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla
\.


--
-- TOC entry 3020 (class 0 OID 16520)
-- Dependencies: 211
-- Data for Name: visite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.visite (id_vi, date_visite, prix, docteur_id, patient_id) FROM stdin;
1	2021-08-11	$1.50	30	19
2	2021-04-10	$6.87	94	127
3	2021-09-12	$0.60	42	90
4	2021-11-12	$0.43	3	34
5	2022-07-01	$8.44	63	44
6	2022-02-01	$8.44	61	61
7	2021-05-11	$0.49	17	83
8	2021-04-08	$8.33	78	5
9	2021-08-11	$7.47	37	82
10	2021-12-07	$0.15	25	109
11	2021-01-12	$8.86	71	91
12	2021-03-09	$2.44	21	85
13	2021-06-10	$6.66	32	20
14	2021-04-12	$2.13	17	161
15	2021-06-29	$5.71	67	153
16	2021-12-04	$3.47	36	28
17	2021-01-10	$4.65	75	148
18	2021-04-02	$7.10	5	101
19	2021-05-12	$8.79	77	21
20	2021-03-10	$8.88	74	114
21	2021-04-06	$8.07	5	50
22	2021-09-09	$7.02	15	1
23	2021-01-11	$6.63	15	130
24	2021-02-02	$6.01	42	99
25	2022-12-01	$3.01	32	185
26	2021-03-08	$9.43	54	146
27	2021-09-03	$8.12	61	40
28	2021-04-06	$1.85	51	73
29	2021-04-10	$2.60	42	117
30	2021-01-04	$4.30	94	4
31	2022-06-01	$2.13	96	134
32	2021-12-09	$6.43	100	157
33	2022-03-01	$5.84	27	65
34	2021-07-03	$8.48	84	107
35	2021-06-05	$2.44	84	30
36	2021-02-07	$1.37	26	123
37	2021-12-09	$6.29	100	123
38	2021-03-01	$5.39	35	153
39	2021-04-04	$8.68	96	128
40	2021-10-09	$9.47	86	1
41	2021-01-02	$4.02	71	109
42	2021-02-08	$5.15	35	118
43	2021-01-06	$6.43	89	84
44	2021-02-10	$7.02	57	107
45	2021-04-12	$3.73	79	161
46	2021-03-07	$2.96	35	128
47	2021-02-12	$3.20	4	200
48	2021-03-05	$4.37	86	35
49	2021-12-11	$4.88	32	127
50	2021-01-03	$8.03	79	137
51	2021-03-01	$1.13	83	59
52	2021-02-10	$8.82	95	194
53	2021-05-06	$3.05	43	148
54	2021-05-10	$6.89	5	115
55	2021-09-11	$9.08	29	61
56	2021-09-04	$8.06	45	100
57	2022-06-01	$5.93	100	198
58	2022-04-01	$5.07	52	73
59	2021-02-11	$3.46	80	23
60	2021-09-09	$0.82	23	48
61	2021-05-09	$4.70	80	69
62	2021-03-09	$9.32	21	113
63	2021-01-02	$8.20	43	190
64	2021-06-11	$6.40	95	197
65	2021-07-05	$1.46	73	172
66	2021-03-09	$8.28	2	78
67	2021-08-11	$8.86	68	90
68	2021-06-03	$1.18	82	91
69	2021-07-04	$9.18	39	86
70	2022-07-01	$1.91	7	53
71	2022-03-01	$7.10	20	36
72	2021-03-05	$3.54	100	25
73	2021-01-08	$1.67	73	137
74	2021-10-07	$7.74	51	59
75	2021-02-06	$2.88	100	108
76	2021-05-06	$0.61	74	60
77	2021-06-12	$6.75	62	152
78	2021-09-03	$7.15	18	80
79	2021-01-11	$0.52	87	191
80	2021-02-02	$8.88	13	94
81	2021-02-02	$0.41	94	170
82	2021-04-04	$7.56	100	123
83	2021-01-12	$2.62	8	80
84	2021-07-06	$0.73	96	129
85	2021-07-05	$8.60	42	171
86	2021-03-10	$3.19	92	56
87	2021-07-03	$5.03	47	126
88	2021-03-11	$2.66	100	127
89	2022-12-01	$6.22	98	159
90	2021-03-11	$0.05	92	163
91	2021-07-06	$2.88	99	67
92	2021-05-02	$2.60	45	172
93	2022-04-01	$5.14	43	164
94	2021-08-10	$9.47	77	74
95	2022-03-01	$8.41	44	16
96	2021-05-05	$0.85	18	166
97	2021-08-08	$9.80	93	44
98	2021-06-05	$5.12	86	57
99	2021-02-01	$0.55	9	11
100	2021-08-05	$8.14	87	188
101	2021-04-09	$2.39	21	16
102	2021-06-09	$7.66	31	94
103	2021-04-05	$6.03	22	89
104	2021-02-07	$6.06	72	135
105	2021-02-03	$8.82	6	98
106	2021-08-06	$8.97	63	83
107	2021-03-11	$9.21	100	123
108	2021-04-10	$9.14	6	196
109	2021-02-11	$3.18	26	121
110	2021-02-04	$9.35	75	175
111	2021-03-02	$7.18	72	179
112	2021-07-08	$4.92	98	186
113	2021-05-07	$0.29	21	46
114	2021-02-03	$7.34	7	126
115	2021-02-05	$4.94	11	31
116	2021-10-10	$6.64	96	144
117	2021-04-08	$8.73	26	142
118	2021-12-08	$3.73	47	7
119	2021-03-03	$7.12	77	174
120	2021-02-04	$1.78	42	30
121	2021-02-04	$3.33	88	166
122	2021-03-12	$3.13	80	48
123	2021-01-05	$1.28	69	74
124	2021-07-11	$8.97	9	106
125	2021-02-05	$2.37	55	144
126	2021-03-09	$8.71	56	13
127	2021-07-10	$2.37	62	184
128	2021-01-10	$0.69	69	44
129	2022-12-01	$8.74	14	199
130	2021-02-02	$1.76	97	161
131	2021-02-06	$7.04	80	180
132	2021-04-05	$8.26	28	112
133	2022-03-01	$4.07	39	40
134	2021-02-04	$5.73	21	10
135	2022-01-01	$1.65	55	20
136	2021-02-05	$6.95	65	152
137	2022-05-01	$8.77	17	197
138	2021-03-10	$2.99	61	154
139	2021-02-09	$4.18	51	102
140	2022-08-01	$0.80	36	195
141	2021-01-10	$6.33	90	99
142	2022-07-01	$6.85	3	59
143	2021-11-05	$8.09	72	153
144	2021-03-06	$0.14	15	178
145	2021-02-12	$4.92	84	168
146	2021-02-10	$2.38	76	2
147	2021-01-08	$6.46	53	22
148	2021-02-04	$9.44	52	182
149	2021-02-04	$7.63	32	82
150	2021-03-03	$6.47	63	151
151	2021-09-04	$4.11	15	7
152	2021-02-04	$3.45	59	59
153	2021-08-03	$7.72	66	130
154	2021-05-07	$8.33	81	193
155	2021-02-11	$6.69	5	89
156	2021-05-11	$1.98	82	75
157	2022-10-01	$8.57	69	27
158	2021-06-03	$3.65	75	182
159	2021-09-05	$4.18	7	37
160	2021-09-07	$1.38	13	111
161	2021-03-06	$8.49	7	53
162	2022-04-01	$8.62	40	90
163	2022-04-01	$3.93	75	195
164	2021-05-09	$5.70	6	153
165	2021-10-03	$8.68	88	63
166	2021-07-04	$9.19	99	15
167	2021-04-06	$8.16	38	70
168	2022-06-01	$2.89	93	77
169	2021-09-12	$3.83	71	143
170	2021-05-11	$4.18	86	168
171	2021-08-08	$0.44	69	104
172	2021-06-06	$4.07	1	76
173	2021-03-10	$6.32	73	22
174	2021-07-06	$5.34	65	38
175	2021-04-02	$6.07	71	60
176	2021-07-02	$3.63	23	21
177	2021-01-04	$7.39	28	110
178	2021-02-12	$0.33	91	171
179	2021-12-05	$4.57	18	65
180	2021-05-06	$8.70	49	156
181	2021-01-12	$8.98	71	75
182	2021-02-09	$0.25	16	77
183	2021-11-04	$9.38	42	53
184	2022-12-01	$0.46	87	174
185	2021-01-10	$0.46	40	176
186	2021-06-11	$5.10	18	195
187	2021-03-10	$3.46	57	66
188	2021-02-07	$2.00	17	162
189	2021-02-11	$5.31	42	39
190	2021-02-06	$7.41	86	187
191	2021-09-04	$8.22	34	117
192	2021-10-04	$3.03	22	101
193	2021-09-06	$3.94	35	120
194	2021-01-10	$9.94	58	107
195	2021-01-09	$0.09	80	47
196	2021-11-06	$5.87	63	147
197	2021-09-11	$0.81	45	4
198	2021-03-11	$3.32	82	171
199	2021-08-08	$4.40	37	167
200	2021-08-02	$7.88	29	2
201	2021-12-09	$0.93	44	167
202	2021-12-07	$0.93	62	34
203	2021-03-07	$8.51	23	80
204	2021-04-02	$3.28	72	63
205	2021-09-11	$8.38	71	49
206	2022-04-01	$5.64	23	198
207	2021-09-12	$3.07	20	94
208	2021-09-03	$2.69	75	66
209	2021-03-05	$4.48	35	151
210	2021-04-07	$5.95	11	191
211	2022-01-01	$3.74	45	88
212	2022-02-01	$8.27	60	97
213	2021-12-07	$7.52	68	69
214	2021-03-06	$2.93	71	200
215	2021-02-10	$9.47	63	69
216	2021-12-12	$8.14	92	98
217	2021-02-02	$0.85	10	121
218	2021-01-03	$7.15	98	164
219	2021-10-03	$3.50	6	87
220	2021-06-12	$5.77	18	65
221	2021-08-12	$8.02	44	158
222	2021-06-10	$9.93	79	143
223	2021-05-11	$9.50	48	183
224	2021-08-06	$2.78	45	30
225	2022-08-01	$6.93	92	113
226	2021-08-10	$1.27	88	124
227	2021-06-08	$3.70	74	150
228	2021-06-12	$7.48	57	42
229	2021-03-06	$5.94	65	165
230	2021-02-09	$0.12	6	105
231	2021-01-06	$0.03	66	12
232	2021-03-03	$2.45	82	140
233	2021-07-06	$6.82	53	186
234	2021-06-06	$0.02	85	122
235	2021-11-07	$5.26	17	34
236	2021-02-02	$9.41	48	77
237	2021-03-01	$2.17	99	180
238	2021-11-03	$9.08	100	20
239	2021-12-09	$4.47	17	132
240	2021-05-07	$3.42	92	31
241	2021-08-10	$3.80	2	130
242	2021-04-08	$4.90	44	195
243	2021-02-03	$2.56	73	138
244	2021-06-03	$9.91	1	63
245	2021-08-03	$3.04	77	180
246	2021-03-09	$4.96	15	92
247	2021-01-11	$4.33	33	122
248	2021-02-03	$1.51	23	133
249	2021-06-03	$4.31	67	158
250	2021-12-06	$5.97	79	22
\.


--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 202
-- Name: docteur_id_doc_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.docteur_id_doc_seq', 8, true);


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 204
-- Name: medicament_id_med_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medicament_id_med_seq', 10, true);


--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 206
-- Name: patient_id_pa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patient_id_pa_seq', 10, true);


--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 208
-- Name: prescription_id_pres_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prescription_id_pres_seq', 10, true);


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 210
-- Name: visite_id_vi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visite_id_vi_seq', 11, true);


--
-- TOC entry 2872 (class 2606 OID 16466)
-- Name: docteur docteur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docteur
    ADD CONSTRAINT docteur_pkey PRIMARY KEY (id_doc);


--
-- TOC entry 2874 (class 2606 OID 16477)
-- Name: medicament medicament_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicament
    ADD CONSTRAINT medicament_pkey PRIMARY KEY (id_med);


--
-- TOC entry 2876 (class 2606 OID 16485)
-- Name: patient patient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (id_pa);


--
-- TOC entry 2878 (class 2606 OID 16507)
-- Name: prescription prescription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT prescription_pkey PRIMARY KEY (id_pres);


--
-- TOC entry 2880 (class 2606 OID 16525)
-- Name: visite visite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visite
    ADD CONSTRAINT visite_pkey PRIMARY KEY (id_vi);


--
-- TOC entry 2882 (class 2606 OID 16513)
-- Name: prescription prescription_medicament_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT prescription_medicament_id_fkey FOREIGN KEY (medicament_id) REFERENCES public.medicament(id_med);


--
-- TOC entry 2881 (class 2606 OID 16508)
-- Name: prescription prescription_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT prescription_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patient(id_pa);


--
-- TOC entry 2883 (class 2606 OID 16526)
-- Name: visite visite_docteur_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visite
    ADD CONSTRAINT visite_docteur_id_fkey FOREIGN KEY (docteur_id) REFERENCES public.docteur(id_doc);


--
-- TOC entry 2884 (class 2606 OID 16531)
-- Name: visite visite_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visite
    ADD CONSTRAINT visite_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patient(id_pa);


-- Completed on 2022-01-27 09:53:47 WAT

--
-- PostgreSQL database dump complete
--

