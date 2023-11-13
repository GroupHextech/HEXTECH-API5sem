--------------------------------------------------------
--  DDL for View V_STATUS_RESERVAS
--------------------------------------------------------
CREATE OR REPLACE FORCE EDITIONABLE VIEW "ADMIN"."V_STATUS_RESERVAS" ("RES_DATA_HORA", "STA_NOME") DEFAULT COLLATION "USING_NLS_COMP"  AS 
SELECT r.res_data_hora, MAX(s.sta_nome) AS sta_nome
FROM res_reserva r
INNER JOIN sta_status s ON r.sta_id = s.sta_id
GROUP BY r.res_data_hora
;