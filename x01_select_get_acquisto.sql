
select sum(quantita) quantita, 
       sum(valore) valore
  from x01_pkg.get_acquisto()

select zona,
       sum(quantita) quantita, 
       sum(valore) valore
  from x01_pkg.get_acquisto()
 group by zona

select fornitore,
       sum(quantita) quantita, 
       sum(valore) valore
  from x01_pkg.get_acquisto()
  group by fornitore
  
select zona,
       fornitore,
       sum(quantita) quantita, 
       sum(valore) valore
  from x01_pkg.get_acquisto()
 group by zona,
          fornitore  