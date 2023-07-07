
select sum(quantita) quantita, 
       sum(valore) valore
  from x01_vendita_vw

select zona,
       sum(quantita) quantita, 
       sum(valore) valore
  from x01_vendita_vw
 group by zona

select cliente,
       sum(quantita) quantita, 
       sum(valore) valore
  from x01_vendita_vw
  group by cliente
  
select zona,
       cliente,
       sum(quantita) quantita, 
       sum(valore) valore
  from x01_vendita_vw
 group by zona,
          cliente  

