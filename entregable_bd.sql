#*******************************************************************************************
#	CREACIÓN Y USO DE LA BASE DE DATOS 'CiclosInformatica'
#*******************************************************************************************
drop database if exists CiclosInformatica;
create database CiclosInformatica;
use CiclosInformatica;
#*******************************************************************************************
#	CREACIÓN DE LAS TABLAS DE LA BASE DE DATOS
create table Modulo (
idModulo		int				auto_increment,	
sigla			varchar(5),
codigo			varchar(6),	
nombre			text,
horas			int,			
curso			int,			
ciclo			text,
primary key(idModulo)
) auto_increment=50;

#alter table Modulo add constraint clave_primaria primary key(idModulo);

alter table Modulo	 	add constraint sigla_no_nula 		check(sigla is not null),
						add constraint codigo_no_nula 		check(codigo is not null),
                        add constraint nombre_no_nula 		check(nombre is not null),
                        add constraint horas_no_nula 		check(horas is not null),

						add constraint sigla_no_vacia		check(sigla !=''),
						add constraint codigo_no_vacia		check(codigo !=''),
                        add constraint nombre_no_vacia		check(nombre !=''),

                        add constraint horas_positiva		check(horas>0);
                        

 
#*******************************************************************************************
#		TABLA Modulo
#*******************************************************************************************
#		idModulo		int					auto_increment desde 50
#		sigla			varchar(5)	
#		codigo			varchar(6)	
#		nombre			text		
#		horas			int			
#		curso			int			
#		ciclo			text		
#
#		Llave primaria 			->	idModulo
#		Valor único    			->	codigo
#		Comprobación de Valor no nulo	->	sigla, codigo, nombre, horas
#		Comprobación de Valor no vacío	->	sigla, codigo, nombre
#		Comprobación de Valor positivo	->	horas
#		Índice				->	codigo
#*******************************************************************************************
create index idx_codigo on Modulo(codigo);
show indexes from modulo;
#*******************************************************************************************
#	AÑADIMOS LOS DATOS
#*******************************************************************************************
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IC','MP3009','Ciencias aplicadas I ',175,	1,'Informática e comunicacións');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IC','MP3011','Comunicación e sociedade I ',206,	1,'Informática e comunicacións');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IC','MP3015',' Equipamentos eléctricos e electrónicos ',233,	1,'Informática e comunicacións');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IC','MP3029',' Montaxe e mantemento de sistemas e compoñentes informáticos ',296,	1,'Informática e comunicacións');            
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IC','MP3019','Ciencias aplicadas II ',162,	2,'Informática e comunicacións');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IC','MP3012','Comunicación e sociedade II ',135,	2,'Informática e comunicacións');            
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IC','MP3032','Formación en centros de traballo ',320,	2,'Informática e comunicacións');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IC','MP3016','Instalación e mantemento de redes para transmisión de datos',206,	2,'Informática e comunicacións');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IC','MP3030','Operacións auxiliares para a configuración e a explotación',205,	2,'Informática e comunicacións');
#*******************************************************************************************
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IO','MP3009','Ciencias aplicadas I ',175,	1,'Informática de oficina ');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IO','MP3011','Comunicación e sociedade I ',206,	1,'Informática de oficina ');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IO','MP3015',' Equipamentos eléctricos e electrónicos ',233,	1,'Informática de oficina ');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IO','MP3029',' Montaxe e mantemento de sistemas e compoñentes informáticos ',296,	1,'Informática de oficina ');            
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IO','MP3019','Ciencias aplicadas II ',162,	2,'Informática de oficina ');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IO','MP3012','Comunicación e sociedade II ',135,	2,'Informática de oficina ');            
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IO','MP3032','Formación en centros de traballo ',320,	2,'Informática de oficina ');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IO','MP3016','Instalación e mantemento de redes para transmisión de datos',206,	2,'Informática de oficina ');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('IO','MP3030','Operacións auxiliares para a configuración e a explotación',205,	2,'Informática de oficina ');
#*******************************************************************************************
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('SMR','MP0223','Aplicacións ofimáticas',240,	1,'Sistemas microinformáticos e redes');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('SMR','MP0229','Formación e orientación laboral ',107,	1,'Sistemas microinformáticos e redes');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('SMR','MP0221',' Montaxe e mantemento de equipamentos ',240,	1,'Sistemas microinformáticos e redes');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('SMR','MP0225','Redes locais',213,	1,'Sistemas microinformáticos e redes');            
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('SMR','MP0222','Sistemas operativos monoposto',160,	1,'Sistemas microinformáticos e redes');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('SMR','MP0228',' Aplicacións web  ',123,	2,'Sistemas microinformáticos e redes');            
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('SMR','MP0230',' Empresa e iniciativa emprendedora ',53,	2,'Sistemas microinformáticos e redes');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('SMR','MP0231',' Formación en centros de traballo ',410,	2,'Sistemas microinformáticos e redes');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('SMR','MP0226',' Seguridade informática ',140,	2,'Sistemas microinformáticos e redes');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('SMR','MP0227','  Servizos en rede ',157,	2,'Sistemas microinformáticos e redes');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('SMR','MP0224','Sistemas operativos en rede ',157,	2,'Sistemas microinformáticos e redes');
#*******************************************************************************************
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0380',' Formación e orientación laboral ',107,	1,'Administración de sistemas informáticos en rede');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0371',' Fundamentos de hardware ',107,	1,'Administración de sistemas informáticos en rede');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0369','  Implantación de sistemas operativos  ',213,	1,'Administración de sistemas informáticos en rede');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0373',' Linguaxes de marcas e sistemas de xestión de información ',133,	1,'Administración de sistemas informáticos en rede');            
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0370',' Planificación e administración de redes ',213,	1,'Administración de sistemas informáticos en rede');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0372',' Xestión de bases de datos  ',187,	1,'Administración de sistemas informáticos en rede');            
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0374','  Administración de sistemas operativos  ',140,	2,'Administración de sistemas informáticos en rede');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0377','  Administración de sistemas xestores de bases de datos  ',70,	2,'Administración de sistemas informáticos en rede');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0381','  Empresa e iniciativa emprendedora  ',53,	2,'Administración de sistemas informáticos en rede');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0382','  Formación en centros de traballo ',384,	2,'Administración de sistemas informáticos en rede');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0376',' Implantación de aplicacións web ',122,	2,'Administración de sistemas informáticos en rede');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0379',' Proxecto de administración de sistemas informáticos en rede  ',26,	2,'Administración de sistemas informáticos en rede');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0378','  Seguridade e alta dispoñibilidade  ',105,	2,'Administración de sistemas informáticos en rede');
INSERT INTO Modulo (`sigla`,`codigo`,`nombre`,`horas`,`curso`,`ciclo`) 
			VALUES ('ASIR','MP0375',' Servizos de rede e internet ',140,	2,'Administración de sistemas informáticos en rede');
#*******************************************************************************************


#*******************************************************************************************
#	CREAMOS LOS GRUPOS DE USUARIOS:	Direccion, Alumnado, Profesorado
#		En Alumnado -> AlumnadoDAM, AlumnadoDAW, AlumnadoASIR, AlumnadoSMR, AlumnadoIO, AlumnadoIC
#		En Profesorado -> ProfesoradoDAM, ProfesoradoDAW, ProfesoradoASIR, ProfesoradoSMR, ProfesoradoIO, ProfesoradoIC
#-------------------------------------------------------------------------------------------
#	DROP ROLE IF EXISTS <Rol1>, <Rol2>, ..., <RolN>;
#	CREATE ROLE 	    <Rol1>, <Rol2>, ..., <RolN>;
#*******************************************************************************************

#*******************************************************************************************
#	ASIGNAMOS LOS MISMOS PRIVILEGIOS A LOS COMPONENTES DE LOS GRUPOS ALUMNADO Y PROFESORADO
#-------------------------------------------------------------------------------------------
#	GRANT <RolGrupo> TO <RolComponente1>, <RolComponente2>, ..., <RolComponenteN>;
#*******************************************************************************************

#*******************************************************************************************
#	CREAMOS LAS VISTAS ASOCIADAS A CADA CICLO FORMATIVO
#-------------------------------------------------------------------------------------------
#	DROP VIEW IF EXISTS ..., ..., ...;
#	CREATE VIEW ... AS SELECT ...;
#*******************************************************************************************

#*******************************************************************************************
#	ASIGNAMOS LOS PERMISOS A DIRECCIÓN Y A LOS GRUPOS DEL PROFESORADO
#-------------------------------------------------------------------------------------------
#	GRANT <permiso> ON <tabla> TO <Rol1>, <Rol2>, ..., <Rol3>;
#*******************************************************************************************

#*******************************************************************************************
#	CREAMOS LOS USUARIOS DE DIRECCIÓN CON DEFAULT ROLE
#-------------------------------------------------------------------------------------------
#	DROP USER IF EXISTS <direccion1>, <direccion2>, ..., <direccionN>;
#	CREATE USER <direccion1> IDENTIFIED BY 'dir' DEFAULT ROLE 'Rol1';
#	...........................
#	CREATE USER <direccionN> IDENTIFIED BY 'dir' DEFAULT ROLE 'Rol1';
#*******************************************************************************************

#*******************************************************************************************
#	CREAMOS LOS USUARIOS DEL PROFESORADO CON DEFAULT ROLE
#-------------------------------------------------------------------------------------------
#	DROP USER IF EXISTS <profesor1>, <profesor2>, ..., <profesorN>;
#	CREATE USER <profesor1> IDENTIFIED BY 'pro' DEFAULT ROLE 'Rol2';
#	...........................
#	CREATE USER <profesorN> IDENTIFIED BY 'pro' DEFAULT ROLE 'Rol2';
#*******************************************************************************************

#*******************************************************************************************
#	DAMOS LOS RESPECTIVOS PRIVILEGIOS A LOS GRUPOS DEL ALUMNADO
#-------------------------------------------------------------------------------------------
#	GRANT <permiso> ON <tabla> TO <Rol1>;
#	---------------------
#	GRANT <permiso> ON <tabla> TO <RolN>;
#*******************************************************************************************

#*******************************************************************************************
#	CREAMOS LOS USUARIOS, ASIGNÁNDOLES LOS ROLES CORRESPONDIENTES
#-------------------------------------------------------------------------------------------
#	DROP USER IF EXISTS <usuario1>, <usuario2>, ..., <usuarioN>;
#	CREATE USER <usuario1> IDENTIFIED BY 'use' DEFAULT ROLE 'Rol3';
#	...........................
#	CREATE USER <usuarioN> IDENTIFIED BY 'use' DEFAULT ROLE 'Rol3';
#*******************************************************************************************

#*******************************************************************************************
#*******************************************************************************************