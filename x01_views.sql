create or replace view x01_acquisto_vw as
select a.id,
       a.fornitore_id,
       f.fornitore,
       f.zona,  
       a.prodotto_id,
       p.prodotto,
       p.tipo_prodotto_id,
       tp.tipo_prodotto,
       a.data,
       a.quantita,
       a.quantita * p.prezzo_acquisto valore
  from x01_acquisto a
  join x01_fornitore f      on a.fornitore_id     = f.id
  join x01_prodotto p       on a.prodotto_id      = p.id
  join x01_tipo_prodotto tp on p.tipo_prodotto_id = tp.id;


create or replace view x01_vendita_vw as
select v.id,
       v.cliente_id,
       c.cliente,
       c.zona,
       v.prodotto_id,
       p.prodotto,
       p.tipo_prodotto_id,
       tp.tipo_prodotto,
       v.data,
       v.quantita,
       v.quantita * p.prezzo_vendita valore
  from x01_vendita v
  join x01_cliente c on v.cliente_id = c.id
  join x01_prodotto p on v.prodotto_id = p.id
  join x01_tipo_prodotto tp on p.tipo_prodotto_id = tp.id;