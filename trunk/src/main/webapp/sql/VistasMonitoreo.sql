

--PARA DETERMINAR 1ER REPORTE - AVANCE DE ENCUESTAS

--1
CREATE VIEW vw_USUARIOSxDISTRITO
as
select count(*) as 'UsuariosxDistrito',codigodistrito from tb_usuario
group by codigodistrito;



------
create view vw_PoblacionxEncuesta
as
select id_enc,tit_enc,pob_enc from tb_encuesta;



--2
create view vw_NroCensadosxEncuestas
as
select count(*) as 'NroUsuariosxEncuesta',id_enc from tb_result_fin
group by id_enc;



--3***** AVANCE DE ENCUESTAS**************


create view vw_ReporteAvance
as
select p.id_enc,tit_enc,pob_enc,NroUsuariosxEncuesta,(NroUsuariosxEncuesta/pob_enc)*100 as 'Avance'
from vw_PoblacionxEncuesta p join
vw_NroCensadosxEncuestas n
on p.id_enc=n.id_enc

--****************************

--PARA DETERMINAR 2do REPORTE REPORTE - DISTRITO CON MAYOR AVANCE EN UNA ENCUESTA DETERMINADA

--4
create view vw_DetalleUsuariosxEncuesta
as
select cod_usu,u.codigodistrito,id_enc
from tb_usuario u join
tb_encxdist e
on u.codigodistrito=e.codigodistrito
order by id_enc,codigodistrito,cod_usu;

--5
create view vw_DetalleUsuariosCensadosxEncuestas
as
select id_enc,cod_usu from tb_result_fin
order by id_enc;

--6
create view vw_NroPersonasxDistritoxEncuesta 
as
select count(*) as 'NroUsuariosDistrito',id_enc,codigodistrito from vw_DetalleUsuariosxEncuesta
group by codigodistrito,id_enc
order by id_enc,codigodistrito;

--7

create view vw_NroPersonasxDistritoxEncuestados 
as
select count(*) as 'NroUsuariosDistritoEncuestados',id_enc,codigodistrito
from vw_DetalleUsuariosCensadosxEncuestas d join tb_usuario u
on d.cod_usu=u.cod_usu
group by codigodistrito,id_enc
order by id_enc,codigodistrito;

--******8 AVANCE DISTRITO X ENCUESTA

create view vw_AvanceDistritoxEncuesta
as
select DISTINCT e2.id_enc,e2.codigodistrito,nrousuariosdistrito,nrousuariosdistritoencuestados, 
(nrousuariosdistritoencuestados/nrousuariosdistrito)*100 as 'AvanceDistritoEncuesta'
from vw_NroPersonasxDistritoxEncuesta e1
join vw_NroPersonasxDistritoxEncuestados e2
on e1.id_enc=e2.id_enc
and e1.codigodistrito=e2.codigodistrito
order by e2.id_enc,e2.codigodistrito

create view vw_MayorAvanceDistritoxEncuesta
as
select vw.*,d.nombredistrito,tit_enc
from vw_AvanceDistritoxEncuesta vw
join tb_distrito d
on vw.codigodistrito=d.codigodistrito
join tb_encuesta e
on e.id_enc=vw.id_enc;


--9*****PARA DETERMINAR ENCUESTADOS POR DIA

create VIEW NroEncuestadosxDia
as
select count(*) as 'NroEncuestados', id_enc,cod_usu,fecha_res
from tb_result_fin 
group by fecha_res

create view vw_AvanceDiario
as
select vw.*,e.tit_enc
from NroEncuestadosxDia vw
join tb_encuesta e
on e.id_enc=vw.id_enc;


--10 PARA DETERMINAR ENCUESTADOS ACuMULADO

CREATE view NroEncuestadosAcumulado
as
select sum(NroEncuestados) as 'NroAcumulado',tit_enc from vw_AvanceDiario
