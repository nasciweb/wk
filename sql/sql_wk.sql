#===============================================#
# DESENVOLVEDOR....: ANDRE LUIS NASCIMENTO		#
#===============================================#

#===============================================#
# CRIA SCHEMA BD wk								#
#===============================================#
CREATE SCHEMA `wk`;

#===============================================#
# CRIA TABELA cliente 							#
#===============================================#
CREATE TABLE `wk`.`cliente` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(250) NULL,
  `cidade` VARCHAR(250) NULL,
  `uf` VARCHAR(2) NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB;

#===============================================#
# CRIA TABELA produtos							#
#===============================================#
CREATE TABLE `wk`.`produtos` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(250) NULL,
  `preco_venda` DECIMAL(18,2) NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB;

#===============================================#
# CRIA TABELA pedidos_dados_gerais				#
#===============================================#
CREATE TABLE `wk`.`pedidos_dados_gerais` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `numero_pedido` INT NOT NULL, 
  `data_emissao` VARCHAR(250) NULL,
  `codigo_cliente` INT NOT NULL,
  `valor_total` DECIMAL(18,2) NULL,
  PRIMARY KEY (`codigo`),
  FOREIGN KEY (`codigo_cliente`) references cliente(codigo))
ENGINE = InnoDB;

#===============================================#
# CRIA TABELA pedidos_produtos 					#
#===============================================#
CREATE TABLE `wk`.`pedidos_produtos` (
  `mumero_pedido` INT NOT NULL AUTO_INCREMENT,,
  `cod_cliente` INT NOT NULL,  
  `cod_produto` INT NOT NULL,
  `quantidade` INT NOT NULL,
  `valor_unitario` DECIMAL(18,2) NULL,
  `valor_total` DECIMAL(18,2) NOT NULL,
  PRIMARY KEY (`codigo`),
  FOREIGN KEY (`cod_produto`) REFERENCES produtos(codigo),
  FOREIGN KEY (`cod_cliente`) REFERENCES cliente(codigo),
  FOREIGN KEY (`numero_pedido`) REFERENCES cliente(numero_pedido))
ENGINE = InnoDB;

#=====================================================#
# INSERE REGISTROS NAS TABELAS cliente E produtos 	  #
#=====================================================#
INSERT INTO cliente (codigo, nome, cidade, uf) 
	  VALUE ('1','ANDRE LUIS NASCIMENTO','CUIABA','MT'),
            ('2','AMANDA SANTANA SUKERT NASCIMENTO','CUIABA','MT'),
            ('3','RONALDO NAZARIO','RIO DE JANEIRO','RJ'),
            ('4','MARCOS EVANGELISTA DE MORAIS','ITAQUAQUECETUBA','SP'),
            ('5','RONALDO DE ASSIS MOREIRA','PORTO ALEGRE','RS'),
            ('6','CELINA LOCKS','CURITIBA','PR'),
            ('7','LARISSA MANOELA','GUARAPUAVA','PR'),
            ('8','MAISA DA SILVA ANDRADE','SAO BERNARDO DO CAMPO','SP'),
            ('9','CAMILA QUEIROZ','RIBEIRAO PRETO','SP'),
            ('10','KLARA CASTANHO','SANTO ANDRE','SP'),
            ('11','MATEUS SOLANO','BRASILA','DF'),
            ('12','WALTER CASAGRANDE','SAO PAULO','MT'),
            ('13','PAULO ROBERTO FALCAO','ABELARDO LUZ','SC'),
            ('14','JOSE FERREIRA NETO','SANTO ANTONIO DE POSSE','SP'),
            ('15','ANA PAULA HENKEL','LAVRAS','MG'),
            ('16','LEILA GOMES DE BARROS REGO','BRASILIA','DF'),
            ('17','ROSAMARIA MONTIBELLER','NOVA TRENTO','SC'),
            ('18','CANDIDO MARIANO DA SILVA RONDON','MIMOSO','MT'),
            ('19','THYAGO MOURAO','CUIABA','MT'),
            ('20','ROMARIO DE SOUZA FARIA','RIO DE JANEIRO','RJ');
            
            
INSERT INTO produtos (codigo, descricao, preco_venda) 
	  VALUE ('1','APPLE IPHONE 13 PRO MAX 1TB','12301.54'),
            ('2','APPLE IPHONE 13 PRO MAX 128GB','8704.71'),
            ('3','SAMSUNG GALAXY S20 4G 128GB CINZA','2699.10'),
            ('4','SAMSUNG GALAXY M52','1571.74'),
            ('5','NOTEBOOK DELL INSPIRON 15 3000 I5','3985.00'),
            ('6','NOTEBOOK DELL INSPIRON 15 3000 I7','5001.00'),
            ('7','NOTEBOOK DELL INSPIRON 15 PENTIUM GOLD','2997.00'),
            ('8','NOTEBOOK DELL LATITUDE','7983.00'),
            ('9','MACBOOK AIR 13,3','8648.07'),
            ('10','MACBOOK AIR 13 M1','7799.00'),
            ('11','CAMISETA NERD LANTERNA VERDE','25.90'),
            ('12','CAMISETA NERD JOBS','25.90'),
            ('13','CAMISETA NERD HULK','25.90'),
            ('14','CAMISETA NERD MARIO','25.90'),
            ('15','CAMISETA NERD MICROSOFT','25.90'),
            ('16','CAMISETA NERD DELPHI','25.90'),
            ('17','CAMISETA NERD MYSQL','25.90'),
            ('18','CAMISETA NERD DOCKER','25.90'),
            ('19','CANECA DELPHI','40.00'),
            ('20','CANECA MYSQL','40.00');            