update x01_prodotto 
   set prezzo_vendita  = round(prezzo_vendita ,2),
       prezzo_acquisto = round(prezzo_acquisto,2)
    
update x01_vendita 
   set quantita = round(quantita,2)

update x01_acquisto 
   set quantita = round(quantita,2)