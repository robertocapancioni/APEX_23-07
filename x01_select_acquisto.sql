
select sum(quantita) quantita, 
       sum(valore) valore
  from x01_acquisto_vw

select zona,
       sum(quantita) quantita, 
       sum(valore) valore
  from x01_acquisto_vw
 group by zona

select fornitore,
       sum(quantita) quantita, 
       sum(valore) valore
  from x01_acquisto_vw
  group by fornitore
  
select zona,
       fornitore,
       sum(quantita) quantita, 
       sum(valore) valore
  from x01_acquisto_vw
 group by zona,
          fornitore  