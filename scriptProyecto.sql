CREATE DATABASE MEDICAMENTOS;
/*Creamos las tablas*/
create table MEDICAMENTOS.USUARIOS (
	users VARCHAR(50) PRIMARY KEY,
	pass VARCHAR(32),
	name VARCHAR(50),
	email VARCHAR(50),
	dateBirthday DATE,
	gender VARCHAR(50),
	admin VARCHAR(50)
);

create table MEDICAMENTOS.CATEGORIA (
	id INT PRIMARY KEY,
	name VARCHAR(50),
	description VARCHAR(50)
);

create table MEDICAMENTOS.ELEMENTOS (
	id INT PRIMARY KEY,
	name VARCHAR(950),
	description VARCHAR(950),
	price DECIMAL(5,2),
	id_categoria INT,
	stock INT,
	CONSTRAINT fk_cat FOREIGN KEY (id_categoria) REFERENCES MEDICAMENTOS.CATEGORIA (id)
);


CREATE TABLE MEDICAMENTOS.COMPRA (
id_elemento int,
users varchar(50),
price DECIMAL(15,2),
dateBuy DATE,
amount INT,
CONSTRAINT pk_med PRIMARY KEY (id_elemento,users,dateBuy),
CONSTRAINT fk_user FOREIGN KEY (users) REFERENCES MEDICAMENTOS.USUARIOS (users),
CONSTRAINT fk_elem FOREIGN KEY (id_elemento) REFERENCES MEDICAMENTOS.ELEMENTOS (id)
);

/*insertamos los datos*/

insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (1, 'Glenmark Generics Inc., USA', 'Organic contextually-based complexity');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (2, 'Meda Consumer Healthcare Inc.', 'Business-focused motivating instruction set');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (3, 'REMEDYREPACK INC.', 'Multi-channelled bi-directional function');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (4, 'ALK-Abello, Inc.', 'Up-sized object-oriented instruction set');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (5, 'ALK-Abello, Inc.', 'Balanced asymmetric solution');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (6, 'REMEDYREPACK INC.', 'Open-architected context-sensitive matrix');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (7, 'Bentlin Products LLC', 'Self-enabling object-oriented extranet');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (8, 'ESTEE LAUDER INC', 'Ergonomic attitude-oriented paradigm');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (9, 'Akorn Inc.', 'Versatile real-time emulation');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (10, 'ALK-Abello, Inc.', 'Down-sized discrete methodology');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (11, 'OMP, INC.', 'Business-focused heuristic focus group');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (12, 'Physicians Total Care, Inc.', 'Managed demand-driven software');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (13, 'Shionogi Inc.', 'Exclusive global orchestration');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (14, 'Fresenius Kabi USA, LLC', 'Operative client-driven artificial intelligence');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (15, 'Allermed Laboratories, Inc.', 'Realigned mobile knowledge base');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (16, 'Pharbest Pharmaceuticals, Inc', 'Profound intermediate data-warehouse');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (17, 'KANEBO COSMETICS INC', 'Fundamental coherent matrices');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (18, 'GlaxoSmithKline Consumer Healthcare LP', 'Mandatory maximized pricing structure');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (19, 'Cardinal Health', 'Centralized user-facing moderator');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (20, 'CVS Pharmacy, Inc.', 'Balanced coherent interface');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (21, 'REMEDYREPACK INC.', 'Ameliorated grid-enabled task-force');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (22, 'Blenheim Pharmacal, Inc.', 'Cross-group bottom-line intranet');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (23, 'Greenstone LLC', 'Open-source analyzing access');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (24, 'Terjan Co., Inc. DBA Valley Welding Supply Company', 'Ameliorated contextually-based solution');
insert into MEDICAMENTOS.CATEGORIA (id, name, description) values (25, 'Syntrion GmbH', 'Switchable solution-oriented extranet');

insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (1, 'Oxcarbazepine', 'Oxcarbazepine', 295.58, 21, 680);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (2, 'CVS Daily Pore Clearing Pads', 'SALICYLIC ACID', 57.47, 4, 732);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (3, 'Mesalamine', 'mesalamine', 166.17, 7, 40);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (4, 'Persantine', 'dipyridamole', 134.36, 10, 75);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (5, 'CLE DE PEAU BEAUTE GENTLE PROTECTIVE I', 'Ensulizole, Octinoxate, Octocrylene, and Oxybenzone', 116.04, 12, 680);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (6, 'Acetaminophen', 'Acetaminophen', 8.68, 22, 46);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (7, 'Stridex', 'Salicylic Acid', 117.84, 17, 498);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (8, 'Trandolapril', 'Trandolapril', 144.52, 14, 515);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (9, 'Argentum Malachite Athletes Foot Relief', 'Argentum Malachite Athletes Foot Relief', 7.18, 6, 912);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (10, 'Giorgio Armani Designer Lift Smoothing Firming Foundation Broad Spectrum SPF 20 Sunscreen', 'Octinoxate and Titanium dioxide', 94.1, 2, 183);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (11, 'QUETIAPINE FUMARATE', 'QUETIAPINE FUMARATE', 288.12, 5, 633);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (12, 'Meropenem', 'Meropenem', 290.12, 4, 525);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (13, 'Cortizone 10 Easy Relief', 'Hydrocortisone', 11.38, 8, 647);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (14, 'Fluconazole', 'Fluconazole', 189.32, 15, 763);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (15, 'Inapsine', 'Droperidol', 86.52, 15, 232);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (16, 'ESIKA', 'Octinoxate and Oxybenzone', 123.76, 20, 431);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (17, 'OXY Daily Defense Cleansing Pads', 'Salicylic Acid', 125.33, 11, 224);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (18, 'ELCURE CUREKIN', 'CENTELLA ASIATICA', 219.41, 10, 346);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (19, 'pain relief pm', 'Acetaminophen, Diphenhydramine HCl', 233.68, 17, 660);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (20, 'Captopril', 'Captopril', 33.59, 4, 406);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (21, 'Anti itch Topical Analgesic', 'Diphenhydramine Hydrochloride, Zinc Acetate', 156.57, 5, 469);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (22, 'CARE ONE', 'TRICLOSAN', 164.86, 25, 224);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (23, 'TRETIN.X', 'TRETINOIN', 147.88, 5, 860);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (24, 'CONCERTA', 'Methylphenidate hydrochloride', 193.28, 16, 406);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (25, 'KETOROLAC TROMETHAMINE', 'KETOROLAC TROMETHAMINE', 197.47, 18, 239);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (26, 'Pramoxine hydrochloride', 'Pramoxine hydrochloride', 42.46, 21, 917);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (27, 'TEMODAR', 'Temozolomide', 267.4, 21, 538);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (28, 'Metoclopramide', 'Metoclopramide Hydrochloride', 155.64, 16, 430);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (29, 'COREG', 'carvedilol', 181.91, 14, 310);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (30, 'Extra Strength Pain Reliever', 'Acetaminophen, Aspirin and caffeine', 150.16, 16, 710);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (31, 'Clonidine Hydrochloride', 'clonidine hydrochloride', 129.91, 19, 301);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (32, 'Albumin (Human)', 'Albumin Human', 203.0, 3, 523);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (33, 'Mirapex', 'pramipexole dihydrochloride', 166.88, 13, 891);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (34, 'Appeal Antibac', 'Triclosan', 138.53, 24, 967);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (35, 'EYE ITCH RELIEF', 'Ketotifen Fumarate', 212.77, 22, 421);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (36, 'ReCreate Foundation', 'Octinoxate, Octisalate, and Oxybenzone', 261.56, 6, 793);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (37, 'Terbutaline Sulfate', 'Terbutaline Sulfate', 59.79, 13, 966);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (38, 'Ceftriaxone Sodium', 'Ceftriaxone Sodium', 249.48, 1, 234);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (39, 'Torsemide', 'Torsemide', 136.26, 5, 928);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (40, 'Grama Grass', 'Grama Grass', 246.73, 16, 345);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (41, 'MECLIZINE HYDROCHLORIDE', 'Meclizine Hydrocloride', 102.81, 12, 723);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (42, 'Homeopathic Acne', 'Potassium hydrate, calcium sulphide, poison nut, cuttlefish ink', 115.14, 16, 758);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (43, 'Treatment Set TS340054', 'Treatment Set TS340054', 136.66, 16, 343);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (44, 'Virginia Live Oak', 'Virginia Live Oak', 88.68, 16, 126);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (45, 'VANCOMYCIN HYDROCHLORIDE', 'VANCOMYCIN HYDROCHLORIDE', 242.63, 22, 546);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (46, 'LOreal Paris Revitalift', 'Avobenzone Homosalate Octisalate Octocrylene', 25.76, 22, 659);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (47, 'Alcohol Prep Pad', 'Isopropyl Alcohol', 232.12, 1, 807);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (48, 'APRIL Bath and Shower Sweet Pea Scented Antibacterial HAND SANITIZER', 'ALCOHOL', 146.97, 9, 461);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (49, 'DDF', 'Avobenzone, Homosalate, Octisalate and Octocrylene', 215.46, 22, 530);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (50, 'Methazolamide', 'Methazolamide', 58.07, 19, 990);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (51, 'Depo-Provera', 'medroxyprogesterone acetate', 291.23, 18, 242);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (52, 'ABILIFY', 'ARIPIPRAZOLE', 296.78, 8, 762);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (53, 'Spironolactone', 'spironolactone', 87.74, 7, 546);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (54, 'NITROUS OXIDE', 'NITROUS OXIDE', 174.37, 21, 225);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (55, 'SPF 15 Anti-shine moisturizing', 'OCTINOXATE and OCTOCRYLENE', 260.23, 7, 891);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (56, 'ATORVASTATIN CALCIUM', 'ATORVASTATIN CALCIUM', 256.82, 10, 78);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (57, 'Losartan Potassium', 'Losartan Potassium', 69.01, 21, 697);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (58, 'Ultimate Rescue', 'Cherry Plum, Clematis, Impatiens, Rock rose, Star of Bethlehem, ATP, Pineal, thymus', 112.0, 9, 676);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (59, 'Extended Phenytoin Sodium', 'Phenytoin Sodium', 67.66, 16, 757);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (60, 'Quetiapine fumarate', 'quetiapine fumarate', 74.21, 15, 485);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (61, 'Goutinex', 'Actaea Spicata, Ammonium Phosphoricum, Belladonna, Colchicum Autumnale, Formicum Acidum, Fraxinus Excelsior, Ledum Palustre, Natrum Carbonicum, Nux Vomica, Phytolacca Decandra, Rhododendron Chrysanthum, Salicylicum Acidum, Urtica Urens', 83.65, 15, 718);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (62, 'Relief 3-G12', 'acetylcholine chloride, histamine, interferon gamma-1a, interleukin-12 human, serotonin', 222.78, 10, 171);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (63, 'Furosemide', 'furosemide', 237.44, 11, 106);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (64, 'Pantoprazole Sodium', 'Pantoprazole Sodium', 80.43, 18, 323);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (65, 'THERAFREEZE', 'MENTHOL', 110.72, 2, 738);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (66, 'head congestion', 'Acetaminophen, Chlorpheniramine maleate, Dextromethorphan HBr, Phenylephrine HCl', 137.19, 19, 537);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (67, 'PORK', 'pork', 71.58, 5, 652);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (68, 'Glytone Suncare block sunscreen', 'octinoxate, octisalate, xinc oxide', 26.13, 25, 312);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (69, 'good sense daytime nighttime', 'Acetaminophen, Dextromethorphan HBr, Doxylamine succinate, Phenylephrine HCl', 71.94, 23, 442);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (70, 'DR. Fresh Dailies Travel', 'SODIUM FLUORIDE', 83.67, 8, 691);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (71, 'Medroxyprogesterone Acetate', 'Medroxyprogesterone Acetate', 248.2, 5, 819);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (72, 'Amitriptyline Hydrochloride', 'Amitriptyline Hydrochloride', 149.11, 7, 467);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (73, 'FERMENTED POMEGRANTE WHITENING SLEEPING MASK', 'DIMETHICONE', 227.22, 9, 317);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (74, 'Hair Regrowth Treatment', 'Minoxidil', 152.35, 16, 625);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (75, 'DIARRHEA VOMITING', 'CUPRIC ARSENITE', 229.45, 11, 66);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (76, 'Levothyroxine Sodium', 'levothyroxine sodium', 117.1, 22, 252);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (77, 'Viagra', 'sildenafil citrate', 145.33, 20, 720);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (78, 'Topcare Pain Relief', 'Acetaminophen', 152.09, 22, 975);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (79, 'California Mugwort', 'California Mugwort', 153.41, 21, 782);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (80, 'SUN SHADES', 'octinoxate and oxybenzone', 15.8, 23, 234);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (81, 'Irbesartan', 'Irbesartan', 126.72, 1, 177);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (82, 'Pleo Alb', 'candida albicans', 292.71, 18, 44);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (83, 'Abstral', 'fentanyl citrate', 215.85, 15, 624);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (84, 'LBEL COULEUR LUXE AMPLIFIER XP', 'Octinoxate and Oxybenzone', 68.18, 8, 787);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (85, 'Minocycline Hydrochloride', 'Minocycline Hydrochloride', 21.65, 14, 361);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (86, 'Treatment Set TS334972', 'Treatment Set TS334972', 229.26, 4, 224);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (87, 'ALLIUM CEPA', 'ONION', 208.25, 13, 592);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (88, 'Mary Kay Tinted Lip Balm Sunscreen SPF 15 Apricot', 'octinoxate, octocrylene, oxybenzone, zinc oxide', 277.93, 19, 8);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (89, 'VENTOLIN', 'albuterol sulfate', 106.38, 3, 375);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (90, 'Neutrogena', 'Benzoyl Peroxide', 282.88, 14, 594);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (91, 'Amnesteem', 'isotretinoin', 128.44, 24, 834);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (92, 'Prochlorperazine Maleate', 'Prochlorperazine Maleate', 98.13, 18, 383);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (93, 'Ziprasidone Hydrochloride', 'Ziprasidone Hydrochloride', 250.49, 21, 356);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (94, 'Anticavity', 'Sodium fluoride', 131.73, 23, 697);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (95, 'Losartan Potassium', 'losartan potassium', 79.45, 8, 579);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (96, 'Surgery/Trauma', 'HYPERICUM,ARNICA,SYMPHYTUM OFFICINALE, BELLIS PERENNIS, STAPHYSAGRIA', 147.25, 23, 10);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (97, 'Piyanping antiitch', 'Hydrocortisone', 202.39, 4, 965);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (98, 'Striverdi Respimat', 'olodaterol respimat inhalation spray', 51.32, 20, 296);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (99, 'Coppertone Tanning Dry Oil', 'Avobenzone, Homosalate, Octisalate, and Oxybenzone', 242.21, 12, 74);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_Categoria, stock) values (100, 'IDOLE BLACK', 'HYDROQUINONE', 187.19, 10, 280);



insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('ugammon0', MD5('RhPSyNNCwU'), 'Ulises', 'ugeibel0@fema.gov', '2022-04-05', 'M', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('sandrichuk1', MD5('WVWId7Q'), 'Staci', 'sbreakspear1@msu.edu', '2022-08-02', 'F', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('bstrickett2', MD5('GImdMnQ5If1q'), 'Basilius', 'brudgley2@slashdot.org', '2022-07-26', 'M', true);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('smckerlie3', MD5('lBLcrsVD1c'), 'Starlene', 'slekeux3@ycombinator.com', '2021-12-21', 'F', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('ssmithyman4', MD5('H2tJbE'), 'Skipper', 'sdragoe4@issuu.com', '2021-12-25', 'M', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('lhaukey5', MD5('nMnklCiT'), 'Leonard', 'lradoux5@patch.com', '2021-12-14', 'M', true);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('gmorratt6', MD5('w85TlGHp'), 'Gaye', 'gelce6@phpbb.com', '2022-03-13', 'F', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('gguyonnet7', MD5('OAmJToS'), 'Gale', 'gnobles7@acquirethisname.com', '2022-08-10', 'F', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('cfensome8', MD5('pQoh5U36Zy'), 'Concettina', 'cflucker8@live.com', '2022-06-18', 'F', true);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('bgilliatt9', MD5('Tq5CMukj'), 'Babara', 'btroke9@unesco.org', '2022-03-09', 'F', true);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('lstoadea', MD5('iTkrNyEy1PSN'), 'Leshia', 'lswindlehursta@bloomberg.com', '2022-06-25', 'F', true);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('kbrameltb', MD5('pCeLS1iNG0Yv'), 'Kacie', 'kbuddellb@ehow.com', '2022-01-19', 'F', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('rtreanorc', MD5('6orZIjyye'), 'Roland', 'rsavilc@dagondesign.com', '2022-06-26', 'M', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('ajeandilloud', MD5('e7BUfD4Y'), 'Ailina', 'abussettid@sun.com', '2022-02-14', 'F', true);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('fjellemane', MD5('s1vY0qhC2ZPH'), 'Fiann', 'fdeaconsone@springer.com', '2022-03-02', 'F', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('nlanglaisf', MD5('2vjgPR9CEKw'), 'Norman', 'ndesaurf@redcross.org', '2022-08-16', 'M', true);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('dcharlickg', MD5('iT5h7Zwy'), 'Dennison', 'dsiddeng@w3.org', '2021-11-06', 'M', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('tcosgryh', MD5('Q3oWlTV73Ger'), 'Timofei', 'twadleyh@usda.gov', '2022-08-26', 'M', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('mparradinei', MD5('Vl20v4H'), 'Maxim', 'mharmari@usatoday.com', '2022-06-20', 'M', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('hbridgstockj', MD5('cTpnIdg'), 'Hendrik', 'hroarkj@issuu.com', '2022-01-20', 'M', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('jallnattk', MD5('Izz00m'), 'Jillie', 'jbickerdickek@oakley.com', '2021-12-04', 'F', true);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('lhallowayl', MD5('bdJ0pAM'), 'Lethia', 'lramshayl@ehow.com', '2022-01-04', 'F', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('lcopestakem', MD5('lvgeNRi2e'), 'Locke', 'lifillm@cbslocal.com', '2022-08-14', 'M', false);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('ktolern', MD5('nkjF5B'), 'Kaine', 'kscandriten@eepurl.com', '2022-04-17', 'M', true);
insert into MEDICAMENTOS.USUARIOS (users, pass, name, email, dateBirthday, gender, admin) values ('iblakeleyo', MD5('O0ypHrHYoL'), 'Imogen', 'isturro@discuz.net', '2022-05-03', 'F', true);


CREATE USER 'garcia'@'%' IDENTIFIED BY 'juanma';
GRANT ALL PRIVILEGES ON MEDICAMENTOS.* to 'garcia'@'%';