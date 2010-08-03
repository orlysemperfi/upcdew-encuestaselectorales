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

