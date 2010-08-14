

# DBTools DBMYSQL - MySQL Database Dump
#  drop database  dbEncuesta
CREATE DATABASE `dbEncuesta`;
USE `dbEncuesta`;

# Dumping Table Structure for tb_encuesta
#
CREATE TABLE `tb_encuesta` (
  `id_enc` int,
  `tit_enc` varchar(100) default NULL,
  `est_enc` int,
  `fec_ini_enc` varchar(10) default NULL,
  `fec_fin_enc` varchar(10) default NULL,
  `pob_enc` int,
  PRIMARY KEY  (`id_enc`)
 ) TYPE=MyISAM;
#



# Dumping Table Structure for tb_cuestionario
#

# Dumping Table Structure for tb_encxdist
#
CREATE TABLE `tb_encxdist` (
  `id_enc` int,
  `CodigoDistrito` varchar(6) default NULL,
  KEY `id_enc` (`id_enc`),
  KEY `CodigoDistrito` (`CodigoDistrito`)
) TYPE=MyISAM;
#

# Dumping Table Structure for tb_prexenc
#
CREATE TABLE `tb_prexenc` (
  `id_pre` int,
  `id_enc` int,
  KEY `id_pre` (`id_pre`),
  KEY `id_enc` (`id_enc`)
) TYPE=MyISAM;
#

# Dumping Table Structure for tb_pregunta
#
CREATE TABLE `tb_pregunta` (
  `id_pre` int,
  `des_pre` varchar(255) default NULL,
  `id_tip_pre` int,
  `ord_pre` int default NULL,
  `tip_pre_gra` varchar(1) NULL,
  PRIMARY KEY  (`id_pre`)
) TYPE=MyISAM;
#


# Dumping Table Structure for tb_tipo_pregunta
#
CREATE TABLE `tb_tipo_pregunta` (
  `id_tip_pre` int,
  `des_tip_pre` varchar(255) default NULL,
  `tip_gra` varchar(1) NULL,
  PRIMARY KEY  (`id_tip_pre`)
) TYPE=MyISAM;
#


# Dumping Table Structure for tb_opcxpre
#
CREATE TABLE `tb_opcxpre` (
  `id_opc` int,
  `id_pre` int,
  KEY `id_opc` (`id_opc`),
  KEY `id_pre` (`id_pre`)
) TYPE=MyISAM;
#

# Dumping Table Structure for tb_opcion
#
CREATE TABLE `tb_opcion` (
  `id_opc` int,
  `des_opc` varchar(255) default NULL,
  PRIMARY KEY  (`id_opc`)
) TYPE=MyISAM;
#

# Dumping Table Structure for tb_result_fin
#
CREATE TABLE `tb_result_fin` (
  `id_enc` int,
  `id_opc` int,
  `id_pre` int,
  `cod_usu` varchar(4),
  `fecha_res` varchar(10),
  KEY `id_enc` (`id_enc`),
   KEY `id_opc` (`id_opc`),
  KEY `id_pre` (`id_pre`),
  KEY `cod_usu`(`cod_usu`)
) TYPE=MyISAM;
#

# Dumping Table Structure for tb_usuario
#
CREATE TABLE `tb_usuario` (
  `cod_usu` varchar(4) NOT NULL default '',
  `user_usu` varchar(20) default NULL,
  `pass_usu` varchar(20) default NULL,
  `nom_usu` varchar(20) default NULL,
  `ape_usu` varchar(20) default NULL,
  `nro_doc_usu` varchar(10) default NULL,
  `CodigoDistrito` varchar(6) default NULL,
  `rol_usu` int default NULL,
  PRIMARY KEY  (`cod_usu`),
  KEY `CodigoDistrito` (`CodigoDistrito`)
) TYPE=MyISAM;
#
# Dumping Data for tb_usuario
#
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U001', 'ceci', 'ceci', 'cecilia', 'ramirez', '40476774', '140101', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U002', 'jose', 'jose', 'jose', 'ingaruca', '40476774', '140101', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U003', 'manu', 'manu', 'manuel', 'gonzalez', '40476774', '140101', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U004', 'sofi', 'sofi', 'sophia', 'mendez', '40476774', '140101', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U005', 'gaby', 'gaby', 'gabriela', 'rojas', '40476774', '140103', 0);

INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U006', 'chriss', 'chriss', 'chriss','gomez','40010203', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U007', 'pedro', 'pedro', 'pedro','aquino','45892880', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U008', 'tefy', 'tefy', 'tefy','quijada','41424344', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U009', 'caro', 'caro', 'caro','obregon','23000089', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U010', 'elmer', 'elmer', 'elmer','perez','41234567', '140104', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U011', 'jimmy', 'jimmy', 'jimmy','velasquez','42657849', '140104', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U012', 'valeriano', 'valeriano', 'valeriano','aquino','25346735', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U013', 'alessana', 'alessana', 'alessana','munive','44278934', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U014', 'carlitos', 'carlitos', 'carlitos','navarro','40011103', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U015', 'yudi', 'yudi', 'yudi','aquino','45342880', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U016', 'silverstein', 'silverstein', 'silverstein','cat','40424344', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U017', 'tati', 'tati', 'tati','minan','43000089', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U018', 'verito', 'verito', 'verito','villacorta','45634567', '140104', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U019', 'bertha', 'bertha', 'bertha','arcondo','42657849', '140104', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U020', 'bertha', 'bertha', 'bertha','espinoza','25346735', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U021', 'rossana', 'rossana', 'rossana','mendoza','45278934', '140103', 0);

INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U022', 'juan', 'juan', 'juan','navarro','42011103', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U023', 'juan', 'juan', 'juan','aquino','45342280', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U024', 'peter', 'peter', 'peter','cat','40464344', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U025', 'caro', 'caro', 'caro','olmedo','25000089', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U026', 'luchito', 'luchito', 'luchito','soldevilla','41232267', '140104', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U027', 'jimmy', 'jimmy', 'jimmy','cat','42645849', '140104', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U028', 'valentina', 'valentina', 'valentina','aquino','22346735', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U029', 'alessana', 'alessana', 'alessana','ore','44273434', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U030', 'carlitos', 'carlitos', 'carlitos','perez','40054103', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U031', 'yani', 'yani', 'yani','lazo','43442880', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U032', 'evila', 'evila', 'evila','carreazo','40424336', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U033', 'caroline', 'caroline', 'caroline','romero','25000079', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U034', 'reily', 'reily', 'reily','chavez','41233467', '140104', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U035', 'yaneth', 'yaneth', 'yaneth','martinez','42347849', '140104', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U036', 'edson', 'edson', 'edson','hotner','22346735', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U037', 'camila', 'camila', 'camila','gomez','44234934', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U038', 'raul', 'raul', 'raul','montes','45011303', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U039', 'leidy', 'leidy', 'leidy','momtalvan','45312880', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U040', 'alejo', 'alejo', 'alejo','montanez','40424345', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U041', 'lennon', 'lennon', 'lennon','shimokawa','25006089', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U042', 'rosario', 'rosario', 'rosario','vilanueva','41232467', '140104', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U043', 'miriam', 'miriam', 'miriam','narvaez','45378948', '140104', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U044', 'alex', 'alex', 'alex','vidaurre','24646735', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U045', 'aldrin', 'aldrin', 'aldrin','peña','46378920', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U046', 'hans', 'hans', 'hans','guevara','40451103', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U047', 'leon', 'leon', 'leon','quispe','45742880', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U048', 'billie', 'billie', 'billie','armstrong','20202020', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U049', 'tree', 'tree', 'tree','cool','20191920', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U050', 'mike', 'mike', 'mike','dirnt','41234307', '140104', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U051', 'alexis', 'alexis', 'alexis','korfiais','42657849', '140104', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U052', 'emilio', 'emilio', 'emilio','gates','23046735', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U053', 'mauricio', 'mauricio', 'mauricio','llona','278934', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U054', 'jonathan', 'jonathan', 'jonathan','lopez','42015203', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U055', 'lolo', 'lolo', 'lolo','paz','25112503', '140101', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U056', 'roger', 'roger', 'roger','paihua','45221203', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U057', 'chela', 'chela', 'chela','huascar','42013333', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U058', 'lili', 'lili', 'lili','rooz','45991203', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U059', 'mimi', 'mimi', 'mimi','carreazo','45055503', '140101', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U060', 'rocio', 'rocio', 'rocio','lopez','45011203', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U061', 'rosa', 'rosa', 'rosa','lopez','45012503', '140101', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U062', 'martin', 'martin', 'martin','llacsa','45011203', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U063', 'norma', 'norma', 'norma','gutierrez','42011203', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U064', 'elias', 'elias', 'elias','cerna','40015503', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U065', 'roberto', 'roberto', 'roberto','mostorino','25011203', '140100', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U066', 'jose', 'jose', 'jose','escajadillo','45012203', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U067', 'lizbeth', 'lizbeth', 'lizbeth','ballinas','25012503', '140101', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U068', 'flor', 'flor', 'flor','quispe','45011289', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U069', 'humberto', 'humberto', 'humberto','gomez','48011203', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U070', 'patty', 'patty', 'patty','patiño','40015503', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U071', 'cesar', 'cesar', 'cesar','portilla','25011203', '140100', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U072', 'jose', 'jose', 'jose','torres','25112203', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U073', 'katya', 'katya', 'katya','orozco','25012587', '140101', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U074', 'kelly', 'kelly', 'kelly','muñoz','22011289', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U075', 'humberto', 'humberto', 'humberto','lay','28011203', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U076', 'augusto', 'augusto', 'augusto','melgarño','40015883', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U077', 'cesar', 'cesar', 'cesar','pacora','15011203', '140100', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U078', 'rolando', 'rolando', 'rolando','corasi','45012203', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U079', 'freddy', 'freddy', 'freddy','ortega','15012503', '140101', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U080', 'freddy', 'freddy', 'freddy','calambrito','25987689', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U081', 'roberto', 'roberto', 'roberto','martinez','48011203', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U082', 'gisela', 'gisela', 'gisela','castro','41115503', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U083', 'cesar', 'cesar', 'cesar','quispe','25033303', '140100', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U084', 'jose', 'jose', 'jose','anastacio','10425879', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U085', 'rebeca', 'rebeca', 'rebeca','caceres','15487968', '140101', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U086', 'kina', 'kina', 'kina','malpartida','10548978', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U087', 'robert', 'robert', 'robert','casas','15248798', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U088', 'lourdes', 'lourdes', 'lourdes','alfaro','42578978', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U089', 'coco', 'coco', 'coco','nuñez','15111203', '140100', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U090', 'pepe', 'pepe', 'pepe','ramirez','45812203', '140102', 1);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U091', 'edwar', 'edwar', 'edwar','levano','10524879', '140101', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U092', 'christopher', 'christopher', 'christopher','navarro','26897568', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U093', 'roberto', 'clasudy', 'clasudy','clasudy','78987598', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U094', 'martin', 'martin', 'martin','gonzalez','25687858', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U095', 'judith', 'judith', 'judith','jara','10778865', '140100', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U096', 'pedro', 'pedro', 'pedro','carmona','16548978', '140101', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U097', 'freddy', 'freddy', 'freddy','power','10245789', '140103', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U098', 'ceci', 'ceci', 'ceci','blas','78965879', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U099', 'miriam', 'miriam', 'miriam','altamirano','78968769', '140102', 0);
INSERT INTO `tb_usuario` (cod_usu, user_usu, pass_usu, nom_usu, ape_usu,nro_doc_usu, CodigoDistrito,rol_usu) VALUES ('U100', 'cesar', 'cesar', 'cesar','arbulu','23659898', '140100', 0);






CREATE TABLE `tb_distrito` (
  `CodigoDistrito` varchar(6) NOT NULL default '',
  `CodigoProvincia` varchar(4) default NULL,
  `CodigoDepartamento` char(2) default NULL,
  `NombreDistrito` varchar(50) default NULL,
  PRIMARY KEY  (`CodigoDistrito`),
  KEY `CodigoDistrito` (`CodigoDistrito`)
) TYPE=MyISAM;
#
# Dumping Data for tb_distrito
#
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010101', '0101', '01', 'CHACHAPOYAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010102', '0101', '01', 'ASUNCION');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010103', '0101', '01', 'BALSAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010104', '0101', '01', 'CHETO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010105', '0101', '01', 'CHILIQUIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010106', '0101', '01', 'CHUQUIBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010107', '0101', '01', 'GRANADA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010108', '0101', '01', 'HUANCAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010109', '0101', '01', 'LA JALCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010110', '0101', '01', 'LEIMEBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010111', '0101', '01', 'LEVANTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010112', '0101', '01', 'MAGDALENA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010113', '0101', '01', 'MARISCAL CASTILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010114', '0101', '01', 'MOLINOPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010115', '0101', '01', 'MONTEVIDEO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010116', '0101', '01', 'OLLEROS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010117', '0101', '01', 'QUINJALCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010118', '0101', '01', 'SAN FRANCISCO DE DAGUAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010119', '0101', '01', 'SAN ISIDRO DE MAINO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010120', '0101', '01', 'SOLOCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010121', '0101', '01', 'SONCHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010201', '0102', '01', 'LA PECA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010202', '0102', '01', 'ARAMANGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010203', '0102', '01', 'COPALLIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010204', '0102', '01', 'EL PARCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010205', '0102', '01', 'IMAZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010301', '0103', '01', 'JUMBILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010302', '0103', '01', 'CHISQUILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010303', '0103', '01', 'CHURUJA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010304', '0103', '01', 'COROSHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010305', '0103', '01', 'CUISPES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010306', '0103', '01', 'FLORIDA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010307', '0103', '01', 'JAZAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010308', '0103', '01', 'RECTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010309', '0103', '01', 'SAN CARLOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010310', '0103', '01', 'SHIPASBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010311', '0103', '01', 'VALERA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010312', '0103', '01', 'YAMBRASBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010401', '0104', '01', 'NIEVA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010402', '0104', '01', 'EL CENEPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010403', '0104', '01', 'RIO SANTIAGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010501', '0105', '01', 'LAMUD');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010502', '0105', '01', 'CAMPORREDONDO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010503', '0105', '01', 'COCABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010504', '0105', '01', 'COLCAMAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010505', '0105', '01', 'CONILA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010506', '0105', '01', 'INGUILPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010507', '0105', '01', 'LONGUITA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010508', '0105', '01', 'LONYA CHICO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010509', '0105', '01', 'LUYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010510', '0105', '01', 'LUYA VIEJO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010511', '0105', '01', 'MARIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010512', '0105', '01', 'OCALLI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010513', '0105', '01', 'OCUMAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010514', '0105', '01', 'PISUQUIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010515', '0105', '01', 'PROVIDENCIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010516', '0105', '01', 'SAN CRISTOBAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010517', '0105', '01', 'SAN FRANCISCO DEL YESO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010518', '0105', '01', 'SAN JERONIMO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010519', '0105', '01', 'SAN JUAN DE LOPECANCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010520', '0105', '01', 'SANTA CATALINA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010521', '0105', '01', 'SANTO TOMAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010522', '0105', '01', 'TINGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010523', '0105', '01', 'TRITA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010601', '0106', '01', 'SAN NICOLAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010602', '0106', '01', 'CHIRIMOTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010603', '0106', '01', 'COCHAMAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010604', '0106', '01', 'HUAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010605', '0106', '01', 'LIMABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010606', '0106', '01', 'LONGAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010607', '0106', '01', 'MARISCAL BENAVIDES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010608', '0106', '01', 'MILPUC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010609', '0106', '01', 'OMIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010610', '0106', '01', 'SANTA ROSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010611', '0106', '01', 'TOTORA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010612', '0106', '01', 'VISTA ALEGRE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010701', '0107', '01', 'BAGUA GRANDE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010702', '0107', '01', 'CAJARURO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010703', '0107', '01', 'CUMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010704', '0107', '01', 'EL MILAGRO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010705', '0107', '01', 'JAMALCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010706', '0107', '01', 'LONYA GRANDE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('010707', '0107', '01', 'YAMON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020101', '0201', '02', 'HUARAZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020102', '0201', '02', 'COCHABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020103', '0201', '02', 'COLCABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020104', '0201', '02', 'HUANCHAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020105', '0201', '02', 'INDEPENDENCIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020106', '0201', '02', 'JANGAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020107', '0201', '02', 'LA LIBERTAD');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020108', '0201', '02', 'OLLEROS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020109', '0201', '02', 'PAMPAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020110', '0201', '02', 'PARIACOTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020111', '0201', '02', 'PIRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020112', '0201', '02', 'TARICA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020201', '0202', '02', 'AIJA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020202', '0202', '02', 'CORIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020203', '0202', '02', 'HUACLLAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020204', '0202', '02', 'LA MERCED');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020205', '0202', '02', 'SUCCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020301', '0203', '02', 'LLAMELLIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020302', '0203', '02', 'ACZO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020303', '0203', '02', 'CHACCHO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020304', '0203', '02', 'CHINGAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020305', '0203', '02', 'MIRGAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020306', '0203', '02', 'SAN JUAN DE RONTOY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020401', '0204', '02', 'CHACAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020402', '0204', '02', 'ACOCHACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020501', '0205', '02', 'CHIQUIAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020502', '0205', '02', 'ABELARDO PARDO LEZAMETA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020503', '0205', '02', 'ANTONIO RAYMONDI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020504', '0205', '02', 'AQUIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020505', '0205', '02', 'CAJACAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020506', '0205', '02', 'CANIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020507', '0205', '02', 'COLQUIOC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020508', '0205', '02', 'HUALLANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020509', '0205', '02', 'HUASTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020510', '0205', '02', 'HUAYLLACAYAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020511', '0205', '02', 'LA PRIMAVERA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020512', '0205', '02', 'MANGAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020513', '0205', '02', 'PACLLON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020514', '0205', '02', 'SAN MIGUEL DE CORPANQUI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020515', '0205', '02', 'TICLLOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020601', '0206', '02', 'CARHUAZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020602', '0206', '02', 'ACOPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020603', '0206', '02', 'AMASHCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020604', '0206', '02', 'ANTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020605', '0206', '02', 'ATAQUERO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020606', '0206', '02', 'MARCARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020607', '0206', '02', 'PARIAHUANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020608', '0206', '02', 'SAN MIGUEL DE ACO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020609', '0206', '02', 'SHILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020610', '0206', '02', 'TINCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020611', '0206', '02', 'YUNGAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020701', '0207', '02', 'SAN LUIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020702', '0207', '02', 'SAN NICOLAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020703', '0207', '02', 'YAUYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020801', '0208', '02', 'CASMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020802', '0208', '02', 'BUENA VISTA ALTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020803', '0208', '02', 'COMANDANTE NOEL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020804', '0208', '02', 'YAUTAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020901', '0209', '02', 'CORONGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020902', '0209', '02', 'ACO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020903', '0209', '02', 'BAMBAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020904', '0209', '02', 'CUSCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020905', '0209', '02', 'LA PAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020906', '0209', '02', 'YANAC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('020907', '0209', '02', 'YUPAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021001', '0210', '02', 'HUARI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021002', '0210', '02', 'ANRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021003', '0210', '02', 'CAJAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021004', '0210', '02', 'CHAVIN DE HUANTAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021005', '0210', '02', 'HUACACHI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021006', '0210', '02', 'HUACCHIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021007', '0210', '02', 'HUACHIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021008', '0210', '02', 'HUANTAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021009', '0210', '02', 'MASIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021010', '0210', '02', 'PAUCAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021011', '0210', '02', 'PONTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021012', '0210', '02', 'RAHUAPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021013', '0210', '02', 'RAPAYAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021014', '0210', '02', 'SAN MARCOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021015', '0210', '02', 'SAN PEDRO DE CHANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021016', '0210', '02', 'UCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021101', '0211', '02', 'HUARMEY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021102', '0211', '02', 'COCHAPETI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021103', '0211', '02', 'CULEBRAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021104', '0211', '02', 'HUAYAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021105', '0211', '02', 'MALVAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021201', '0212', '02', 'CARAZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021202', '0212', '02', 'HUALLANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021203', '0212', '02', 'HUATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021204', '0212', '02', 'HUAYLAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021205', '0212', '02', 'MATO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021206', '0212', '02', 'PAMPAROMAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021207', '0212', '02', 'PUEBLO LIBRE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021208', '0212', '02', 'SANTA CRUZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021209', '0212', '02', 'SANTO TORIBIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021210', '0212', '02', 'YURACMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021301', '0213', '02', 'PISCOBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021302', '0213', '02', 'CASCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021303', '0213', '02', 'ELEAZAR GUZMAN BARRON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021304', '0213', '02', 'FIDEL OLIVAS ESCUDERO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021305', '0213', '02', 'LLAMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021306', '0213', '02', 'LLUMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021307', '0213', '02', 'LUCMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021308', '0213', '02', 'MUSGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021401', '0214', '02', 'OCROS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021402', '0214', '02', 'ACAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021403', '0214', '02', 'CAJAMARQUILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021404', '0214', '02', 'CARHUAPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021405', '0214', '02', 'COCHAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021406', '0214', '02', 'CONGAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021407', '0214', '02', 'LLIPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021408', '0214', '02', 'SAN CRISTOBAL DE RAJAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021409', '0214', '02', 'SAN PEDRO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021410', '0214', '02', 'SANTIAGO DE CHILCAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021501', '0215', '02', 'CABANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021502', '0215', '02', 'BOLOGNESI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021503', '0215', '02', 'CONCHUCOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021504', '0215', '02', 'HUACASCHUQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021505', '0215', '02', 'HUANDOVAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021506', '0215', '02', 'LACABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021507', '0215', '02', 'LLAPO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021508', '0215', '02', 'PALLASCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021509', '0215', '02', 'PAMPAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021510', '0215', '02', 'SANTA ROSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021511', '0215', '02', 'TAUCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021601', '0216', '02', 'POMABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021602', '0216', '02', 'HUAYLLAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021603', '0216', '02', 'PAROBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021604', '0216', '02', 'QUINUABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021701', '0217', '02', 'RECUAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021702', '0217', '02', 'CATAC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021703', '0217', '02', 'COTAPARACO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021704', '0217', '02', 'HUAYLLAPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021705', '0217', '02', 'LLACLLIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021706', '0217', '02', 'MARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021707', '0217', '02', 'PAMPAS CHICO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021708', '0217', '02', 'PARARIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021709', '0217', '02', 'TAPACOCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021710', '0217', '02', 'TICAPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021801', '0218', '02', 'CHIMBOTE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021802', '0218', '02', 'CACERES DEL PERU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021803', '0218', '02', 'COISHCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021804', '0218', '02', 'MACATE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021805', '0218', '02', 'MORO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021806', '0218', '02', 'NEPEÃ‘A');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021807', '0218', '02', 'SAMANCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021808', '0218', '02', 'SANTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021809', '0218', '02', 'NUEVO CHIMBOTE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021901', '0219', '02', 'SIHUAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021902', '0219', '02', 'ACOBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021903', '0219', '02', 'ALFONSO UGARTE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021904', '0219', '02', 'CASHAPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021905', '0219', '02', 'CHINGALPO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021906', '0219', '02', 'HUAYLLABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021907', '0219', '02', 'QUICHES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021908', '0219', '02', 'RAGASH');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021909', '0219', '02', 'SAN JUAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('021910', '0219', '02', 'SICSIBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('022001', '0220', '02', 'YUNGAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('022002', '0220', '02', 'CASCAPARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('022003', '0220', '02', 'MANCOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('022004', '0220', '02', 'MATACOTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('022005', '0220', '02', 'QUILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('022006', '0220', '02', 'RANRAHIRCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('022007', '0220', '02', 'SHUPLUY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('022008', '0220', '02', 'YANAMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030101', '0301', '03', 'ABANCAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030102', '0301', '03', 'CHACOCHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030103', '0301', '03', 'CIRCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030104', '0301', '03', 'CURAHUASI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030105', '0301', '03', 'HUANIPACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030106', '0301', '03', 'LAMBRAMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030107', '0301', '03', 'PICHIRHUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030108', '0301', '03', 'SAN PEDRO DE CACHORA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030109', '0301', '03', 'TAMBURCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030201', '0302', '03', 'ANDAHUAYLAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030202', '0302', '03', 'ANDARAPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030203', '0302', '03', 'CHIARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030204', '0302', '03', 'HUANCARAMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030205', '0302', '03', 'HUANCARAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030206', '0302', '03', 'HUAYANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030207', '0302', '03', 'KISHUARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030208', '0302', '03', 'PACOBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030209', '0302', '03', 'KAQUIABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030210', '0302', '03', 'PAMPACHIRI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030211', '0302', '03', 'POMACOCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030212', '0302', '03', 'SAN ANTONIO DE CACHI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030213', '0302', '03', 'SAN JERONIMO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030214', '0302', '03', 'SAN MIGUEL DE CHACCRAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030215', '0302', '03', 'SANTA MARIA DE CHICMO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030216', '0302', '03', 'TALAVERA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030217', '0302', '03', 'TUMAY HUARACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030218', '0302', '03', 'TURPO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030219', '0302', '03', 'PACUCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030301', '0303', '03', 'ANTABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030302', '0303', '03', 'EL ORO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030303', '0303', '03', 'HUAQUIRCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030304', '0303', '03', 'JUAN ESPINOZA MEDRANO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030305', '0303', '03', 'OROPESA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030306', '0303', '03', 'PACHACONAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030307', '0303', '03', 'SABAINO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030401', '0304', '03', 'CHALHUANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030402', '0304', '03', 'CAPAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030403', '0304', '03', 'CARAYBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030404', '0304', '03', 'CHAPIMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030405', '0304', '03', 'COLCABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030406', '0304', '03', 'COTARUSE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030407', '0304', '03', 'HUAYLLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030408', '0304', '03', 'JUSTO APU SAHUARAURA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030409', '0304', '03', 'LUCRE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030410', '0304', '03', 'POCOHUANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030411', '0304', '03', 'SAN JUAN DE CHACÃ‘A');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030412', '0304', '03', 'SAÃ‘AYCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030413', '0304', '03', 'SORAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030414', '0304', '03', 'TAPAIRIHUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030415', '0304', '03', 'TINTAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030416', '0304', '03', 'TORAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030417', '0304', '03', 'YANACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030501', '0305', '03', 'TAMBOBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030502', '0305', '03', 'COTABAMBAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030503', '0305', '03', 'COYLLURQUI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030504', '0305', '03', 'HAQUIRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030505', '0305', '03', 'MARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030506', '0305', '03', 'CHALLHUAHUACHO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030601', '0306', '03', 'CHINCHEROS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030602', '0306', '03', 'ANCO-HUALLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030603', '0306', '03', 'COCHARCAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030604', '0306', '03', 'HUACCANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030605', '0306', '03', 'OCOBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030606', '0306', '03', 'ONGOY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030607', '0306', '03', 'URANMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030608', '0306', '03', 'RANRACANCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030701', '0307', '03', 'CHUQUIBAMBILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030702', '0307', '03', 'CURPAHUASI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030703', '0307', '03', 'GAMARRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030704', '0307', '03', 'HUAYLLATI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030705', '0307', '03', 'MAMARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030706', '0307', '03', 'MICAELA BASTIDAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030707', '0307', '03', 'PATAYPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030708', '0307', '03', 'PROGRESO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030709', '0307', '03', 'SAN ANTONIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030710', '0307', '03', 'SANTA ROSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030711', '0307', '03', 'TURPAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030712', '0307', '03', 'VILCABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030713', '0307', '03', 'VIRUNDO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('030714', '0307', '03', 'CURASCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040101', '0401', '04', 'AREQUIPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040102', '0401', '04', 'ALTO SELVA ALEGRE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040103', '0401', '04', 'CAYMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040104', '0401', '04', 'CERRO COLORADO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040105', '0401', '04', 'CHARACATO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040106', '0401', '04', 'CHIGUATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040107', '0401', '04', 'JACOBO HUNTER');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040108', '0401', '04', 'LA JOYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040109', '0401', '04', 'MARIANO MELGAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040110', '0401', '04', 'MIRAFLORES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040111', '0401', '04', 'MOLLEBAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040112', '0401', '04', 'PAUCARPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040113', '0401', '04', 'POCSI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040114', '0401', '04', 'POLOBAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040115', '0401', '04', 'QUEQUEÃ‘A');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040116', '0401', '04', 'SABANDIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040117', '0401', '04', 'SACHACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040118', '0401', '04', 'SAN JUAN DE SIGUAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040119', '0401', '04', 'SAN JUAN DE TARUCANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040120', '0401', '04', 'SANTA ISABEL DE SIGUAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040121', '0401', '04', 'SANTA RITA DE SIGUAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040122', '0401', '04', 'SOCABAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040123', '0401', '04', 'TIABAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040124', '0401', '04', 'UCHUMAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040125', '0401', '04', 'VITOR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040126', '0401', '04', 'YANAHUARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040127', '0401', '04', 'YARABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040128', '0401', '04', 'YURA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040129', '0401', '04', 'JOSE LUIS BUSTAMANTE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040201', '0402', '04', 'CAMANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040202', '0402', '04', 'JOSE MARIA QUIMPER');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040203', '0402', '04', 'MARIANO NICOLAS VALCARCEL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040204', '0402', '04', 'MARISCAL CACERES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040205', '0402', '04', 'NICOLAS DE PIEROLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040206', '0402', '04', 'OCOÃ‘A');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040207', '0402', '04', 'QUILCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040208', '0402', '04', 'SAMUEL PASTOR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040301', '0403', '04', 'CARAVELI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040302', '0403', '04', 'ACARI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040303', '0403', '04', 'ATICO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040304', '0403', '04', 'ATIQUIPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040305', '0403', '04', 'BELLA UNION');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040306', '0403', '04', 'CAHUACHO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040307', '0403', '04', 'CHALA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040308', '0403', '04', 'CHAPARRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040309', '0403', '04', 'HUANUHUANU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040310', '0403', '04', 'JAQUI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040311', '0403', '04', 'LOMAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040312', '0403', '04', 'QUICACHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040313', '0403', '04', 'YAUCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040401', '0404', '04', 'APLAO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040402', '0404', '04', 'ANDAGUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040403', '0404', '04', 'AYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040404', '0404', '04', 'CHACHAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040405', '0404', '04', 'CHILCAYMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040406', '0404', '04', 'CHOCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040407', '0404', '04', 'HUANCARQUI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040408', '0404', '04', 'MACHAGUAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040409', '0404', '04', 'ORCOPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040410', '0404', '04', 'PAMPACOLCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040411', '0404', '04', 'TIPAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040412', '0404', '04', 'UÃ‘ON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040413', '0404', '04', 'URACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040414', '0404', '04', 'VIRACO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040501', '0405', '04', 'CHIVAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040502', '0405', '04', 'ACHOMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040503', '0405', '04', 'CABANACONDE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040504', '0405', '04', 'CALLALLI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040505', '0405', '04', 'CAYLLOMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040506', '0405', '04', 'COPORAQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040507', '0405', '04', 'HUAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040508', '0405', '04', 'HUANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040509', '0405', '04', 'ICHUPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040510', '0405', '04', 'LARI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040511', '0405', '04', 'LLUTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040512', '0405', '04', 'MACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040513', '0405', '04', 'MADRIGAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040514', '0405', '04', 'SAN ANTONIO DE CHUCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040515', '0405', '04', 'SIBAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040516', '0405', '04', 'TAPAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040517', '0405', '04', 'TISCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040518', '0405', '04', 'TUTI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040519', '0405', '04', 'YANQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040520', '0405', '04', 'MAJES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040601', '0406', '04', 'CHUQUIBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040602', '0406', '04', 'ANDARAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040603', '0406', '04', 'CAYARANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040604', '0406', '04', 'CHICHAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040605', '0406', '04', 'IRAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040606', '0406', '04', 'RIO GRANDE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040607', '0406', '04', 'SALAMANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040608', '0406', '04', 'YANAQUIHUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040701', '0407', '04', 'MOLLENDO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040702', '0407', '04', 'COCACHACRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040703', '0407', '04', 'DEAN VALDIVIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040704', '0407', '04', 'ISLAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040705', '0407', '04', 'MEJIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040706', '0407', '04', 'PUNTA DE BOMBON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040801', '0408', '04', 'COTAHUASI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040802', '0408', '04', 'ALCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040803', '0408', '04', 'CHARCANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040804', '0408', '04', 'HUAYNACOTAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040805', '0408', '04', 'PAMPAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040806', '0408', '04', 'PUYCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040807', '0408', '04', 'QUECHUALLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040808', '0408', '04', 'SAYLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040809', '0408', '04', 'TAURIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040810', '0408', '04', 'TOMEPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('040811', '0408', '04', 'TORO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050101', '0501', '05', 'AYACUCHO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050102', '0501', '05', 'ACOCRO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050103', '0501', '05', 'ACOS VINCHOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050104', '0501', '05', 'CARMEN ALTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050105', '0501', '05', 'CHIARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050106', '0501', '05', 'OCROS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050107', '0501', '05', 'PACAYCASA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050108', '0501', '05', 'QUINUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050109', '0501', '05', 'SAN JOSE DE TICLLAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050110', '0501', '05', 'SAN JUAN BAUTISTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050111', '0501', '05', 'SANTIAGO DE PISCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050112', '0501', '05', 'SOCOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050113', '0501', '05', 'TAMBILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050114', '0501', '05', 'VINCHOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050115', '0501', '05', 'JESUS NAZARENO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050201', '0502', '05', 'CANGALLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050202', '0502', '05', 'CHUSCHI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050203', '0502', '05', 'LOS MOROCHUCOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050204', '0502', '05', 'MARIA PARADO DE BELLIDO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050205', '0502', '05', 'PARAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050206', '0502', '05', 'TOTOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050301', '0503', '05', 'SANCOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050302', '0503', '05', 'CARAPO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050303', '0503', '05', 'SACSAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050304', '0503', '05', 'SANTIAGO DE LUCANAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050401', '0504', '05', 'HUANTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050402', '0504', '05', 'AYAHUANCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050403', '0504', '05', 'HUAMANGUILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050404', '0504', '05', 'IGUAIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050405', '0504', '05', 'LURICOCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050406', '0504', '05', 'SANTILLANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050407', '0504', '05', 'SIVIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050408', '0504', '05', 'LLOCHEGUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050501', '0505', '05', 'SAN MIGUEL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050502', '0505', '05', 'ANCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050503', '0505', '05', 'AYNA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050504', '0505', '05', 'CHILCAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050505', '0505', '05', 'CHUNGUI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050506', '0505', '05', 'LUIS CARRANZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050507', '0505', '05', 'SANTA ROSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050508', '0505', '05', 'TAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050601', '0506', '05', 'PUQUIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050602', '0506', '05', 'AUCARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050603', '0506', '05', 'CABANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050604', '0506', '05', 'CARMEN SALCEDO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050605', '0506', '05', 'CHAVIÃ‘A');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050606', '0506', '05', 'CHIPAO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050607', '0506', '05', 'HUAC-HUAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050608', '0506', '05', 'LARAMATE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050609', '0506', '05', 'LEONCIO PRADO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050610', '0506', '05', 'LLAUTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050611', '0506', '05', 'LUCANAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050612', '0506', '05', 'OCAÃ‘A');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050613', '0506', '05', 'OTOCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050614', '0506', '05', 'SAISA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050615', '0506', '05', 'SAN CRISTOBAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050616', '0506', '05', 'SAN JUAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050617', '0506', '05', 'SAN PEDRO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050618', '0506', '05', 'SAN PEDRO DE PALCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050619', '0506', '05', 'SANCOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050620', '0506', '05', 'SANTA ANA DE HUAYCAHUACHO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050621', '0506', '05', 'SANTA LUCIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050701', '0507', '05', 'CORACORA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050702', '0507', '05', 'CHUMPI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050703', '0507', '05', 'CORONEL CASTAÃ‘EDA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050704', '0507', '05', 'PACAPAUSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050705', '0507', '05', 'PULLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050706', '0507', '05', 'PUYUSCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050707', '0507', '05', 'SAN FRANCISCO DE RAVACAYCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050708', '0507', '05', 'UPAHUACHO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050801', '0508', '05', 'PAUSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050802', '0508', '05', 'COLTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050803', '0508', '05', 'CORCULLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050804', '0508', '05', 'LAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050805', '0508', '05', 'MARCABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050806', '0508', '05', 'OYOLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050807', '0508', '05', 'PARARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050808', '0508', '05', 'SAN JAVIER DE ALPABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050809', '0508', '05', 'SAN JOSE DE USHUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050810', '0508', '05', 'SARA SARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050901', '0509', '05', 'QUEROBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050902', '0509', '05', 'BELEN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050903', '0509', '05', 'CHALCOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050904', '0509', '05', 'CHILCAYOC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050905', '0509', '05', 'HUACAÃ‘A');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050906', '0509', '05', 'MORCOLLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050907', '0509', '05', 'PAICO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050908', '0509', '05', 'SAN PEDRO DE LARCAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050909', '0509', '05', 'SAN SALVADOR DE QUIJE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050910', '0509', '05', 'SANTIAGO DE PAUCARAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('050911', '0509', '05', 'SORAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051001', '0510', '05', 'HUANCAPI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051002', '0510', '05', 'ALCAMENCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051003', '0510', '05', 'APONGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051004', '0510', '05', 'ASQUIPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051005', '0510', '05', 'CANARIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051006', '0510', '05', 'CAYARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051007', '0510', '05', 'COLCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051008', '0510', '05', 'HUAMANQUIQUIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051009', '0510', '05', 'HUANCARAYLLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051010', '0510', '05', 'HUAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051011', '0510', '05', 'SARHUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051012', '0510', '05', 'VILCANCHOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051101', '0511', '05', 'VILCAS HUAMAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051102', '0511', '05', 'ACCOMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051103', '0511', '05', 'CARHUANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051104', '0511', '05', 'CONCEPCION');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051105', '0511', '05', 'HUAMBALPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051106', '0511', '05', 'INDEPENDENCIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051107', '0511', '05', 'SAURAMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('051108', '0511', '05', 'VISCHONGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060101', '0601', '06', 'CAJAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060102', '0601', '06', 'ASUNCION');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060103', '0601', '06', 'CHETILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060104', '0601', '06', 'COSPAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060105', '0601', '06', 'ENCAÃ‘ADA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060106', '0601', '06', 'JESUS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060107', '0601', '06', 'LLACANORA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060108', '0601', '06', 'LOS BAÃ‘OS DEL INCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060109', '0601', '06', 'MAGDALENA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060110', '0601', '06', 'MATARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060111', '0601', '06', 'NAMORA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060112', '0601', '06', 'SAN JUAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060201', '0602', '06', 'CAJABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060202', '0602', '06', 'CACHACHI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060203', '0602', '06', 'CONDEBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060204', '0602', '06', 'SITACOCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060301', '0603', '06', 'CELENDIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060302', '0603', '06', 'CHUMUCH');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060303', '0603', '06', 'CORTEGANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060304', '0603', '06', 'HUASMIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060305', '0603', '06', 'JORGE CHAVEZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060306', '0603', '06', 'JOSE GALVEZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060307', '0603', '06', 'MIGUEL IGLESIAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060308', '0603', '06', 'OXAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060309', '0603', '06', 'SOROCHUCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060310', '0603', '06', 'SUCRE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060311', '0603', '06', 'UTCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060312', '0603', '06', 'LA LIBERTAD DE PALLAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060401', '0604', '06', 'CHOTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060402', '0604', '06', 'ANGUIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060403', '0604', '06', 'CHADIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060404', '0604', '06', 'CHIGUIRIP');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060405', '0604', '06', 'CHIMBAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060406', '0604', '06', 'CHOROPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060407', '0604', '06', 'COCHABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060408', '0604', '06', 'CONCHAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060409', '0604', '06', 'HUAMBOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060410', '0604', '06', 'LAJAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060411', '0604', '06', 'LLAMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060412', '0604', '06', 'MIRACOSTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060413', '0604', '06', 'PACCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060414', '0604', '06', 'PION');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060415', '0604', '06', 'QUEROCOTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060416', '0604', '06', 'SAN JUAN DE LICUPIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060417', '0604', '06', 'TACABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060418', '0604', '06', 'TOCMOCHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060419', '0604', '06', 'CHALAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060501', '0605', '06', 'CONTUMAZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060502', '0605', '06', 'CHILETE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060503', '0605', '06', 'CUPISNIQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060504', '0605', '06', 'GUZMANGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060505', '0605', '06', 'SAN BENITO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060506', '0605', '06', 'SANTA CRUZ DE TOLED');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060507', '0605', '06', 'TANTARICA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060508', '0605', '06', 'YONAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060601', '0606', '06', 'CUTERVO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060602', '0606', '06', 'CALLAYUC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060603', '0606', '06', 'CHOROS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060604', '0606', '06', 'CUJILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060605', '0606', '06', 'LA RAMADA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060606', '0606', '06', 'PIMPINGOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060607', '0606', '06', 'QUEROCOTILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060608', '0606', '06', 'SAN ANDRES DE CUTERVO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060609', '0606', '06', 'SAN JUAN DE CUTERVO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060610', '0606', '06', 'SAN LUIS DE LUCMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060611', '0606', '06', 'SANTA CRUZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060612', '0606', '06', 'SANTO DOMINGO DE LA CAPILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060613', '0606', '06', 'SANTO TOMAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060614', '0606', '06', 'SOCOTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060615', '0606', '06', 'TORIBIO CASANOVA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060701', '0607', '06', 'BAMBAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060702', '0607', '06', 'CHUGUR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060703', '0607', '06', 'HUALGAYOC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060801', '0608', '06', 'JAEN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060802', '0608', '06', 'BELLAVISTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060803', '0608', '06', 'CHONTALI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060804', '0608', '06', 'COLASAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060805', '0608', '06', 'HUABAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060806', '0608', '06', 'LAS PIRIAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060807', '0608', '06', 'POMAHUACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060808', '0608', '06', 'PUCARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060809', '0608', '06', 'SALLIQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060810', '0608', '06', 'SAN FELIPE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060811', '0608', '06', 'SAN JOSE DEL ALTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060812', '0608', '06', 'SANTA ROSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060901', '0609', '06', 'SAN IGNACIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060902', '0609', '06', 'CHIRINOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060903', '0609', '06', 'HUARANGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060904', '0609', '06', 'LA COIPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060905', '0609', '06', 'NAMBALLE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060906', '0609', '06', 'SAN JOSE DE LOURDES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('060907', '0609', '06', 'TABACONAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061001', '0610', '06', 'PEDRO GALVEZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061002', '0610', '06', 'CHANCAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061003', '0610', '06', 'EDUARDO VILLANUEVA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061004', '0610', '06', 'GREGORIO PITA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061005', '0610', '06', 'ICHOCAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061006', '0610', '06', 'JOSE MANUEL QUIROZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061007', '0610', '06', 'JOSE SABOGAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061101', '0611', '06', 'SAN MIGUEL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061102', '0611', '06', 'BOLIVAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061103', '0611', '06', 'CALQUIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061104', '0611', '06', 'CATILLUC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061105', '0611', '06', 'EL PRADO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061106', '0611', '06', 'LA FLORIDA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061107', '0611', '06', 'LLAPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061108', '0611', '06', 'NANCHOC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061109', '0611', '06', 'NIEPOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061110', '0611', '06', 'SAN GREGORIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061111', '0611', '06', 'SAN SILVESTRE DE COCHAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061112', '0611', '06', 'TONGOD');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061113', '0611', '06', 'UNION AGUA BLANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061201', '0612', '06', 'SAN PABLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061202', '0612', '06', 'SAN BERNARDINO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061203', '0612', '06', 'SAN LUIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061204', '0612', '06', 'TUMBADEN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061301', '0613', '06', 'SANTA CRUZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061302', '0613', '06', 'ANDABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061303', '0613', '06', 'CATACHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061304', '0613', '06', 'CHANCAYBAÃ‘OS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061305', '0613', '06', 'LA ESPERANZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061306', '0613', '06', 'NINABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061307', '0613', '06', 'PULAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061308', '0613', '06', 'SAUCEPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061309', '0613', '06', 'SEXI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061310', '0613', '06', 'UTICYACU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('061311', '0613', '06', 'YAUYUCAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070101', '0701', '07', 'CUSCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070102', '0701', '07', 'CCORCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070103', '0701', '07', 'POROY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070104', '0701', '07', 'SAN JERONIMO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070105', '0701', '07', 'SAN SEBASTIAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070106', '0701', '07', 'SANTIAGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070107', '0701', '07', 'SAYLLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070108', '0701', '07', 'WANCHAQ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070201', '0702', '07', 'ACOMAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070202', '0702', '07', 'ACOPIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070203', '0702', '07', 'ACOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070204', '0702', '07', 'MOSOC LLACTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070205', '0702', '07', 'POMACANCHI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070206', '0702', '07', 'RONDOCAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070207', '0702', '07', 'SANGARARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070301', '0703', '07', 'ANTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070302', '0703', '07', 'ANCAHUASI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070303', '0703', '07', 'CACHIMAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070304', '0703', '07', 'CHINCHAYPUJIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070305', '0703', '07', 'HUAROCONDO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070306', '0703', '07', 'LIMATAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070307', '0703', '07', 'MOLLEPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070308', '0703', '07', 'PUCYURA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070309', '0703', '07', 'ZURITE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070401', '0704', '07', 'CALCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070402', '0704', '07', 'COYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070403', '0704', '07', 'LAMAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070404', '0704', '07', 'LARES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070405', '0704', '07', 'PISAC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070406', '0704', '07', 'SAN SALVADOR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070407', '0704', '07', 'TARAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070408', '0704', '07', 'YANATILE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070501', '0705', '07', 'YANAOCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070502', '0705', '07', 'CHECCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070503', '0705', '07', 'KUNTURKANKI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070504', '0705', '07', 'LANGUI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070505', '0705', '07', 'LAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070506', '0705', '07', 'PAMPAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070507', '0705', '07', 'QUEHUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070508', '0705', '07', 'TUPAC AMARU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070601', '0706', '07', 'SICUANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070602', '0706', '07', 'CHECACUPE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070603', '0706', '07', 'COMBAPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070604', '0706', '07', 'MARANGANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070605', '0706', '07', 'PITUMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070606', '0706', '07', 'SAN PABLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070607', '0706', '07', 'SAN PEDRO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070608', '0706', '07', 'TINTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070701', '0707', '07', 'SANTO TOMAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070702', '0707', '07', 'CAPACMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070703', '0707', '07', 'CHAMACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070704', '0707', '07', 'COLQUEMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070705', '0707', '07', 'LIVITACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070706', '0707', '07', 'LLUSCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070707', '0707', '07', 'QUIÃ‘OTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070708', '0707', '07', 'VELILLE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070801', '0708', '07', 'ESPINAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070802', '0708', '07', 'CONDOROMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070803', '0708', '07', 'COPORAQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070804', '0708', '07', 'OCORURO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070805', '0708', '07', 'PALLPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070806', '0708', '07', 'PICHIGUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070807', '0708', '07', 'SUYCKUTAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070808', '0708', '07', 'ALTO PICHIGUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070901', '0709', '07', 'SANTA ANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070902', '0709', '07', 'ECHARATE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070903', '0709', '07', 'HUAYOPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070904', '0709', '07', 'MARANURA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070905', '0709', '07', 'OCOBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070906', '0709', '07', 'QUELLOUNO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070907', '0709', '07', 'QUIMBIRI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070908', '0709', '07', 'SANTA TERESA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070909', '0709', '07', 'VILCABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('070910', '0709', '07', 'PICHARI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071001', '0710', '07', 'PARURO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071002', '0710', '07', 'ACCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071003', '0710', '07', 'CCAPI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071004', '0710', '07', 'COLCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071005', '0710', '07', 'HUANOQUITE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071006', '0710', '07', 'OMACHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071007', '0710', '07', 'PACCARITAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071008', '0710', '07', 'PILLPINTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071009', '0710', '07', 'YAURISQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071101', '0711', '07', 'PAUCARTAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071102', '0711', '07', 'CAICAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071103', '0711', '07', 'CHALLABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071104', '0711', '07', 'COLQUEPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071105', '0711', '07', 'HUANCARANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071106', '0711', '07', 'KOSÃ‘IPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071201', '0712', '07', 'URCOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071202', '0712', '07', 'ANDAHUAYLILLAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071203', '0712', '07', 'CAMANTI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071204', '0712', '07', 'CCARHUAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071205', '0712', '07', 'CCATCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071206', '0712', '07', 'CUSIPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071207', '0712', '07', 'HUARO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071208', '0712', '07', 'LUCRE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071209', '0712', '07', 'MARCAPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071210', '0712', '07', 'OCONGATE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071211', '0712', '07', 'OROPESA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071212', '0712', '07', 'QUIQUIJANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071301', '0713', '07', 'URUBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071302', '0713', '07', 'CHINCHERO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071303', '0713', '07', 'HUAYLLABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071304', '0713', '07', 'MACHUPICCHU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071305', '0713', '07', 'MARAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071306', '0713', '07', 'OLLANTAYTAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('071307', '0713', '07', 'YUCAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080101', '0801', '08', 'HUANCAVELICA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080102', '0801', '08', 'ACOBAMBILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080103', '0801', '08', 'ACORIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080104', '0801', '08', 'CONAYCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080105', '0801', '08', 'CUENCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080106', '0801', '08', 'HUACHOCOLPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080107', '0801', '08', 'HUAYLLAHUARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080108', '0801', '08', 'IZCUCHACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080109', '0801', '08', 'LARIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080110', '0801', '08', 'MANTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080111', '0801', '08', 'MARISCAL CACERES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080112', '0801', '08', 'MOYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080113', '0801', '08', 'NUEVO OCCORO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080114', '0801', '08', 'PALCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080115', '0801', '08', 'PILCHACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080116', '0801', '08', 'VILCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080117', '0801', '08', 'YAULI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080118', '0801', '08', 'ASCENSION');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080201', '0802', '08', 'ACOBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080202', '0802', '08', 'ANDABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080203', '0802', '08', 'ANTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080204', '0802', '08', 'CAJA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080205', '0802', '08', 'MARCAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080206', '0802', '08', 'PAUCARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080207', '0802', '08', 'POMACOCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080208', '0802', '08', 'ROSARIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080301', '0803', '08', 'LIRCAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080302', '0803', '08', 'ANCHONGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080303', '0803', '08', 'CALLANMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080304', '0803', '08', 'CCOCHACCASA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080305', '0803', '08', 'CHINCHO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080306', '0803', '08', 'CONGALLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080307', '0803', '08', 'HUANCA-HUANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080308', '0803', '08', 'HUAYLLAY GRANDE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080309', '0803', '08', 'JULCAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080310', '0803', '08', 'SAN ANTONIO DE ANTAPARCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080311', '0803', '08', 'SANTO TOMAS DE PATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080312', '0803', '08', 'SECCLLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080401', '0804', '08', 'CASTROVIRREYNA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080402', '0804', '08', 'ARMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080403', '0804', '08', 'AURAHUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080404', '0804', '08', 'CAPILLAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080405', '0804', '08', 'CHUPAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080406', '0804', '08', 'COCAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080407', '0804', '08', 'HUACHOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080408', '0804', '08', 'HUAMATAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080409', '0804', '08', 'MOLLEPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080410', '0804', '08', 'SAN JUAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080411', '0804', '08', 'SANTA ANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080412', '0804', '08', 'TANTARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080413', '0804', '08', 'TICRAPO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080501', '0805', '08', 'CHURCAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080502', '0805', '08', 'ANCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080503', '0805', '08', 'CHINCHIHUASI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080504', '0805', '08', 'EL CARMEN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080505', '0805', '08', 'LA MERCED');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080506', '0805', '08', 'LOCROJA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080507', '0805', '08', 'PAUCARBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080508', '0805', '08', 'SAN MIGUEL DE MAYOCC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080509', '0805', '08', 'SAN PEDRO DE CORIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080510', '0805', '08', 'PACHAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080601', '0806', '08', 'HUAYTARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080602', '0806', '08', 'AYAVI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080603', '0806', '08', 'CORDOVA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080604', '0806', '08', 'HUAYACUNDO ARMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080605', '0806', '08', 'LARAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080606', '0806', '08', 'OCOYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080607', '0806', '08', 'PILPICHACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080608', '0806', '08', 'QUERCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080609', '0806', '08', 'QUITO-ARMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080610', '0806', '08', 'SAN ANTONIO DE CUSICANCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080611', '0806', '08', 'SAN FRANCISCO DE SANGAYAICO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080612', '0806', '08', 'SAN ISIDRO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080613', '0806', '08', 'SANTIAGO DE CHOCORVOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080614', '0806', '08', 'SANTIAGO DE QUIRAHUARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080615', '0806', '08', 'SANTO DOMINGO DE CAPILLAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080616', '0806', '08', 'TAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080701', '0807', '08', 'PAMPAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080702', '0807', '08', 'ACOSTAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080703', '0807', '08', 'ACRAQUIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080704', '0807', '08', 'AHUAYCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080705', '0807', '08', 'COLCABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080706', '0807', '08', 'DANIEL HERNANDEZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080707', '0807', '08', 'HUACHOCOLPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080709', '0807', '08', 'HUARIBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080710', '0807', '08', 'Ã‘AHUIMPUQUIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080711', '0807', '08', 'PAZOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080713', '0807', '08', 'QUISHUAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080714', '0807', '08', 'SALCABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080715', '0807', '08', 'SALCAHUASI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080716', '0807', '08', 'SAN MARCOS DE ROCCHAC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080717', '0807', '08', 'SURCUBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080718', '0807', '08', 'TINTAY PUNCU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('080719', '0807', '08', 'HUANDO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090101', '0901', '09', 'HUANUCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090102', '0901', '09', 'AMARILIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090103', '0901', '09', 'CHINCHAO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090104', '0901', '09', 'CHURUBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090105', '0901', '09', 'MARGOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090106', '0901', '09', 'QUISQUI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090107', '0901', '09', 'SAN FRANCISCO DE CAYRAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090108', '0901', '09', 'SAN PEDRO DE CHAULAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090109', '0901', '09', 'SANTA MARIA DEL VALLE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090110', '0901', '09', 'YARUMAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090111', '0901', '09', 'PILCOMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090201', '0902', '09', 'AMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090202', '0902', '09', 'CAYNA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090203', '0902', '09', 'COLPAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090204', '0902', '09', 'CONCHAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090205', '0902', '09', 'HUACAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090206', '0902', '09', 'SAN FRANCISCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090207', '0902', '09', 'SAN RAFAEL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090208', '0902', '09', 'TOMAY KICHWA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090301', '0903', '09', 'LA UNION');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090307', '0903', '09', 'CHUQUIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090311', '0903', '09', 'MARIAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090313', '0903', '09', 'PACHAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090316', '0903', '09', 'QUIVILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090317', '0903', '09', 'RIPAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090321', '0903', '09', 'SHUNQUI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090322', '0903', '09', 'SILLAPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090323', '0903', '09', 'YANAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090401', '0904', '09', 'HUACAYBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090402', '0904', '09', 'CANCHABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090403', '0904', '09', 'COCHABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090404', '0904', '09', 'PINRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090501', '0905', '09', 'LLATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090502', '0905', '09', 'ARANCAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090503', '0905', '09', 'CHAVIN DE PARIARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090504', '0905', '09', 'JACAS GRANDE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090505', '0905', '09', 'JIRCAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090506', '0905', '09', 'MIRAFLORES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090507', '0905', '09', 'MONZON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090508', '0905', '09', 'PUNCHAO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090509', '0905', '09', 'PUÃ‘OS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090510', '0905', '09', 'SINGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090511', '0905', '09', 'TANTAMAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090601', '0906', '09', 'RUPA-RUPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090602', '0906', '09', 'DANIEL ALOMIAS ROBLES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090603', '0906', '09', 'HERMILIO VALDIZAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090604', '0906', '09', 'JOSE CRESPO Y CASTILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090605', '0906', '09', 'LUYANDO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090606', '0906', '09', 'MARIANO DAMASO BERAUN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090701', '0907', '09', 'HUACRACHUCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090702', '0907', '09', 'CHOLON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090703', '0907', '09', 'SAN BUENAVENTURA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090801', '0908', '09', 'PANAO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090802', '0908', '09', 'CHAGLLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090803', '0908', '09', 'MOLINO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090804', '0908', '09', 'UMARI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090901', '0909', '09', 'PUERTO INCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090902', '0909', '09', 'CODO DEL POZUZO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090903', '0909', '09', 'HONORIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090904', '0909', '09', 'TOURNAVISTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('090905', '0909', '09', 'YUYAPICHIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091001', '0910', '09', 'JESUS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091002', '0910', '09', 'BAÃ‘OS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091003', '0910', '09', 'JIVIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091004', '0910', '09', 'QUEROPALCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091005', '0910', '09', 'RONDOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091006', '0910', '09', 'SAN FRANCISCO DE ASIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091007', '0910', '09', 'SAN MIGUEL DE CAURI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091101', '0911', '09', 'CHAVINILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091102', '0911', '09', 'CAHUAC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091103', '0911', '09', 'CHACABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091104', '0911', '09', 'APARICIO POMARES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091105', '0911', '09', 'JACAS CHICO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091106', '0911', '09', 'OBAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091107', '0911', '09', 'PAMPAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('091108', '0911', '09', 'CHORAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100101', '1001', '10', 'ICA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100102', '1001', '10', 'LA TINGUIÃ‘A');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100103', '1001', '10', 'LOS AQUIJES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100104', '1001', '10', 'OCUCAJE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100105', '1001', '10', 'PACHACUTEC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100106', '1001', '10', 'PARCONA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100107', '1001', '10', 'PUEBLO NUEVO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100108', '1001', '10', 'SALAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100109', '1001', '10', 'SAN JOSE DE LOS MOLINOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100110', '1001', '10', 'SAN JUAN BAUTISTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100111', '1001', '10', 'SANTIAGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100112', '1001', '10', 'SUBTANJALLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100113', '1001', '10', 'TATE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100114', '1001', '10', 'YAUCA DEL ROSARIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100201', '1002', '10', 'CHINCHA ALTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100202', '1002', '10', 'ALTO LARAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100203', '1002', '10', 'CHAVIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100204', '1002', '10', 'CHINCHA BAJA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100205', '1002', '10', 'EL CARMEN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100206', '1002', '10', 'GROCIO PRADO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100207', '1002', '10', 'PUEBLO NUEVO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100208', '1002', '10', 'SAN JUAN DE YANAC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100209', '1002', '10', 'SAN PEDRO DE HUACARPANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100210', '1002', '10', 'SUNAMPE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100211', '1002', '10', 'TAMBO DE MORA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100301', '1003', '10', 'NAZCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100302', '1003', '10', 'CHANGUILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100303', '1003', '10', 'EL INGENIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100304', '1003', '10', 'MARCONA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100305', '1003', '10', 'VISTA ALEGRE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100401', '1004', '10', 'PALPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100402', '1004', '10', 'LLIPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100403', '1004', '10', 'RIO GRANDE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100404', '1004', '10', 'SANTA CRUZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100405', '1004', '10', 'TIBILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100501', '1005', '10', 'PISCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100502', '1005', '10', 'HUANCANO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100503', '1005', '10', 'HUMAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100504', '1005', '10', 'INDEPENDENCIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100505', '1005', '10', 'PARACAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100506', '1005', '10', 'SAN ANDRES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100507', '1005', '10', 'SAN CLEMENTE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('100508', '1005', '10', 'TUPAC AMARU INCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110101', '1101', '11', 'HUANCAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110104', '1101', '11', 'CARHUACALLANGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110105', '1101', '11', 'CHACAPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110106', '1101', '11', 'CHICCHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110107', '1101', '11', 'CHILCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110108', '1101', '11', 'CHONGOS ALTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110111', '1101', '11', 'CHUPURO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110112', '1101', '11', 'COLCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110113', '1101', '11', 'CULLHUAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110114', '1101', '11', 'EL TAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110116', '1101', '11', 'HUACRAPUQUIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110117', '1101', '11', 'HUALHUAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110119', '1101', '11', 'HUANCAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110120', '1101', '11', 'HUASICANCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110121', '1101', '11', 'HUAYUCACHI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110122', '1101', '11', 'INGENIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110124', '1101', '11', 'PARIAHUANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110125', '1101', '11', 'PILCOMAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110126', '1101', '11', 'PUCARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110127', '1101', '11', 'QUICHUAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110128', '1101', '11', 'QUILCAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110129', '1101', '11', 'SAN AGUSTIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110130', '1101', '11', 'SAN JERONIMO DE TUNAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110132', '1101', '11', 'SAÃ‘O');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110133', '1101', '11', 'SAPALLANGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110134', '1101', '11', 'SICAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110135', '1101', '11', 'SANTO DOMINGO DE ACOBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110136', '1101', '11', 'VIQUES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110201', '1102', '11', 'CONCEPCION');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110202', '1102', '11', 'ACO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110203', '1102', '11', 'ANDAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110204', '1102', '11', 'CHAMBARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110205', '1102', '11', 'COCHAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110206', '1102', '11', 'COMAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110207', '1102', '11', 'HEROINAS TOLEDO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110208', '1102', '11', 'MANZANARES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110209', '1102', '11', 'MARISCAL CASTILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110210', '1102', '11', 'MATAHUASI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110211', '1102', '11', 'MITO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110212', '1102', '11', 'NUEVE DE JULIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110213', '1102', '11', 'ORCOTUNA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110214', '1102', '11', 'SAN JOSE DE QUERO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110215', '1102', '11', 'SANTA ROSA DE OCOPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110301', '1103', '11', 'CHANCHAMAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110302', '1103', '11', 'PERENE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110303', '1103', '11', 'PICHANAQUI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110304', '1103', '11', 'SAN LUIS DE SHUARO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110305', '1103', '11', 'SAN RAMON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110306', '1103', '11', 'VITOC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110401', '1104', '11', 'JAUJA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110402', '1104', '11', 'ACOLLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110403', '1104', '11', 'APATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110404', '1104', '11', 'ATAURA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110405', '1104', '11', 'CANCHAYLLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110406', '1104', '11', 'CURICACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110407', '1104', '11', 'EL MANTARO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110408', '1104', '11', 'HUAMALI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110409', '1104', '11', 'HUARIPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110410', '1104', '11', 'HUERTAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110411', '1104', '11', 'JANJAILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110412', '1104', '11', 'JULCAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110413', '1104', '11', 'LEONOR ORDOÃ‘EZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110414', '1104', '11', 'LLOCLLAPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110415', '1104', '11', 'MARCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110416', '1104', '11', 'MASMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110417', '1104', '11', 'MASMA CHICCHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110418', '1104', '11', 'MOLINOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110419', '1104', '11', 'MONOBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110420', '1104', '11', 'MUQUI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110421', '1104', '11', 'MUQUIYAUYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110422', '1104', '11', 'PACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110423', '1104', '11', 'PACCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110424', '1104', '11', 'PANCAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110425', '1104', '11', 'PARCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110426', '1104', '11', 'POMACANCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110427', '1104', '11', 'RICRAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110428', '1104', '11', 'SAN LORENZO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110429', '1104', '11', 'SAN PEDRO DE CHUNAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110430', '1104', '11', 'SAUSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110431', '1104', '11', 'SINCOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110432', '1104', '11', 'TUNAN MARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110433', '1104', '11', 'YAULI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110434', '1104', '11', 'YAUYOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110501', '1105', '11', 'JUNIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110502', '1105', '11', 'CARHUAMAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110503', '1105', '11', 'ONDORES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110504', '1105', '11', 'ULCUMAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110601', '1106', '11', 'SATIPO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110602', '1106', '11', 'COVIRIALI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110603', '1106', '11', 'LLAYLLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110604', '1106', '11', 'MAZAMARI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110605', '1106', '11', 'PAMPA HERMOSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110606', '1106', '11', 'PANGOA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110607', '1106', '11', 'RIO NEGRO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110608', '1106', '11', 'RIO TAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110701', '1107', '11', 'TARMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110702', '1107', '11', 'ACOBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110703', '1107', '11', 'HUARICOLCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110704', '1107', '11', 'HUASAHUASI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110705', '1107', '11', 'LA UNION');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110706', '1107', '11', 'PALCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110707', '1107', '11', 'PALCAMAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110708', '1107', '11', 'SAN PEDRO DE CAJAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110709', '1107', '11', 'TAPO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110801', '1108', '11', 'LA OROYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110802', '1108', '11', 'CHACAPALPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110803', '1108', '11', 'HUAY-HUAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110804', '1108', '11', 'MARCAPOMACOCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110805', '1108', '11', 'MOROCOCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110806', '1108', '11', 'PACCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110807', '1108', '11', 'SANTA BARBARA DE CARHUACAYAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110808', '1108', '11', 'SANTA ROSA DE SACCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110809', '1108', '11', 'SUITUCANCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110810', '1108', '11', 'YAULI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110901', '1109', '11', 'CHUPACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110902', '1109', '11', 'AHUAC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110903', '1109', '11', 'CHONGOS BAJO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110904', '1109', '11', 'HUACHAC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110905', '1109', '11', 'HUAMANCACA CHICO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110906', '1109', '11', 'SAN JUAN DE ISCOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110907', '1109', '11', 'SAN JUAN DE JARPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110908', '1109', '11', '3 DE DICIEMBRE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('110909', '1109', '11', 'YANACANCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120101', '1201', '12', 'TRUJILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120102', '1201', '12', 'EL PORVENIR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120103', '1201', '12', 'FLORENCIA DE MORA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120104', '1201', '12', 'HUANCHACO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120105', '1201', '12', 'LA ESPERANZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120106', '1201', '12', 'LAREDO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120107', '1201', '12', 'MOCHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120108', '1201', '12', 'POROTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120109', '1201', '12', 'SALAVERRY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120110', '1201', '12', 'SIMBAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120111', '1201', '12', 'VICTOR LARCO HERRERA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120201', '1202', '12', 'ASCOPE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120202', '1202', '12', 'CHICAMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120203', '1202', '12', 'CHOCOPE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120204', '1202', '12', 'MAGDALENA DE CAO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120205', '1202', '12', 'PAIJAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120206', '1202', '12', 'RAZURI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120207', '1202', '12', 'SANTIAGO DE CAO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120208', '1202', '12', 'CASAGRANDE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120301', '1203', '12', 'BOLIVAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120302', '1203', '12', 'BAMBAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120303', '1203', '12', 'CONDORMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120304', '1203', '12', 'LONGOTEA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120305', '1203', '12', 'UCHUMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120306', '1203', '12', 'UCUNCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120401', '1204', '12', 'CHEPEN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120402', '1204', '12', 'PACANGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120403', '1204', '12', 'PUEBLO NUEVO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120501', '1205', '12', 'JULCAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120502', '1205', '12', 'CALAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120503', '1205', '12', 'CARABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120504', '1205', '12', 'HUASO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120601', '1206', '12', 'OTUZCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120602', '1206', '12', 'AGALLPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120604', '1206', '12', 'CHARAT');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120605', '1206', '12', 'HUARANCHAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120606', '1206', '12', 'LA CUESTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120608', '1206', '12', 'MACHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120610', '1206', '12', 'PARANDAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120611', '1206', '12', 'SALPO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120613', '1206', '12', 'SINSICAP');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120614', '1206', '12', 'USQUIL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120701', '1207', '12', 'SAN PEDRO DE LLOC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120702', '1207', '12', 'GUADALUPE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120703', '1207', '12', 'JEQUETEPEQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120704', '1207', '12', 'PACASMAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120705', '1207', '12', 'SAN JOSE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120801', '1208', '12', 'TAYABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120802', '1208', '12', 'BULDIBUYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120803', '1208', '12', 'CHILLIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120804', '1208', '12', 'HUANCASPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120805', '1208', '12', 'HUAYLILLAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120806', '1208', '12', 'HUAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120807', '1208', '12', 'ONGON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120808', '1208', '12', 'PARCOY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120809', '1208', '12', 'PATAZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120810', '1208', '12', 'PIAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120811', '1208', '12', 'SANTIAGO DE CHALLAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120812', '1208', '12', 'TAURIJA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120813', '1208', '12', 'URPAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120901', '1209', '12', 'HUAMACHUCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120902', '1209', '12', 'CHUGAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120903', '1209', '12', 'COCHORCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120904', '1209', '12', 'CURGOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120905', '1209', '12', 'MARCABAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120906', '1209', '12', 'SANAGORAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120907', '1209', '12', 'SARIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('120908', '1209', '12', 'SARTIMBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121001', '1210', '12', 'SANTIAGO DE CHUCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121002', '1210', '12', 'ANGASMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121003', '1210', '12', 'CACHICADAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121004', '1210', '12', 'MOLLEBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121005', '1210', '12', 'MOLLEPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121006', '1210', '12', 'QUIRUVILCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121007', '1210', '12', 'SANTA CRUZ DE CHUCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121008', '1210', '12', 'SITABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121101', '1211', '12', 'CASCAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121102', '1211', '12', 'LUCMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121103', '1211', '12', 'MARMOT');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121104', '1211', '12', 'SAYAPULLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121201', '1212', '12', 'VIRU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121202', '1212', '12', 'CHAO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('121203', '1212', '12', 'GUADALUPITO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130101', '1301', '13', 'CHICLAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130102', '1301', '13', 'CHONGOYAPE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130103', '1301', '13', 'ETEN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130104', '1301', '13', 'ETEN PUERTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130105', '1301', '13', 'JOSE LEONARDO ORTIZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130106', '1301', '13', 'LA VICTORIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130107', '1301', '13', 'LAGUNAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130108', '1301', '13', 'MONSEFU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130109', '1301', '13', 'NUEVA ARICA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130110', '1301', '13', 'OYOTUN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130111', '1301', '13', 'PICSI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130112', '1301', '13', 'PIMENTEL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130113', '1301', '13', 'REQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130114', '1301', '13', 'SANTA ROSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130115', '1301', '13', 'SAÃ‘A');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130116', '1301', '13', 'CAYALTI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130117', '1301', '13', 'PATAPO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130118', '1301', '13', 'POMALCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130119', '1301', '13', 'PUCALA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130120', '1301', '13', 'TUMAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130201', '1302', '13', 'FERREÃ‘AFE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130202', '1302', '13', 'CAÃ‘ARIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130203', '1302', '13', 'INCAHUASI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130204', '1302', '13', 'MANUEL A. MESONES MURO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130205', '1302', '13', 'PITIPO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130206', '1302', '13', 'PUEBLO NUEVO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130301', '1303', '13', 'LAMBAYEQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130302', '1303', '13', 'CHOCHOPE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130303', '1303', '13', 'ILLIMO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130304', '1303', '13', 'JAYANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130305', '1303', '13', 'MOCHUMI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130306', '1303', '13', 'MORROPE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130307', '1303', '13', 'MOTUPE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130308', '1303', '13', 'OLMOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130309', '1303', '13', 'PACORA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130310', '1303', '13', 'SALAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130311', '1303', '13', 'SAN JOSE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('130312', '1303', '13', 'TUCUME');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140101', '1401', '14', 'LIMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140102', '1401', '14', 'ANCON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140103', '1401', '14', 'ATE-VITARTE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140104', '1401', '14', 'BARRANCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140105', '1401', '14', 'BREÃ‘A');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140106', '1401', '14', 'CARABAYLLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140107', '1401', '14', 'CHACLACAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140108', '1401', '14', 'CHORRILLOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140109', '1401', '14', 'CIENEGUILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140110', '1401', '14', 'COMAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140111', '1401', '14', 'EL AGUSTINO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140112', '1401', '14', 'INDEPENDENCIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140113', '1401', '14', 'JESUS MARIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140114', '1401', '14', 'LA MOLINA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140115', '1401', '14', 'LA VICTORIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140116', '1401', '14', 'LINCE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140117', '1401', '14', 'LOS OLIVOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140118', '1401', '14', 'LURIGANCHO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140119', '1401', '14', 'LURIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140120', '1401', '14', 'MAGDALENA DEL MAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140121', '1401', '14', 'PUEBLO LIBRE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140122', '1401', '14', 'MIRAFLORES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140123', '1401', '14', 'PACHACAMAC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140124', '1401', '14', 'PUCUSANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140125', '1401', '14', 'PUENTE PIEDRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140126', '1401', '14', 'PUNTA HERMOSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140127', '1401', '14', 'PUNTA NEGRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140128', '1401', '14', 'RIMAC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140129', '1401', '14', 'SAN BARTOLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140130', '1401', '14', 'SAN BORJA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140131', '1401', '14', 'SAN ISIDRO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140132', '1401', '14', 'SAN JUAN DE LURIGANCHO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140133', '1401', '14', 'SAN JUAN DE MIRAFLORES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140134', '1401', '14', 'SAN LUIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140135', '1401', '14', 'SAN MARTIN DE PORRES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140136', '1401', '14', 'SAN MIGUEL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140137', '1401', '14', 'SANTA ANITA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140138', '1401', '14', 'SANTA MARIA DEL MAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140139', '1401', '14', 'SANTA ROSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140140', '1401', '14', 'SANTIAGO DE SURCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140141', '1401', '14', 'SURQUILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140142', '1401', '14', 'VILLA EL SALVADOR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140143', '1401', '14', 'VILLA MARIA DEL TRIUNFO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140201', '1402', '14', 'BARRANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140202', '1402', '14', 'PARAMONGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140203', '1402', '14', 'PATIVILCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140204', '1402', '14', 'SUPE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140205', '1402', '14', 'SUPE PUERTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140301', '1403', '14', 'CAJATAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140302', '1403', '14', 'COPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140303', '1403', '14', 'GORGOR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140304', '1403', '14', 'HUANCAPON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140305', '1403', '14', 'MANAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140401', '1404', '14', 'CANTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140402', '1404', '14', 'ARAHUAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140403', '1404', '14', 'HUAMANTANGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140404', '1404', '14', 'HUAROS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140405', '1404', '14', 'LACHAQUI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140406', '1404', '14', 'SAN BUENAVENTURA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140407', '1404', '14', 'SANTA ROSA DE QUIVES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140501', '1405', '14', 'SAN VICENTE DE CAÃ‘ETE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140502', '1405', '14', 'ASIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140503', '1405', '14', 'CALANGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140504', '1405', '14', 'CERRO AZUL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140505', '1405', '14', 'CHILCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140506', '1405', '14', 'COAYLLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140507', '1405', '14', 'IMPERIAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140508', '1405', '14', 'LUNAHUANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140509', '1405', '14', 'MALA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140510', '1405', '14', 'NUEVO IMPERIAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140511', '1405', '14', 'PACARAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140512', '1405', '14', 'QUILMANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140513', '1405', '14', 'SAN ANTONIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140514', '1405', '14', 'SAN LUIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140515', '1405', '14', 'SANTA CRUZ DE FLORES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140516', '1405', '14', 'ZUÃ‘IGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140601', '1406', '14', 'HUARAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140602', '1406', '14', 'ATAVILLOS ALTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140603', '1406', '14', 'ATAVILLOS BAJO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140604', '1406', '14', 'AUCALLAMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140605', '1406', '14', 'CHANCAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140606', '1406', '14', 'IHUARI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140607', '1406', '14', 'LAMPIAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140608', '1406', '14', 'PACARAOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140609', '1406', '14', 'SAN MIGUEL DE ACOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140610', '1406', '14', 'SANTA CRUZ DE ANDAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140611', '1406', '14', 'SUMBILCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140612', '1406', '14', 'VEINTISIETE DE NOVIEMBRE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140701', '1407', '14', 'MATUCANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140702', '1407', '14', 'ANTIOQUIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140703', '1407', '14', 'CALLAHUANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140704', '1407', '14', 'CARAMPOMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140705', '1407', '14', 'CHICLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140706', '1407', '14', 'CUENCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140707', '1407', '14', 'HUACHUPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140708', '1407', '14', 'HUANZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140709', '1407', '14', 'HUAROCHIRI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140710', '1407', '14', 'LAHUAYTAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140711', '1407', '14', 'LANGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140712', '1407', '14', 'LARAOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140713', '1407', '14', 'MARIATANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140714', '1407', '14', 'RICARDO PALMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140715', '1407', '14', 'SAN ANDRES DE TUPICOCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140716', '1407', '14', 'SAN ANTONIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140717', '1407', '14', 'SAN BARTOLOME');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140718', '1407', '14', 'SAN DAMIAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140719', '1407', '14', 'SAN JUAN DE IRIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140720', '1407', '14', 'SAN JUAN DE TANTARANCHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140721', '1407', '14', 'SAN LORENZO DE QUINTI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140722', '1407', '14', 'SAN MATEO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140723', '1407', '14', 'SAN MATEO DE OTAO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140724', '1407', '14', 'SAN PEDRO DE CASTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140725', '1407', '14', 'SAN PEDRO DE HUANCAYRE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140726', '1407', '14', 'SANGALLAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140727', '1407', '14', 'SANTA CRUZ DE COCACHACRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140728', '1407', '14', 'SANTA EULALIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140729', '1407', '14', 'SANTIAGO DE ANCHUCAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140730', '1407', '14', 'SANTIAGO DE TUNA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140731', '1407', '14', 'SANTO DOMINGO DE LOS OLLEROS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140732', '1407', '14', 'SURCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140801', '1408', '14', 'HUACHO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140802', '1408', '14', 'AMBAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140803', '1408', '14', 'CALETA DE CARQUIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140804', '1408', '14', 'CHECRAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140805', '1408', '14', 'HUALMAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140806', '1408', '14', 'HUAURA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140807', '1408', '14', 'LEONCIO PRADO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140808', '1408', '14', 'PACCHO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140809', '1408', '14', 'SANTA LEONOR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140810', '1408', '14', 'SANTA MARIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140811', '1408', '14', 'SAYAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140812', '1408', '14', 'VEGUETA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140901', '1409', '14', 'OYON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140902', '1409', '14', 'ANDAJES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140903', '1409', '14', 'CAUJUL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140904', '1409', '14', 'COCHAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140905', '1409', '14', 'NAVAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('140906', '1409', '14', 'PACHANGARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141001', '1410', '14', 'YAUYOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141002', '1410', '14', 'ALIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141003', '1410', '14', 'AYAUCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141004', '1410', '14', 'AYAVIRI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141005', '1410', '14', 'AZANGARO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141006', '1410', '14', 'CACRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141007', '1410', '14', 'CARANIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141008', '1410', '14', 'CATAHUASI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141009', '1410', '14', 'CHOCOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141010', '1410', '14', 'COCHAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141011', '1410', '14', 'COLONIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141012', '1410', '14', 'HONGOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141013', '1410', '14', 'HUAMPARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141014', '1410', '14', 'HUANCAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141015', '1410', '14', 'HUANGASCAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141016', '1410', '14', 'HUANTAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141017', '1410', '14', 'HUAÃ‘EC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141018', '1410', '14', 'LARAOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141019', '1410', '14', 'LINCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141020', '1410', '14', 'MADEAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141021', '1410', '14', 'MIRAFLORES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141022', '1410', '14', 'OMAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141023', '1410', '14', 'PUTINZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141024', '1410', '14', 'QUINCHES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141025', '1410', '14', 'QUINOCAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141026', '1410', '14', 'SAN JOAQUIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141027', '1410', '14', 'SAN PEDRO DE PILAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141028', '1410', '14', 'TANTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141029', '1410', '14', 'TAURIPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141030', '1410', '14', 'TOMAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141031', '1410', '14', 'TUPE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141032', '1410', '14', 'VIÃ‘AC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141033', '1410', '14', 'VITIS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141101', '1411', '14', 'CALLAO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141102', '1411', '14', 'BELLAVISTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141103', '1411', '14', 'CARMEN DE LA LEGUA REYNOSO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141104', '1411', '14', 'LA PERLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141105', '1411', '14', 'LA PUNTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('141106', '1411', '14', 'VENTANILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150101', '1501', '15', 'IQUITOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150102', '1501', '15', 'ALTO NANAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150103', '1501', '15', 'FERNANDO LORES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150104', '1501', '15', 'INDIANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150105', '1501', '15', 'LAS AMAZONAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150106', '1501', '15', 'MAZAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150107', '1501', '15', 'NAPO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150108', '1501', '15', 'PUNCHANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150109', '1501', '15', 'PUTUMAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150110', '1501', '15', 'TORRES CAUSANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150112', '1501', '15', 'BELEN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150113', '1501', '15', 'SAN JUAN BAUTISTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150201', '1502', '15', 'YURIMAGUAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150202', '1502', '15', 'BALSAPUERTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150203', '1502', '15', 'BARRANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150204', '1502', '15', 'CAHUAPANAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150205', '1502', '15', 'JEBEROS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150206', '1502', '15', 'LAGUNAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150207', '1502', '15', 'MANSERICHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150208', '1502', '15', 'MORONA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150209', '1502', '15', 'PASTAZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150210', '1502', '15', 'SANTA CRUZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150211', '1502', '15', 'TENIENTE CESAR LOPEZ ROJAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150301', '1503', '15', 'NAUTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150302', '1503', '15', 'PARINARI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150303', '1503', '15', 'TIGRE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150304', '1503', '15', 'TROMPETEROS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150305', '1503', '15', 'URARINAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150401', '1504', '15', 'RAMON CASTILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150402', '1504', '15', 'PEBAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150403', '1504', '15', 'YAVARI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150404', '1504', '15', 'SAN PABLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150501', '1505', '15', 'REQUENA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150502', '1505', '15', 'ALTO TAPICHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150503', '1505', '15', 'CAPELO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150504', '1505', '15', 'EMILIO SAN MARTIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150505', '1505', '15', 'MAQUIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150506', '1505', '15', 'PUINAHUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150507', '1505', '15', 'SAQUENA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150508', '1505', '15', 'SOPLIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150509', '1505', '15', 'TAPICHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150510', '1505', '15', 'JENARO HERRERA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150511', '1505', '15', 'YAQUERANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150601', '1506', '15', 'CONTAMANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150602', '1506', '15', 'INAHUAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150603', '1506', '15', 'PADRE MARQUEZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150604', '1506', '15', 'PAMPA HERMOSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150605', '1506', '15', 'SARAYACU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('150606', '1506', '15', 'VARGAS GUERRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('160101', '1601', '16', 'TAMBOPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('160102', '1601', '16', 'INAMBARI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('160103', '1601', '16', 'LAS PIEDRAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('160104', '1601', '16', 'LABERINTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('160201', '1602', '16', 'MANU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('160202', '1602', '16', 'FITZCARRALD');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('160203', '1602', '16', 'MADRE DE DIOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('160204', '1602', '16', 'HUEPETUHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('160301', '1603', '16', 'IÃ‘APARI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('160302', '1603', '16', 'IBERIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('160303', '1603', '16', 'TAHUAMANU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170101', '1701', '17', 'MOQUEGUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170102', '1701', '17', 'CARUMAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170103', '1701', '17', 'CUCHUMBAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170104', '1701', '17', 'SAMEGUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170105', '1701', '17', 'SAN CRISTOBAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170106', '1701', '17', 'TORATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170201', '1702', '17', 'OMATE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170202', '1702', '17', 'CHOJATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170203', '1702', '17', 'COALAQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170204', '1702', '17', 'ICHUÃ‘A');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170205', '1702', '17', 'LA CAPILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170206', '1702', '17', 'LLOQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170207', '1702', '17', 'MATALAQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170208', '1702', '17', 'PUQUINA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170209', '1702', '17', 'QUINISTAQUILLAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170210', '1702', '17', 'UBINAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170211', '1702', '17', 'YUNGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170301', '1703', '17', 'ILO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170302', '1703', '17', 'EL ALGARROBAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('170303', '1703', '17', 'PACOCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180101', '1801', '18', 'CHAUPIMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180102', '1801', '18', 'HUACHON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180103', '1801', '18', 'HUARIACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180104', '1801', '18', 'HUAYLLAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180105', '1801', '18', 'NINACACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180106', '1801', '18', 'PALLANCHACRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180107', '1801', '18', 'PAUCARTAMBO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180108', '1801', '18', 'SAN FRANCISCO DE ASIS DE YARUSYACAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180109', '1801', '18', 'SIMON BOLIVAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180110', '1801', '18', 'TICLACAYAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180111', '1801', '18', 'TINYAHUARCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180112', '1801', '18', 'VICCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180113', '1801', '18', 'YANACANCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180201', '1802', '18', 'YANAHUANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180202', '1802', '18', 'CHACAYAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180203', '1802', '18', 'GOYLLARISQUIZGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180204', '1802', '18', 'PAUCAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180205', '1802', '18', 'SAN PEDRO DE PILLAO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180206', '1802', '18', 'SANTA ANA DE TUSI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180207', '1802', '18', 'TAPUC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180208', '1802', '18', 'VILCABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180301', '1803', '18', 'OXAPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180302', '1803', '18', 'CHONTABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180303', '1803', '18', 'HUANCABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180304', '1803', '18', 'PALCAZU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180305', '1803', '18', 'POZUZO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180306', '1803', '18', 'PUERTO BERMUDEZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('180307', '1803', '18', 'VILLA RICA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190101', '1901', '19', 'PIURA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190104', '1901', '19', 'CASTILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190105', '1901', '19', 'CATACAOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190107', '1901', '19', 'CURA MORI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190108', '1901', '19', 'EL TALLAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190109', '1901', '19', 'LA ARENA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190110', '1901', '19', 'LA UNION');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190111', '1901', '19', 'LAS LOMAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190114', '1901', '19', 'TAMBO GRANDE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190201', '1902', '19', 'AYABACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190202', '1902', '19', 'FRIAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190203', '1902', '19', 'JILILI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190204', '1902', '19', 'LAGUNAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190205', '1902', '19', 'MONTERO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190206', '1902', '19', 'PACAIPAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190207', '1902', '19', 'PAIMAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190208', '1902', '19', 'SAPILLICA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190209', '1902', '19', 'SICCHEZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190210', '1902', '19', 'SUYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190301', '1903', '19', 'HUANCABAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190302', '1903', '19', 'CANCHAQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190303', '1903', '19', 'EL CARMEN DE LA FRONTERA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190304', '1903', '19', 'HUARMACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190305', '1903', '19', 'LALAQUIZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190306', '1903', '19', 'SAN MIGUEL DE EL FAIQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190307', '1903', '19', 'SONDOR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190308', '1903', '19', 'SONDORILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190401', '1904', '19', 'CHULUCANAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190402', '1904', '19', 'BUENOS AIRES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190403', '1904', '19', 'CHALACO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190404', '1904', '19', 'LA MATANZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190405', '1904', '19', 'MORROPON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190406', '1904', '19', 'SALITRAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190407', '1904', '19', 'SAN JUAN DE BIGOTE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190408', '1904', '19', 'SANTA CATALINA DE MOSSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190409', '1904', '19', 'SANTO DOMINGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190410', '1904', '19', 'YAMANGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190501', '1905', '19', 'PAITA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190502', '1905', '19', 'AMOTAPE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190503', '1905', '19', 'ARENAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190504', '1905', '19', 'COLAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190505', '1905', '19', 'LA HUACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190506', '1905', '19', 'TAMARINDO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190507', '1905', '19', 'VICHAYAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190601', '1906', '19', 'SULLANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190602', '1906', '19', 'BELLAVISTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190603', '1906', '19', 'IGNACIO ESCUDERO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190604', '1906', '19', 'LANCONES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190605', '1906', '19', 'MARCAVELICA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190606', '1906', '19', 'MIGUEL CHECA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190607', '1906', '19', 'QUERECOTILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190608', '1906', '19', 'SALITRAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190701', '1907', '19', 'PARIÃ‘AS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190702', '1907', '19', 'EL ALTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190703', '1907', '19', 'LA BREA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190704', '1907', '19', 'LOBITOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190705', '1907', '19', 'LOS ORGANOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190706', '1907', '19', 'MANCORA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190801', '1908', '19', 'SECHURA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190802', '1908', '19', 'BELLAVISTA DE LA UNION');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190803', '1908', '19', 'BERNAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190804', '1908', '19', 'CRISTO NOS VALGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190805', '1908', '19', 'VICE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('190806', '1908', '19', 'RINCONADA LLICUAR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200101', '2001', '20', 'PUNO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200102', '2001', '20', 'ACORA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200103', '2001', '20', 'AMANTANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200104', '2001', '20', 'ATUNCOLLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200105', '2001', '20', 'CAPACHICA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200106', '2001', '20', 'CHUCUITO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200107', '2001', '20', 'COATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200108', '2001', '20', 'HUATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200109', '2001', '20', 'MAÃ‘AZO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200110', '2001', '20', 'PAUCARCOLLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200111', '2001', '20', 'PICHACANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200112', '2001', '20', 'PLATERIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200113', '2001', '20', 'SAN ANTONIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200114', '2001', '20', 'TIQUILLACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200115', '2001', '20', 'VILQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200201', '2002', '20', 'AZANGARO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200202', '2002', '20', 'ACHAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200203', '2002', '20', 'ARAPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200204', '2002', '20', 'ASILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200205', '2002', '20', 'CAMINACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200206', '2002', '20', 'CHUPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200207', '2002', '20', 'JOSE DOMINGO CHOQUEHUANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200208', '2002', '20', 'MUÃ‘ANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200209', '2002', '20', 'POTONI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200210', '2002', '20', 'SAMAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200211', '2002', '20', 'SAN ANTON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200212', '2002', '20', 'SAN JOSE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200213', '2002', '20', 'SAN JUAN DE SALINAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200214', '2002', '20', 'SANTIAGO DE PUPUJA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200215', '2002', '20', 'TIRAPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200301', '2003', '20', 'MACUSANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200302', '2003', '20', 'AJOYANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200303', '2003', '20', 'AYAPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200304', '2003', '20', 'COASA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200305', '2003', '20', 'CORANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200306', '2003', '20', 'CRUCERO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200307', '2003', '20', 'ITUATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200308', '2003', '20', 'OLLACHEA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200309', '2003', '20', 'SAN GABAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200310', '2003', '20', 'USICAYOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200401', '2004', '20', 'JULI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200402', '2004', '20', 'DESAGUADERO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200403', '2004', '20', 'HUACULLANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200404', '2004', '20', 'KELLUYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200405', '2004', '20', 'PISACOMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200406', '2004', '20', 'POMATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200407', '2004', '20', 'ZEPITA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200501', '2005', '20', 'ILAVE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200502', '2005', '20', 'CAPASO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200503', '2005', '20', 'PILCUYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200504', '2005', '20', 'SANTA ROSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200505', '2005', '20', 'CONDURIRI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200601', '2006', '20', 'HUANCANE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200602', '2006', '20', 'COJATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200603', '2006', '20', 'HUATASANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200604', '2006', '20', 'INCHUPALLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200605', '2006', '20', 'PUSI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200606', '2006', '20', 'ROSASPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200607', '2006', '20', 'TARACO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200608', '2006', '20', 'VILQUE CHICO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200701', '2007', '20', 'LAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200702', '2007', '20', 'CABANILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200703', '2007', '20', 'CALAPUJA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200704', '2007', '20', 'NICASIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200705', '2007', '20', 'OCUVIRI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200706', '2007', '20', 'PALCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200707', '2007', '20', 'PARATIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200708', '2007', '20', 'PUCARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200709', '2007', '20', 'SANTA LUCIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200710', '2007', '20', 'VILAVILA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200801', '2008', '20', 'AYAVIRI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200802', '2008', '20', 'ANTAUTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200803', '2008', '20', 'CUPI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200804', '2008', '20', 'LLALLI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200805', '2008', '20', 'MACARI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200806', '2008', '20', 'NUÃ‘OA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200807', '2008', '20', 'ORURILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200808', '2008', '20', 'SANTA ROSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200809', '2008', '20', 'UMACHIRI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200901', '2009', '20', 'MOHO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200902', '2009', '20', 'CONIMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200903', '2009', '20', 'HUAYRAPATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('200904', '2009', '20', 'TILALI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201001', '2010', '20', 'PUTINA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201002', '2010', '20', 'ANANEA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201003', '2010', '20', 'PEDRO VILCA APAZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201004', '2010', '20', 'QUILCAPUNCU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201005', '2010', '20', 'SINA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201101', '2011', '20', 'JULIACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201102', '2011', '20', 'CABANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201103', '2011', '20', 'CABANILLAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201104', '2011', '20', 'CARACOTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201201', '2012', '20', 'SANDIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201202', '2012', '20', 'CUYOCUYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201203', '2012', '20', 'LIMBANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201204', '2012', '20', 'PATAMBUCO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201205', '2012', '20', 'PHARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201206', '2012', '20', 'QUIACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201207', '2012', '20', 'SAN JUAN DEL ORO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201208', '2012', '20', 'YANAHUAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201209', '2012', '20', 'ALTO INAMBARI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201301', '2013', '20', 'YUNGUYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201302', '2013', '20', 'ANAPIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201303', '2013', '20', 'COPANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201304', '2013', '20', 'CUTURAPI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201305', '2013', '20', 'OLLARAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201306', '2013', '20', 'TINICACHI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('201307', '2013', '20', 'UNICACHI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210101', '2101', '21', 'MOYOBAMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210102', '2101', '21', 'CALZADA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210103', '2101', '21', 'HABANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210104', '2101', '21', 'JEPELACIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210105', '2101', '21', 'SORITOR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210106', '2101', '21', 'YANTALO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210201', '2102', '21', 'BELLAVISTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210202', '2102', '21', 'ALTO BIAVO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210203', '2102', '21', 'BAJO BIAVO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210204', '2102', '21', 'HUALLAGA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210205', '2102', '21', 'SAN PABLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210206', '2102', '21', 'SAN RAFAEL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210301', '2103', '21', 'SAN JOSE DE SISA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210302', '2103', '21', 'AGUA BLANCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210303', '2103', '21', 'SAN MARTIN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210304', '2103', '21', 'SANTA ROSA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210305', '2103', '21', 'SHATOJA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210401', '2104', '21', 'SAPOSOA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210402', '2104', '21', 'ALTO SAPOSOA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210403', '2104', '21', 'EL ESLABON');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210404', '2104', '21', 'PISCOYACU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210405', '2104', '21', 'SACANCHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210406', '2104', '21', 'TINGO DE SAPOSOA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210501', '2105', '21', 'LAMAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210502', '2105', '21', 'ALONSO DE ALVARADO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210503', '2105', '21', 'BARRANQUITA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210504', '2105', '21', 'CAYNARACHI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210505', '2105', '21', 'CUÃ‘UMBUQUI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210506', '2105', '21', 'PINTO RECODO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210507', '2105', '21', 'RUMISAPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210508', '2105', '21', 'SAN ROQUE DE CUMBAZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210509', '2105', '21', 'SHANAO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210510', '2105', '21', 'TABALOSOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210511', '2105', '21', 'ZAPATERO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210601', '2106', '21', 'JUANJUI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210602', '2106', '21', 'CAMPANILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210603', '2106', '21', 'HUICUNGO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210604', '2106', '21', 'PACHIZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210605', '2106', '21', 'PAJARILLO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210701', '2107', '21', 'PICOTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210702', '2107', '21', 'BUENOS AIRES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210703', '2107', '21', 'CASPISAPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210704', '2107', '21', 'PILLUANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210705', '2107', '21', 'PUCACACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210706', '2107', '21', 'SAN CRISTOBAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210707', '2107', '21', 'SAN HILARION');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210708', '2107', '21', 'SHAMBOYACU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210709', '2107', '21', 'TINGO DE PONASA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210710', '2107', '21', 'TRES UNIDOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210801', '2108', '21', 'RIOJA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210802', '2108', '21', 'AWAJUN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210803', '2108', '21', 'ELIAS SOPLIN VARGAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210804', '2108', '21', 'NUEVA CAJAMARCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210805', '2108', '21', 'PARDO MIGUEL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210806', '2108', '21', 'POSIC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210807', '2108', '21', 'SAN FERNANDO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210808', '2108', '21', 'YORONGOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210809', '2108', '21', 'YURACYACU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210901', '2109', '21', 'TARAPOTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210902', '2109', '21', 'ALBERTO LEVEAU');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210903', '2109', '21', 'CACATACHI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210904', '2109', '21', 'CHAZUTA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210905', '2109', '21', 'CHIPURANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210906', '2109', '21', 'EL PORVENIR');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210907', '2109', '21', 'HUIMBAYOC');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210908', '2109', '21', 'JUAN GUERRA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210909', '2109', '21', 'LA BANDA DE SHILCAYO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210910', '2109', '21', 'MORALES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210911', '2109', '21', 'PAPAPLAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210912', '2109', '21', 'SAN ANTONIO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210913', '2109', '21', 'SAUCE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('210914', '2109', '21', 'SHAPAJA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('211001', '2110', '21', 'TOCACHE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('211002', '2110', '21', 'NUEVO PROGRESO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('211003', '2110', '21', 'POLVORA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('211004', '2110', '21', 'SHUNTE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('211005', '2110', '21', 'UCHIZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220101', '2201', '22', 'TACNA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220102', '2201', '22', 'ALTO DE LA ALIANZA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220103', '2201', '22', 'CALANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220104', '2201', '22', 'CIUDAD NUEVA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220105', '2201', '22', 'INCLAN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220106', '2201', '22', 'PACHIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220107', '2201', '22', 'PALCA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220108', '2201', '22', 'POCOLLAY');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220109', '2201', '22', 'SAMA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220110', '2201', '22', 'CORONEL GREGORIO ALBARRACIN LANCHIPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220201', '2202', '22', 'CANDARAVE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220202', '2202', '22', 'CAIRANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220203', '2202', '22', 'CAMILACA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220204', '2202', '22', 'CURIBAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220205', '2202', '22', 'HUANUARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220206', '2202', '22', 'QUILAHUANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220301', '2203', '22', 'LOCUMBA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220302', '2203', '22', 'ILABAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220303', '2203', '22', 'ITE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220401', '2204', '22', 'TARATA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220402', '2204', '22', 'CHUCATAMANI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220403', '2204', '22', 'ESTIQUE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220404', '2204', '22', 'ESTIQUE-PAMPA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220405', '2204', '22', 'SITAJARA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220406', '2204', '22', 'SUSAPAYA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220407', '2204', '22', 'TARUCACHI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('220408', '2204', '22', 'TICACO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('230101', '2301', '23', 'TUMBES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('230102', '2301', '23', 'CORRALES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('230103', '2301', '23', 'LA CRUZ');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('230104', '2301', '23', 'PAMPAS DE HOSPITAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('230105', '2301', '23', 'SAN JACINTO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('230106', '2301', '23', 'SAN JUAN DE LA VIRGEN');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('230201', '2302', '23', 'ZORRITOS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('230202', '2302', '23', 'CASITAS');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('230301', '2303', '23', 'ZARUMILLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('230302', '2303', '23', 'AGUAS VERDES');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('230303', '2303', '23', 'MATAPALO');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('230304', '2303', '23', 'PAPAYAL');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240101', '2401', '24', 'CALLERIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240102', '2401', '24', 'CAMPOVERDE');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240103', '2401', '24', 'IPARIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240104', '2401', '24', 'MASISEA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240105', '2401', '24', 'YARINACOCHA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240106', '2401', '24', 'NUEVA REQUENA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240201', '2402', '24', 'RAYMONDI');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240202', '2402', '24', 'SEPAHUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240203', '2402', '24', 'TAHUANIA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240204', '2402', '24', 'YURUA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240301', '2403', '24', 'PADRE ABAD');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240302', '2403', '24', 'IRAZOLA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240303', '2403', '24', 'CURIMANA');
INSERT INTO `tb_distrito` (CodigoDistrito, CodigoProvincia, CodigoDepartamento, NombreDistrito) VALUES ('240401', '2404', '24', 'PURUS');

# Dumping Table Structure for tb_provincia
#
CREATE TABLE `tb_provincia` (
  `CodigoProvincia` varchar(4) NOT NULL default '',
  `NombreProvincia` varchar(25) default NULL,
  PRIMARY KEY  (`CodigoProvincia`)
) TYPE=MyISAM;
#
# Dumping Data for tb_provincia
#
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0101', 'CHACHAPOYAS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0102', 'BAGUA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0103', 'BONGARA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0104', 'CONDORCANQUI');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0105', 'LUYA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0106', 'RODRIGUEZ DE MENDO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0107', 'UTCUBAMBA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0201', 'HUARAZ');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0202', 'AIJA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0203', 'ANTONIO RAYMONDI');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0204', 'ASUNCION');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0205', 'BOLOGNESI');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0206', 'CARHUAZ');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0207', 'CARLOS F. FITZCARRALD');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0208', 'CASMA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0209', 'CORONGO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0210', 'HUARI');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0211', 'HUARMEY');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0212', 'HUAYLAS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0213', 'MARISCAL LUZURIAGA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0214', 'OCROS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0215', 'PALLASCA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0216', 'POMABAMBA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0217', 'RECUAY');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0218', 'SANTA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0219', 'SIHUAS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0220', 'YUNGAY');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0301', 'ABANCAY');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0302', 'ANDAHUAYLAS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0303', 'ANTABAMBA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0304', 'AYMARAES');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0305', 'COTABAMBAS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0306', 'CHINCHEROS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0307', 'GRAU');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0401', 'AREQUIPA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0402', 'CAMANA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0403', 'CARAVELI');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0404', 'CASTILLA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0405', 'CAYLLOMA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0406', 'CONDESUYOS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0407', 'ISLAY');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0408', 'LA UNION');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0501', 'HUAMANGA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0502', 'CANGALLO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0503', 'HUANCA SANCOS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0504', 'HUANTA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0505', 'LA MAR');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0506', 'LUCANAS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0507', 'PARINACOCHAS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0508', 'PAUCAR DEL SARA SARA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0509', 'SUCRE');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0510', 'VICTOR FAJARDO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0511', 'VILCAS HUAMAN');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0601', 'CAJAMARCA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0602', 'CAJABAMBA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0603', 'CELENDIN');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0604', 'CHOTA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0605', 'CONTUMAZA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0606', 'CUTERVO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0607', 'HUALGAYOC');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0608', 'JAEN');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0609', 'SAN IGNACIO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0610', 'SAN MARCOS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0611', 'SAN MIGUEL');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0612', 'SAN PABLO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0613', 'SANTA CRUZ');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0701', 'CUSCO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0702', 'ACOMAYO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0703', 'ANTA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0704', 'CALCA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0705', 'CANAS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0706', 'CANCHIS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0707', 'CHUMBIVILCAS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0708', 'ESPINAR');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0709', 'LA CONVENCION');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0710', 'PARURO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0711', 'PAUCARTAMBO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0712', 'QUISPICANCHI');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0713', 'URUBAMBA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0801', 'HUANCAVELICA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0802', 'ACOBAMBA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0803', 'ANGARAES');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0804', 'CASTROVIRREYNA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0805', 'CHURCAMPA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0806', 'HUAYTARA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0807', 'TAYACAJA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0901', 'HUANUCO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0902', 'AMBO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0903', 'DOS DE MAYO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0904', 'HUACAYBAMBA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0905', 'HUAMALIES');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0906', 'LEONCIO PRADO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0907', 'MARAÃ‘ON');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0908', 'PACHITEA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0909', 'PUERTO INCA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0910', 'LAURICOCHA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('0911', 'YAROWILCA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1001', 'ICA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1002', 'CHINCHA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1003', 'NAZCA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1004', 'PALPA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1005', 'PISCO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1101', 'HUANCAYO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1102', 'CONCEPCION');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1103', 'CHANCHAMAYO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1104', 'JAUJA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1105', 'JUNIN');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1106', 'SATIPO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1107', 'TARMA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1108', 'YAULI');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1109', 'CHUPACA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1201', 'TRUJILLO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1202', 'ASCOPE');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1203', 'BOLIVAR');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1204', 'CHEPEN');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1205', 'JULCAN');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1206', 'OTUZCO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1207', 'PACASMAYO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1208', 'PATAZ');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1209', 'SANCHEZ CARRION');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1210', 'SANTIAGO DE CHUCO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1211', 'GRAN CHIMU');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1212', 'VIRU');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1301', 'CHICLAYO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1302', 'FERREÃ‘AFE');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1303', 'LAMBAYEQUE');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1401', 'LIMA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1402', 'BARRANCA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1403', 'CAJATAMBO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1404', 'CANTA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1405', 'CAÃ‘ETE');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1406', 'HUARAL');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1407', 'HUAROCHIRI');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1408', 'HUAURA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1409', 'OYON');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1410', 'YAUYOS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1411', 'CALLAO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1501', 'MAYNAS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1502', 'ALTO AMAZONAS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1503', 'LORETO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1504', 'MARISCAL RAMON CASTILLA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1505', 'REQUENA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1506', 'UCAYALI');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1601', 'TAMBOPATA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1602', 'MANU');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1603', 'TAHUAMANU');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1701', 'MARISCAL NIETO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1702', 'GENERAL SANCHEZ CERRO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1703', 'ILO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1801', 'PASCO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1802', 'DANIEL ALCIDES CARRION');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1803', 'OXAPAMPA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1901', 'PIURA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1902', 'AYABACA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1903', 'HUANCABAMBA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1904', 'MORROPON');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1905', 'PAITA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1906', 'SULLANA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1907', 'TALARA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('1908', 'SECHURA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2001', 'PUNO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2002', 'AZANGARO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2003', 'CARABAYA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2004', 'CHUCUITO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2005', 'EL COLLAO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2006', 'HUANCANE');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2007', 'LAMPA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2008', 'MELGAR');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2009', 'MOHO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2010', 'SAN ANTONIO DE PUTINA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2011', 'SAN ROMAN');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2012', 'SANDIA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2013', 'YUNGUYO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2101', 'MOYOBAMBA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2102', 'BELLAVISTA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2103', 'EL DORADO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2104', 'HUALLAGA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2105', 'LAMAS');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2106', 'MARISCAL CACERES');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2107', 'PICOTA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2108', 'RIOJA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2109', 'SAN MARTIN');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2110', 'TOCACHE');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2201', 'TACNA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2202', 'CANDARAVE');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2203', 'JORGE BASADRE');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2204', 'TARATA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2301', 'TUMBES');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2302', 'CONTRALMIRANTE VILLAR');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2303', 'ZARUMILLA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2401', 'CORONEL PORTILLO');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2402', 'ATALAYA');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2403', 'PADRE ABAD');
INSERT INTO `tb_provincia` (CodigoProvincia, NombreProvincia) VALUES ('2404', 'PURUS');

# Dumping Table Structure for tb_departamento
#
CREATE TABLE `tb_departamento` (
  `CodigoDepartamento` char(2) NOT NULL default '',
  `NombreDepartamento` varchar(25) default NULL,
  PRIMARY KEY  (`CodigoDepartamento`)
) TYPE=MyISAM;
#
# Dumping Data for tb_departamento
#
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('01', 'AMAZONAS');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('02', 'ANCASH');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('03', 'APURIMAC');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('04', 'AREQUIPA');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('05', 'AYACUCHO');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('06', 'CAJAMARCA');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('07', 'CUSCO');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('08', 'HUANCAVELICA');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('09', 'HUANUCO');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('10', 'ICA');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('11', 'JUNIN');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('12', 'LA LIBERTAD');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('13', 'LAMBAYEQUE');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('14', 'LIMA');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('15', 'LORETO');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('16', 'MADRE DE DIOS');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('17', 'MOQUEGUA');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('18', 'PASCO');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('19', 'PIURA');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('20', 'PUNO');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('21', 'SAN MARTIN');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('22', 'TACNA');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('23', 'TUMBES');
INSERT INTO `tb_departamento` (CodigoDepartamento, NombreDepartamento) VALUES ('24', 'UCAYALI');


INSERT INTO `tb_encuesta` (id_enc, tit_enc,est_enc, fec_ini_enc, fec_fin_enc, pob_enc ) VALUES (1, 'Elecciones Municipales 2010 - Sector Alto',1,  '01/07/2010', '31/07/2010', 11 );
INSERT INTO `tb_encuesta` (id_enc, tit_enc,est_enc, fec_ini_enc, fec_fin_enc, pob_enc ) VALUES (2, 'Elecciones Municipales 2010 - Sector Medio',2,  '01/08/2010', '31/08/2010', 8);
INSERT INTO `tb_encuesta` (id_enc, tit_enc,est_enc, fec_ini_enc, fec_fin_enc, pob_enc ) VALUES (3, 'Elecciones Municipales 2010 - Sector Popular', 0, '01/08/2010', '15/08/2010', 3);
INSERT INTO `tb_encuesta` (id_enc, tit_enc,est_enc, fec_ini_enc, fec_fin_enc, pob_enc ) VALUES (4, 'Elecciones Lima Sur 2010 - II', 1, '01/07/2010', '15/07/2010', 3);
INSERT INTO `tb_encuesta` (id_enc, tit_enc,est_enc, fec_ini_enc, fec_fin_enc, pob_enc) VALUES (5, 'Elecciones lima Norte 2010 -II ',0,  '05/08/2010', '30/08/2010', 2);


# nuevo
#EncuestaxDistrito


INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (1, '140101');
INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (1, '140102');
INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (1, '140103');

INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (2, '140101');
INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (2, '140102');

INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (3, '140103');
INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (3, '140104');
INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (3, '140101');

INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (4, '140104');
INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (4, '140101');
INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (4, '140102');

INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (5, '140101');
INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (5, '140102');
INSERT INTO `tb_encxdist` (id_enc, CodigoDistrito) VALUES (5, '140103');

#
INSERT INTO `tb_tipo_pregunta` (id_tip_pre, des_tip_pre, tip_gra) VALUES (1, 'Unicas', 1);
INSERT INTO `tb_tipo_pregunta` (id_tip_pre, des_tip_pre, tip_gra) VALUES (2, 'Multiples', 2);

INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (1, '¿Cómo considera ud. la gestión actual del Municipio de lima', 1, 1, 1);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (2, 'Cuál cree ud. que es el principal problema que afecta al Municipio', 1,2, 2);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (3, 'Independientemente de sus preferencias políticas, ¿Cuáles considera que son los PRINCIPALES OBJETIVOS que debería tener el futuro alcalde de Lima ?', 2, 3, 3);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (4, '¿Cuál es la CUALIDAD principal que según usted debe caracterizar al futuro Alcalde?', 1, 4, 4);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (5, 'Por quien votaría ud. si las eleccione fueran el dia de mañana', 1, 5, 5);

INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (6, '¿Qué candidato cree Ud. que cumplirá con todo lo prometido?', 1, 1, 2);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (7, '¿Por quién no votaría Ud.?', 2, 2, 1);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (8, '¿En que Partido Político confía Ud.?', 1, 3, 5);

INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (9, '¿Qué candidato cree Ud. que está mas asociado a la lucha contra la corrupcion?', 1, 1, 1);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (10, '¿Qué candidato cree Ud. que ha tenido una mayor oposición al actual gobierno?', 2, 2, 2);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (11, '¿Qué candidato cree Ud. que tiene más experiencia en política?', 1, 3, 3);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (12, '¿Qué candidato cree Ud. que representa la política tradicional ?', 1, 4, 4);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (13, '¿Qué candidato cree Ud. que ha tenido mayor vinculación con el actual gobierno?', 1, 5, 5);

INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (14, 'Por quien votaría ud. si las eleccione fueran el dia de mañana', 1, 1 ,1);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (15, '¿En que Partido Político confía Ud.?', 1, 2, 2);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (16, '¿Por quién no votaría Ud.?', 2, 3,3);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (17, '¿Qué candidato cree Ud. que tiene más experiencia en política?', 1, 4, 4);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (18, '¿Cuál es la CUALIDAD principal que según usted debe caracterizar al futuro Alcalde?', 1, 5, 5);

INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (19, 'Por quien votaría ud. si las eleccione fueran el dia de mañana', 1, 1, 1);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (20, '¿En que Partido Político confía Ud.?', 1, 2, 2);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (21, '¿Por quién no votaría Ud.?', 2, 3, 3);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (22, '¿Qué candidato cree Ud. que tiene más experiencia en política?', 1, 4, 4);
INSERT INTO `tb_pregunta` (id_pre, des_pre, id_tip_pre, ord_pre,tip_pre_gra) VALUES (23, '¿Cuál es la CUALIDAD principal que según usted debe caracterizar al futuro Alcalde?', 1, 5, 5);

# nuevo
#
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (1, 1);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (2, 1);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (3, 1);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (4, 1);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (5, 1);

INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (6, 2);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (7, 2);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (8, 2);

INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (9, 3);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (10, 3);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (11, 3);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (12, 3);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (13, 3);

INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (14, 4);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (15, 4);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (16, 4);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (17, 4);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (18, 4);

INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (19, 5);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (20, 5);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (21, 5);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (22, 5);
INSERT INTO `tb_prexenc` (id_pre, id_enc) VALUES (23, 5);


# nuevo

#

INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (1, 'Buena');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (2, 'Muy buena');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (3, 'Mala');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (4, 'Muy mala');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (5, 'Regular');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (6, 'No precisa ');

INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (7, 'Inseguridad publica');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (8, 'Basura');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (9, 'Vandalismo');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (10, 'Transporte');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (11, 'Corrupción');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (12, 'Pavimentación');

INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (13, 'Mejorar la seguridad ciudadana en Lima');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (14, 'Mejorar el sistema de transporte ');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (15, 'Prevenir y controlar la contaminación ambiental');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (16, 'Realizar el mantenimiento de calles y pistas');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (17, 'Otro ');

INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (18, 'Tener objetivos y metas claras');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (19, 'Ser un buen líder');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (20, 'Honestidad y confiabilidads');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (21, 'Firmeza y autoridad ');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (22, 'Capacidad para tomar decisiones difíciles');

INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (23, 'Lourdes flores');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (24, 'Alex kouri');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (25, 'Susana Villaran');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (26, 'Fernando Andrade ');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (27, 'Humberto Lay');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (28, 'Luis Iberico');

INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (29, 'Apra');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (30, 'PPC');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (31, 'Acción Popular');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (32, 'Somos Peru');
INSERT INTO `tb_opcion` (id_opc, des_opc) VALUES (33, 'Otros');


INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (1, 1);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (2, 1);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (3, 1);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (4, 1);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (5, 1);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (6, 1);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (7, 2);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (8, 2);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (9, 2);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (10,2);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (11,2);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (12,2);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (13,3);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (14,3);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (15,3);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (16,3);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (17,2);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (18,4);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (19,4);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (20,4);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (21,4);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (22,4);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,5);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,5);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,5);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,5);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,5);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,5);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,6);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,6);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,6);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,6);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,6);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,6);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,7);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,7);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,7);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,7);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,7);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,7);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (29,8);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (30,8);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (31,8);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (32,8);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (33,8);


INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,9);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,9);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,9);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,9);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,9);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,9);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,10);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,10);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,10);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,10);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,10);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,10);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,11);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,11);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,11);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,11);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,11);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,11);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,12);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,12);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,12);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,12);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,12);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,12);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,13);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,13);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,13);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,13);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,13);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,13);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,14);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,14);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,14);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,14);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,14);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,14);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (29,15);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (30,15);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (31,15);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (32,15);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (33,15);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,16);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,16);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,16);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,16);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,16);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,16);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,17);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,17);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,17);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,17);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,17);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,17);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (18,18);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (19,18);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (20,18);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (21,18);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (22,18);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,19);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,19);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,19);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,19);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,19);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,19);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (29,20);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (30,20);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (31,20);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (32,20);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (33,20);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,21);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,21);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,21);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,21);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,21);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,21);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (23,22);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (24,22);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (25,22);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (26,22);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (27,22);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (28,22);

INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (18,23);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (19,23);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (20,23);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (21,23);
INSERT INTO `tb_opcxpre` (id_opc, id_pre) VALUES (22,23);

# nuevo
#Result_fin

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,6,1,  'U001','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,7,2,  'U001','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U001','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,16,3, 'U001','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,18,4, 'U001','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,25,5, 'U001','28/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,5,1,  'U002','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,7,2,  'U002','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U002','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U002','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,22,4, 'U002','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,27,5, 'U002','27/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,1,1,  'U003','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,8,2,  'U003','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U003','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U003','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,26,5, 'U003','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,5,1,  'U004','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,10,2, 'U004','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U004','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,20,4, 'U004','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,27,5, 'U004','26/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,1,1,  'U005','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,9,2,  'U005','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U005','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U005','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,28,5, 'U005','27/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,5,1, 'U006','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,8,2, 'U006','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U006','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U006','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,18,4, 'U006','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,26,5, 'U006','26/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,2,1,  'U007','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,11,2, 'U007','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U007','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,19,4, 'U007','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,27,5, 'U007','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,4,1,  'U008','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,9,2,  'U008','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,16,3, 'U008','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,20,4, 'U008','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,23,5, 'U008','28/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,5,1,  'U009','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,12,2, 'U009','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U009','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U009','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U009','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,25,5, 'U009','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,3,1,  'U012','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,10,2, 'U012','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U012','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U012','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,25,5, 'U012','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,3,1,  'U013','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,11,2, 'U013','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,16,3, 'U013','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,22,4, 'U013','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,25,5, 'U013','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,1,1, 'U014','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,7,2, 'U014','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U014','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,16,3, 'U014','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,22,4, 'U014','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,27,5, 'U014','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,5,1, 'U015','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,12,2, 'U015','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U015','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U015','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U015','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,25,5, 'U015','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,3,1, 'U016','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,10,2, 'U016','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U016','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U016','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,25,5, 'U016','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,3,1, 'U017','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,11,2, 'U017','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,16,3, 'U017','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,22,4, 'U017','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,25,5, 'U017','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,1,1, 'U020','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,7,2, 'U020','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U020','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,16,3, 'U020','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,22,4, 'U020','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,27,5, 'U020','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,6,1, 'U021','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,7,2, 'U021','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U021','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,16,3, 'U021','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,18,4, 'U021','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,23,5, 'U021','28/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,5,1, 'U022','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,7,2, 'U022','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U022','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U022','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,22,4, 'U022','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,27,5, 'U022','27/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,1,1, 'U023','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,8,2, 'U023','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U023','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U023','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,26,5, 'U023','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,5,1,  'U024','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,10,2, 'U024','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U024','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,20,4, 'U024','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,27,5, 'U024','26/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,1,1,  'U025','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,9,2,  'U025','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U025','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U025','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,28,5, 'U025','27/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,1,1,  'U028','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,9,2,  'U028','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U028','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U028','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,23,5, 'U028','27/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,5,1,  'U029','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,8,2,  'U029','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U029','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U029','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,18,4, 'U029','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,26,5, 'U029','26/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,2,1,  'U030','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,11,2, 'U030','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U030','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,19,4, 'U030','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,27,5, 'U030','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,4,1,  'U031','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,9,2,  'U031','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U031','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,20,4, 'U031','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,23,5, 'U031','28/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,5,1,  'U032','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,12,2, 'U032','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U032','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U032','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U032','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,23,5, 'U032','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,3,1,  'U033','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,10,2, 'U033','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U033','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U033','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,25,5, 'U033','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,6,1,  'U036','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,7,2,  'U036','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U036','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,16,3, 'U036','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,18,4, 'U036','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,25,5, 'U036','28/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,5,1,  'U037','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,7,2,  'U037','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U037','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U037','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,22,4, 'U037','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,23,5, 'U037','27/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,1,1,  'U038','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,8,2,  'U038','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U038','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U038','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,23,5, 'U038','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,5,1,  'U039','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,10,2, 'U039','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U039','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,20,4, 'U039','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,23,5, 'U039','26/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,1,1,  'U040','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,9,2,  'U040','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U040','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U040','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,23,5, 'U040','27/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,5,1,  'U041','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,10,2, 'U041','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U041','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,20,4, 'U041','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,27,5, 'U041','26/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,3,1,  'U044','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,9,2,  'U044','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U044','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,20,4, 'U044','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,23,5, 'U044','27/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,1,1,  'U045','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,9,2,  'U045','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U045','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U045','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,28,5, 'U045','27/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,2,1,  'U046','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,8,2,  'U046','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U046','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U046','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,20,4, 'U046','26/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,24,5, 'U046','26/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,2,1,  'U047','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,11,2, 'U047','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U047','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,20,4, 'U047','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,23,5, 'U047','29/07/2010');


INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,3,1,  'U048','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,10,2, 'U048','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U048','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U048','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,25,5, 'U048','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,3,1,  'U049','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,11,2, 'U049','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,16,3, 'U049','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,22,4, 'U049','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,25,5, 'U049','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,1,1,  'U052','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,7,2,  'U052','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U052','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,16,3, 'U052','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,22,4, 'U052','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,27,5, 'U052','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,6,1, 'U053','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,7,2, 'U053','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,13,3, 'U053','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,16,3, 'U053','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,18,4, 'U053','28/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,23,5, 'U053','28/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,5,1, 'U054','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,7,2, 'U054','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,14,3, 'U054','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U054','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,22,4, 'U054','27/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,27,5, 'U054','27/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,1,1, 'U055','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,8,2, 'U055','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,15,3, 'U055','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,21,4, 'U055','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (1,26,5, 'U055','29/07/2010');



INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (2,23,6, 'U012','01/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (2,25,7, 'U012','01/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (2,32,8, 'U012','01/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (2,27,6, 'U006','01/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (2,25,7, 'U006','01/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (2,28,7, 'U006','01/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (2,30,8, 'U006','01/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (2,26,6, 'U007','01/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (2,27,7, 'U007','01/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (2,31,8, 'U007','01/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (2,28,6, 'U008','01/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (2,29,7, 'U008','01/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (2,32,8, 'U008','01/08/2010');



INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,14, 'U001','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U001','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,16, 'U001','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,17, 'U001','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,22,18, 'U001','01/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,14, 'U002','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,33,15, 'U002','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,16, 'U002','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,17, 'U002','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,20,18, 'U002','01/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U003','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,31,15, 'U003','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,16, 'U003','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U003','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,19,18, 'U003','01/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,14, 'U004','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,32,15, 'U004','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,16, 'U004','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,17, 'U004','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,18,18, 'U004','01/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,14, 'U006','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,32,15, 'U006','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,16, 'U006','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,17, 'U006','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,20,18, 'U006','08/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,14, 'U007','09/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,32,15, 'U007','09/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U007','09/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,17, 'U007','09/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,19,18, 'U007','09/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U008','09/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U008','09/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,16, 'U008','09/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U008','09/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,21,18, 'U008','09/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U010','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,29,15, 'U010','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,16, 'U010','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,17, 'U010','01/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,21,18, 'U010','01/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,14, 'U011','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U011','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U011','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,17, 'U011','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,22,18, 'U011','02/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,14, 'U012','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U012','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U012','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,17, 'U012','29/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,19,18, 'U012','29/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U014','09/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,32,15, 'U014','09/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U014','09/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U014','09/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,18,18, 'U014','09/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,14, 'U015','10/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,33,15, 'U015','10/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U015','10/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,17, 'U015','10/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,20,18, 'U015','10/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,14, 'U016','10/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,32,15, 'U016','10/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,16, 'U016','10/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,17, 'U016','10/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,19,18, 'U016','10/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,14, 'U018','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U018','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,16, 'U018','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U018','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,20,18, 'U018','02/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,14, 'U019','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U019','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U019','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U019','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,18,18, 'U019','02/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,14, 'U020','10/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,32,15, 'U020','10/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U020','10/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,17, 'U020','10/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,19,18, 'U020','10/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U022','11/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U022','11/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,16, 'U022','11/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U022','11/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,21,18, 'U022','11/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,14, 'U023','11/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U023','11/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U023','11/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,17, 'U023','11/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,19,18, 'U023','11/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U024','11/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U024','11/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U024','11/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,17, 'U024','11/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,20,18, 'U024','11/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,14, 'U026','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,31,15, 'U026','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,16, 'U026','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,17, 'U026','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,21,18, 'U026','02/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,14, 'U027','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,32,15, 'U027','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,16, 'U027','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,17, 'U027','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,20,18, 'U027','02/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,14, 'U030','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U030','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,16, 'U030','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,17, 'U030','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,22,18, 'U030','12/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,14, 'U031','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,33,15, 'U031','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,16, 'U031','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,17, 'U031','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,20,18, 'U031','12/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U032','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,31,15, 'U032','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,16, 'U032','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U032','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,19,18, 'U032','12/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,14, 'U034','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,33,15, 'U034','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,16, 'U034','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U034','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,19,18, 'U034','02/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U035','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U035','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U035','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,17, 'U035','02/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,20,18, 'U035','02/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,14, 'U036','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,32,15, 'U036','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,16, 'U036','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,17, 'U036','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,18,18, 'U036','12/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U038','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,29,15, 'U038','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,16, 'U038','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,17, 'U038','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,21,18, 'U038','12/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,14, 'U039','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U039','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U039','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,17, 'U039','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,22,18, 'U039','12/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,14, 'U040','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U040','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,16, 'U040','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U040','12/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,20,18, 'U040','12/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,29,14, 'U042','03/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,31,15, 'U042','03/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,16, 'U042','03/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U042','03/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,21,18, 'U042','03/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U043','03/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U043','03/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,16, 'U043','03/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,17, 'U043','03/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,19,18, 'U043','03/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,14, 'U044','13/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U044','13/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U044','13/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U044','13/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,18,18, 'U044','13/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,14, 'U046','13/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,31,15, 'U046','13/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,16, 'U046','13/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,17, 'U046','13/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,21,18, 'U046','13/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,14, 'U047','14/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,32,15, 'U047','14/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,16, 'U047','14/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,17, 'U047','14/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,20,18, 'U047','14/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,14, 'U048','14/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,33,15, 'U048','14/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,16, 'U048','14/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U048','14/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,19,18, 'U048','14/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U050','03/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,32,15, 'U050','03/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U050','03/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U050','03/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,18,18, 'U050','03/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,14, 'U051','05/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,33,15, 'U051','05/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U051','05/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,17, 'U051','05/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,20,18, 'U051','05/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,14, 'U055','05/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,32,15, 'U055','05/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,16, 'U055','05/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,17, 'U055','05/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,22,18, 'U055','05/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,23,14, 'U059','05/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,32,15, 'U059','05/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U059','05/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,17, 'U059','05/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,19,18, 'U059','05/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U061','06/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U061','06/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,16, 'U061','06/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U061','06/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,21,18, 'U061','06/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,14, 'U067','06/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U067','06/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U067','06/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,17, 'U067','06/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,19,18, 'U067','06/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U073','07/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U073','07/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U073','07/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,17, 'U073','07/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,20,18, 'U073','07/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,29,14, 'U079','07/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,31,15, 'U079','07/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,16, 'U079','07/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U079','07/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,21,18, 'U079','07/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U085','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,30,15, 'U085','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,26,16, 'U085','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,17, 'U085','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,19,18, 'U085','08/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,14, 'U091','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,32,15, 'U091','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U091','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,27,17, 'U091','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,18,18, 'U091','08/07/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,28,14, 'U096','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,33,15, 'U096','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,24,16, 'U096','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,25,17, 'U096','08/07/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (4,20,18, 'U096','08/07/2010');






INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,23,19, 'U075','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,32,20, 'U075','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,24,21, 'U075','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,26,22, 'U075','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,19,23, 'U075','09/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,25,19, 'U076','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,30,20, 'U076','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,26,21, 'U076','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,27,22, 'U076','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,21,23, 'U076','09/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,26,19, 'U081','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,30,20, 'U081','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,24,21, 'U081','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,28,22, 'U081','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,19,23, 'U081','09/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,25,19, 'U091','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,32,20, 'U091','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,24,21, 'U091','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,27,22, 'U091','09/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,18,23, 'U091','09/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,28,19, 'U096','10/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,33,20, 'U096','10/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,24,21, 'U096','10/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,25,22, 'U096','10/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,20,23, 'U096','10/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,25,19, 'U084','12/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,29,20, 'U084','12/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,27,21, 'U084','12/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,23,22, 'U084','12/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,21,23, 'U084','12/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,24,19, 'U088','12/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,30,20, 'U088','12/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,24,21, 'U088','12/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,25,22, 'U088','12/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,22,23, 'U088','12/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,28,19, 'U090','12/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,30,20, 'U090','12/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,25,21, 'U090','12/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,27,22, 'U090','12/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,20,23, 'U090','12/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,26,19, 'U093','13/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,30,20, 'U093','13/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,24,21, 'U093','13/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,27,22, 'U093','13/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,18,23, 'U093','13/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,23,19, 'U094','13/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,31,20, 'U094','13/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,28,21, 'U094','13/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,26,22, 'U094','13/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,21,23, 'U094','13/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,27,19, 'U099','14/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,32,20, 'U099','14/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,25,21, 'U099','14/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,26,22, 'U099','14/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,20,23, 'U099','14/08/2010');

INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,24,19, 'U087','14/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,33,20, 'U087','14/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,25,21, 'U087','14/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,27,22, 'U087','14/08/2010');
INSERT INTO `tb_result_fin` (id_enc,  id_opc, id_pre, cod_usu,fecha_res) VALUES (5,19,23, 'U087','14/08/2010');









# DBTools DBMYSQL - MySQL Database Dump
#
CREATE VIEW vw_USUARIOSxDISTRITO
as
select count(*) as 'UsuariosxDistrito',codigodistrito from tb_usuario
group by codigodistrito;

# DBTools DBMYSQL - MySQL Database Dump
#

create view vw_PoblacionxEncuesta
as
select count(e.id_enc) as 'pob_enc',e.id_enc,tit_enc
from tb_usuario u
join tb_encxdist e
on u.codigodistrito=e.codigodistrito
join tb_encuesta en
on e.id_enc=en.id_enc
group by id_enc;

create view reconteo_de_encuestados
as
select sql_no_cache count(0) AS `NroUsuariosxEncuesta`,`tb_result_fin`.`id_enc` AS `id_enc`
from `tb_result_fin`
group by `tb_result_fin`.`id_enc`,`tb_result_fin`.`cod_usu`;

# DBTools DBMYSQL - MySQL Database Dump
#

create view vw_nrocensadosxencuestas
as
select sql_no_cache count(0) AS `NroUsuariosxEncuesta`,`reconteo_de_encuestados`.`id_enc` AS `id_enc`
from `reconteo_de_encuestados`
group by `reconteo_de_encuestados`.`id_enc`;

# DBTools DBMYSQL - MySQL Database Dump
#  AVANCE DE ENCUESTAS

create view vw_ReporteAvance
as
select p.id_enc,tit_enc,pob_enc,NroUsuariosxEncuesta,(NroUsuariosxEncuesta/pob_enc)*100 as 'Avance'
from vw_PoblacionxEncuesta p join
vw_NroCensadosxEncuestas n
on p.id_enc=n.id_enc;

# DBTools DBMYSQL - MySQL Database Dump
#  PARA DETERMINAR 2do REPORTE REPORTE - DISTRITO CON MAYOR AVANCE EN UNA ENCUESTA DETERMINADA

create view vw_DetalleUsuariosxEncuesta
as
select cod_usu,u.codigodistrito,id_enc
from tb_usuario u join
tb_encxdist e
on u.codigodistrito=e.codigodistrito
order by id_enc,codigodistrito,cod_usu;

# DBTools DBMYSQL - MySQL Database Dump
#  5

create view vw_DetalleUsuariosCensadosxEncuestas
as
select sql_no_cache distinct `dbencuesta`.`tb_result_fin`.`id_enc` AS `id_enc`,`dbencuesta`.`tb_result_fin`.`cod_usu` AS `cod_usu`
from `dbencuesta`.`tb_result_fin`
order by `dbencuesta`.`tb_result_fin`.`id_enc`;

# DBTools DBMYSQL - MySQL Database Dump
#  6

create view vw_NroPersonasxDistritoxEncuesta
as
select count(*) as 'NroUsuariosDistrito',id_enc,codigodistrito from vw_DetalleUsuariosxEncuesta
group by codigodistrito,id_enc
order by id_enc,codigodistrito;

# DBTools DBMYSQL - MySQL Database Dump
#  7

create view vw_NroPersonasxDistritoxEncuestados
as
select count(*) as 'NroUsuariosDistritoEncuestados',id_enc,codigodistrito
from vw_DetalleUsuariosCensadosxEncuestas d join tb_usuario u
on d.cod_usu=u.cod_usu
group by codigodistrito,id_enc
order by id_enc,codigodistrito;

# DBTools DBMYSQL - MySQL Database Dump
#  8 AVANCE DISTRITO X ENCUESTA

create view vw_AvanceDistritoxEncuesta
as
select DISTINCT e2.id_enc,e2.codigodistrito,nrousuariosdistrito,nrousuariosdistritoencuestados,
(nrousuariosdistritoencuestados/nrousuariosdistrito)*100 as 'AvanceDistritoEncuesta'
from vw_NroPersonasxDistritoxEncuesta e1
join vw_NroPersonasxDistritoxEncuestados e2
on e1.id_enc=e2.id_enc
and e1.codigodistrito=e2.codigodistrito
order by e2.id_enc,e2.codigodistrito;

#
create view vw_MayorAvanceDistritoxEncuesta
as
select vw.*,d.nombredistrito,tit_enc
from vw_AvanceDistritoxEncuesta vw
join tb_distrito d
on vw.codigodistrito=d.codigodistrito
join tb_encuesta e
on e.id_enc=vw.id_enc;

# DBTools DBMYSQL - MySQL Database Dump
#  9 PARA DETERMINAR ENCUESTADOS POR DIA

create VIEW NroEncuestadosxDia
as
select count(*) as 'NroEncuestados', id_enc,cod_usu,fecha_res
from tb_result_fin
group by fecha_res;



create view vw_reconteo_avance
as
select DISTINCT cod_usu,id_enc,fecha_res from tb_result_fin
order by id_enc,cod_usu asc;

create view vw_reconteo_avance2
as
select  count(cod_usu) as nroencuestados,id_enc,cod_usu,fecha_res
from vw_reconteo_avance
group by id_enc,fecha_res
order by id_enc asc;

create view vw_AvanceDiario
as
select nroencuestados,e.id_enc,vw.fecha_res,e.tit_enc
from tb_encuesta e
join vw_reconteo_avance2  vw
on e.id_enc=vw.id_enc
order by  substring(fecha_res,7,4) asc,substring(fecha_res,4,2) asc,substring(fecha_res,1,2) asc;

# DBTools DBMYSQL - MySQL Database Dump
#  10 PARA DETERMINAR ENCUESTADOS ACuMULADO

CREATE view NroEncuestadosAcumulado
as
select sum(NroEncuestados) as 'NroAcumulado',tit_enc
from vw_avancediario
group by NroEncuestados;

create view vw_tb_encuesta
as
SELECT e.id_enc,e.tit_enc,est_enc,fec_ini_enc,fec_fin_enc,vw.pob_enc
FROM tb_encuesta e
join vw_poblacionxencuesta vw
on e.id_enc=vw.id_enc;



# DBTools DBMYSQL - MySQL Database Dump
#  SP1

CREATE PROCEDURE `Sp_reporte1a`( in id integer)
begin
select p.id_enc,tit_enc,pob_enc,
"Encuestados" as nombre,
NroUsuariosxEncuesta,
(NroUsuariosxEncuesta/pob_enc)*100 as 'Avance'
from vw_PoblacionxEncuesta p join
vw_NroCensadosxEncuestas n
on  p.id_enc=id and  p.id_enc=n.id_enc

union all

select p.id_enc,tit_enc,pob_enc,
"No Encuestados" as nombre,
(pob_enc-NroUsuariosxEncuesta) as NroUsuariosxEncuesta,
(100-(NroUsuariosxEncuesta/pob_enc)*100) as 'Avance'
from vw_PoblacionxEncuesta p join
vw_NroCensadosxEncuestas n
on  p.id_enc=id and  p.id_enc=n.id_enc;

end;

# DBTools DBMYSQL - MySQL Database Dump
#  SP2

CREATE PROCEDURE `Sp_reporte2c`(in id integer)
begin
select vw.*,(vw.nrousuariosdistrito-vw.nrousuariosdistritoencuestados) as nrousuariosdistritonoencuestados
,d.nombredistrito,tit_enc
from vw_AvanceDistritoxEncuesta vw
join tb_distrito d
on vw.codigodistrito=d.codigodistrito
join tb_encuesta e
on e.id_enc=vw.id_enc AND e.id_enc=id  order by vw.avancedistritoencuesta desc ;
end;

# DBTools DBMYSQL - MySQL Database Dump
#  SP3

CREATE PROCEDURE Sp_reporte3( in ide integer)
BEGIN

DECLARE id_d, b,a,suma INT;
DECLARE nom_d VARCHAR(100);
DECLARE loc_d VARCHAR(100);
declare fecha varchar(100);

DECLARE cur_1 CURSOR FOR
SELECT  nroencuestados as id_d,fecha_res as nom_d,tit_enc as loc_d
FROM vw_AvanceDiario where id_enc = ide ;
DECLARE CONTINUE HANDLER FOR NOT FOUNd

SET b = 1;
OPEN cur_1;

SET a = 0;
SET suma = 0;
set fecha = "0";
delete from temporal;
REPEAT

FETCH cur_1 INTO id_d,nom_d,loc_d;

if fecha <> nom_d then
set fecha = nom_d;
set suma = suma + id_d;
insert into temporal (nroencuestados,fecha_res,tit_enc) values(suma,nom_d,loc_d);
end if;

SET a = a + 1;
UNTIL b = 1
END REPEAT;
CLOSE cur_1;
select * from temporal;
END;



CREATE PROCEDURE `Sp_reporte4`(in ide integer)
begin
SELECT  nroencuestados as id_d,fecha_res as nom_d,tit_enc as loc_d FROM vw_AvanceDiario where id_enc=ide;
end;

# DBTools DBMYSQL - MySQL Database Dump
#  Tabla temporal

CREATE TABLE temporal (
  nroencuestados int,
  fecha_res varchar(10),
  tit_enc varchar(100)
)
