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
	name VARCHAR(250),
	description VARCHAR(400),
	price DECIMAL(5,2),
	id_categoria INT,
	CONSTRAINT fk_cat FOREIGN KEY (id_categoria) REFERENCES MEDICAMENTOS.CATEGORIA (id)
);

CREATE TABLE MEDICAMENTOS.COMPRA (
id_elemento int,
users varchar(50),
price DECIMAL(5,2),
dateBirthday DATE,
CONSTRAINT pk_med PRIMARY KEY (id_elemento,users),
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

insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (1, 'Topotecan', 'De-engineered local secured line', 72.17, 23);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (2, 'Topiramate', 'Re-contextualized cohesive orchestration', 186.89, 23);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (3, 'Alendronate Sodium', 'User-friendly directional access', 187.97, 20);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (4, 'Pravastatin Sodium', 'Front-line human-resource model', 309.47, 10);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (5, 'Risperidone', 'Digitized intermediate workforce', 211.17, 7);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (6, 'TREXIMET', 'Ergonomic leading edge approach', 66.92, 23);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (7, 'Calcium Acetate', 'Future-proofed grid-enabled structure', 101.36, 4);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (8, 'Therabenzaprine-90', 'Fully-configurable interactive instruction set', 396.23, 20);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (9, 'FANAPT', 'Profound leading edge function', 38.79, 8);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (10, 'Acetadryl', 'Cross-platform user-facing frame', 174.5, 22);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (11, 'Gemfibrozil', 'Exclusive context-sensitive project', 108.53, 14);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (12, 'Trihexyphenidyl Hydrochloride', 'Right-sized composite matrices', 39.53, 3);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (13, 'Extra Strength Pain Relief Therapy', 'Operative maximized moratorium', 307.68, 5);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (14, 'Arthritazin Pain Relieving', 'Multi-channelled contextually-based process improvement', 83.23, 23);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (15, 'Givenchy Photo Perfexion Fluid Foundation SPF 20 Perfect Ivory Tint 1', 'Networked next generation moratorium', 29.82, 4);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (16, 'Rejuvesol', 'Secured web-enabled utilisation', 223.41, 15);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (17, 'Antifungal', 'Optimized asynchronous infrastructure', 345.31, 10);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (18, 'ARNICA', 'Operative background workforce', 301.21, 18);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (19, 'ADVIL', 'Reduced multi-tasking software', 238.69, 6);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (20, 'ERYTHROMYCIN', 'Realigned national capability', 332.15, 6);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (21, 'Donepezil Hydrochloride', 'Business-focused user-facing product', 201.72, 12);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (22, 'LAMICTAL', 'Grass-roots scalable core', 236.86, 14);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (23, 'tramadol hydrochloride', 'Assimilated incremental matrices', 60.35, 18);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (24, 'Ecolab', 'Triple-buffered exuding toolset', 202.56, 20);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (25, 'CHAETOMIUM GLOBOSUM', 'Operative high-level projection', 331.07, 6);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (26, 'Oxygen', 'Public-key contextually-based encoding', 299.7, 21);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (27, 'Gabapentin', 'Stand-alone asymmetric policy', 398.07, 4);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (28, 'DIPYRIDAMOLE', 'Vision-oriented intermediate time-frame', 146.92, 21);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (29, 'OPANA', 'Synergistic client-server superstructure', 181.04, 11);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (30, 'lisinopril', 'Down-sized bottom-line function', 191.34, 24);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (31, 'METFORMIN HYDROCHLORIDE', 'Managed intangible intranet', 340.79, 18);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (32, 'Gillette Clinical', 'Optional dynamic framework', 245.55, 16);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (33, 'Fludeoxyglucose F18', 'Self-enabling empowering monitoring', 346.97, 3);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (34, 'Viscumforce', 'Configurable bifurcated implementation', 31.48, 12);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (35, 'anti nausea', 'Digitized value-added productivity', 117.19, 13);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (36, 'Proactiv Solution Extra Strength Formula Toner Acne Treatment', 'Progressive high-level benchmark', 339.86, 4);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (37, 'Duloxetine', 'Synergized background benchmark', 247.75, 22);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (38, 'Leucovorin Calcium', 'Decentralized national framework', 385.79, 15);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (39, 'Metabolic Support', 'Monitored hybrid solution', 327.96, 9);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (40, 'LEADER ORIGINAL FORMULA', 'Mandatory responsive knowledge base', 222.74, 4);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (41, 'Amlobenz', 'Multi-layered fault-tolerant moratorium', 262.98, 17);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (42, 'Oxygen', 'Ameliorated coherent encoding', 316.76, 8);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (43, 'Metformin Hydrochloride', 'Phased directional capability', 45.36, 8);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (44, 'Prandin', 'Compatible didactic structure', 331.84, 13);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (45, 'Mesmerize for Men', 'Multi-channelled solution-oriented throughput', 271.01, 18);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (46, 'Assured Childrens Cold and Cough', 'De-engineered human-resource emulation', 317.93, 7);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (47, 'DPT TOX', 'Advanced empowering internet solution', 388.32, 15);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (48, 'Alcohol Pad', 'Reactive homogeneous core', 43.5, 24);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (49, 'Neutrogena Revitalizing Lip Balm', 'Multi-tiered national portal', 6.06, 14);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (50, 'Otrexup', 'Open-source incremental superstructure', 100.66, 13);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (51, 'Black Birch', 'Persevering methodical migration', 23.93, 21);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (52, 'Doxazosin', 'Cloned 5th generation website', 200.29, 6);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (53, 'Clove', 'Innovative dedicated implementation', 72.32, 21);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (54, 'Diovan', 'Object-based non-volatile functionalities', 311.33, 13);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (55, 'HYDROCODONE BITARTRATE AND ACETAMINOPHEN', 'Persistent empowering standardization', 309.71, 15);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (56, 'New Terocin', 'Decentralized asynchronous knowledge base', 29.73, 12);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (57, 'Rite Aid Ultra Strength Muscle Rub', 'Grass-roots static parallelism', 147.95, 3);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (58, 'Atorvastatin Calcium', 'Stand-alone optimizing database', 202.83, 22);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (59, 'Pain Reliever', 'User-centric bandwidth-monitored flexibility', 241.13, 16);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (60, 'Oxacillin', 'Object-based 4th generation service-desk', 181.05, 19);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (61, 'Levothyroxine Sodium', 'Programmable tertiary hub', 350.81, 13);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (62, 'Captopril', 'Face to face uniform open system', 122.45, 4);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (63, 'Motion Sickness Relief', 'Up-sized solution-oriented middleware', 321.46, 17);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (64, 'Oxymorphone Hydrochloride', 'Expanded stable secured line', 2.28, 8);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (65, 'Furosemide', 'Quality-focused multimedia paradigm', 285.93, 19);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (66, 'ESTRADIOL', 'Cloned analyzing synergy', 54.53, 11);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (67, 'Healthy Accents Stay Awake', 'Ameliorated national encryption', 160.76, 1);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (68, 'Rexall Nicotine', 'Object-based foreground moratorium', 100.51, 19);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (69, 'HAND SANITIZER', 'Virtual motivating encryption', 266.28, 2);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (70, 'Dr. Sheffield Psoriasis Medicated Moisturizer', 'Progressive attitude-oriented intranet', 251.73, 2);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (71, 'Escitalopram', 'User-friendly methodical architecture', 200.22, 13);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (72, 'Azithromycin', 'Monitored human-resource framework', 343.8, 22);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (73, 'Childrens', 'Mandatory content-based moderator', 128.8, 11);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (74, 'SONGYUM New Pinesalt', 'Seamless optimal open system', 38.95, 14);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (75, 'Ropinirole', 'Fully-configurable solution-oriented groupware', 49.27, 5);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (76, 'Natural Cherry Honey Herb Throat Drops', 'Advanced value-added Graphical User Interface', 117.21, 18);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (77, 'Chemdetox', 'Monitored zero defect emulation', 105.21, 10);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (78, 'Multi-Symptom Cold and Cough Daytime Nighttime', 'Synergized national methodology', 220.1, 20);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (79, 'Fentanyl Citrate, Bupivacaine HCl', 'Decentralized optimal internet solution', 373.69, 16);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (80, 'Nizatidine', 'Synergistic 24/7 extranet', 304.83, 18);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (81, 'Perfect Purity Antibacterial Gold', 'Synergistic bandwidth-monitored leverage', 228.89, 18);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (82, 'OXYGEN', 'Configurable zero administration array', 158.46, 11);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (83, 'Glyburide', 'User-centric full-range orchestration', 326.48, 20);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (84, 'NABUMETONE', 'Configurable global collaboration', 90.3, 14);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (85, 'ARALIA QUINQUEFOLIA', 'Operative high-level customer loyalty', 194.53, 20);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (86, 'DECAVAC', 'Synchronised interactive definition', 195.76, 14);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (87, 'Ailanthus', 'Advanced multi-state collaboration', 392.88, 17);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (88, 'Glyburide', 'Public-key stable model', 81.88, 2);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (89, 'Nerve Plus Composition', 'Future-proofed global service-desk', 44.09, 2);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (90, 'SILVADENE', 'Decentralized modular budgetary management', 314.29, 1);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (91, 'COUMADIN', 'Synergistic next generation process improvement', 62.3, 11);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (92, 'ZOMIG', 'Realigned asymmetric pricing structure', 134.51, 24);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (93, 'Cubicin', 'User-centric mobile encoding', 114.07, 13);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (94, 'Sei Bella Age-Defying Liquid Foundation', 'Fully-configurable multi-state array', 286.88, 19);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (95, 'Cortisone Acetate', 'Robust human-resource algorithm', 384.96, 10);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (96, 'LubriFresh P.M.', 'Extended bottom-line capability', 289.04, 9);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (97, 'Corn Grain', 'Re-engineered cohesive secured line', 399.84, 3);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (98, 'Fluoxetine', 'Open-architected radical leverage', 329.55, 23);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (99, 'Allergy Get Relief', 'Devolved directional synergy', 81.52, 7);
insert into MEDICAMENTOS.ELEMENTOS (id, name, description, price, id_categoria) values (100, 'Sinusitis', 'Polarised maximized success', 340.36, 3);



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