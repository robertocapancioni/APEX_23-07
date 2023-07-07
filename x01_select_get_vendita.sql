
select sum(quantita) quantita, 
       sum(valore) valore
  from x01_pkg.get_vendita()

select zona,
       sum(quantita) quantita, 
       sum(valore) valore
  from x01_pkg.get_vendita()
 group by zona

select cliente,
       sum(quantita) quantita, 
       sum(valore) valore
  from x01_pkg.get_vendita()
  group by cliente
  
select zona,
       cliente,
       sum(quantita) quantita, 
       sum(valore) valore
  from x01_pkg.get_vendita()
 group by zona,
          cliente  

