select * from x01_pkg.get_vendita();
select * from x01_pkg.get_vendita(p_cliente_id  =>  3);
select * from x01_pkg.get_vendita(p_prodotto_id => 68);
select * from x01_pkg.get_vendita(p_cliente_id  =>  3,
                                  p_prodotto_id => 68);
                                  
                                  
select * from x01_pkg.get_acquisto();                   
select * from x01_pkg.get_acquisto(p_fornitore_id =>  8);
select * from x01_pkg.get_acquisto(p_prodotto_id  => 68);
select * from x01_pkg.get_acquisto(p_fornitore_id =>  8,
                                   p_prodotto_id  => 68);