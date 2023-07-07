create or replace package x01_pkg is
function get_vendita (
                      p_cliente_id   in number default null,
                      p_prodotto_id  in number default null
                    ) return clob sql_macro;
function get_acquisto (
                      p_fornitore_id in number default null,
                      p_prodotto_id  in number default null
                    ) return clob sql_macro;
end x01_pkg;
/

create or replace package body x01_pkg is
function get_vendita (
                      p_cliente_id   in number default null,
                      p_prodotto_id  in number default null
                    ) return clob sql_macro
                     is
begin
  RETURN q'{
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
            join x01_tipo_prodotto tp on p.tipo_prodotto_id = tp.id
            where v.cliente_id  = nvl(p_cliente_id,v.cliente_id)
              and v.prodotto_id = nvl(p_prodotto_id,v.prodotto_id)
  }';
end get_vendita;
function get_acquisto (
                      p_fornitore_id in number default null,
                      p_prodotto_id  in number default null
                    ) return clob sql_macro
                     is
begin
  RETURN q'{
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
                join x01_fornitore f on a.fornitore_id = f.id
                join x01_prodotto p on a.prodotto_id = p.id
                join x01_tipo_prodotto tp on p.tipo_prodotto_id = tp.id
               where a.fornitore_id  = nvl(p_fornitore_id,a.fornitore_id)
                 and a.prodotto_id = nvl(p_prodotto_id,a.prodotto_id)
  }';
end get_acquisto;
end x01_pkg;
/