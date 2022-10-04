//relatorios (3 parametro e 3 sem)

select count(*) as total_transportes from transporte; 
select count(*) as total_viagens from viagem;
select count(*) as total_destino from destino;

select count(*) as total_viagens from viagem where DuracaoViagem between (?) and (?);
select v.* from viagem v where v.Valor >= (?)
select p.* from destino d join pTuristicoDestino p on d.Cidade = p.Cidade where d.Cidade = (?)