CREATE DATABASE api;
use api;

# CONSULTA USADA PARA CRIAR A VIEW
select r.dtaemissao, r.dtaentrega, r.mes, r.ano, f.MUN as 'Fabrica', c.idcliente as 'Cod Cliente', c.MUN as 'Cliente', r.Incoterm, r.Veiculo,
r.Qtdpallets, r.QtdTransp, r.valorfrete as 'Frete', r.Dist from rotas r
INNER JOIN fabricas f
on f.idfabricas = r.idfabrica
INNER JOIN clientes c 
ON r.idcliente = c.idcliente;

# SCRIPT DE VERIFICAÇÃO DE FOB 
USE api;
select * from rotas_view
where Incoterm = 'FOB' AND Frete > 0;

select *from cliente;

select * from cliente;

select *from dependente;

select idade,nome from dependente;

select nome,idade,ID_cliente from dependente
where idade >10 and id_cliente=2;

Select d.nome as 'nome dependente', d.idade, c.nome from dependente as d
inner join cliente as c 
on d.id_cliente = c.id
where d.idade>10;

use ana;

select *from rotas;
select count(veiculo) from rotas;

ALTER TABLE rotas
CHANGE `dtemissao` dtaemissao date;

ALTER TABLE rotas
CHANGE `Dt.Entrega` dtaentrega date;

ALTER TABLE rotas
CHANGE `Mes.Base` mes integer;

ALTER TABLE rotas
CHANGE `Ano.Exec` ano integer;

ALTER TABLE rotas
CHANGE `CO.Fabrica` codfabrica integer;

ALTER TABLE rotas
CHANGE `CO.Cliente` codcliente integer;

ALTER TABLE rotas
CHANGE `Qtd/
pallets` qtdpallets integer;

ALTER TABLE rotas
CHANGE `Qtd.Transp` QtdTransp integer;

ALTER TABLE rotas
CHANGE `Vlr.Frete` valorfrete integer;

#TELA 1 BASEADA NO FOB INDEVIDO 
select sum(valorfrete) from rotas
where Incoterm = 'FOB' AND valorfrete >0;

select count(valorfrete) from rotas
where Incoterm = 'FOB' AND valorfrete >0;


#TELA 2 
select *from rotas
where Veiculo= 'P12' AND QtdTransp <1800;

select *from rotas
where Veiculo= 'P24' AND QtdTransp <3600;

select *from rotas;

select r.dtaemissao,r.dtaentrega, r.mes, r.ano, r.Incoterm, f.NO_MUN as 'fabrica', r.codcliente,c.MUN as 'cliente',r.Incoterm,r.Veiculo,r.qtdpallets, r.QtdTransp, r.valorfrete, r.Dist from rotas as r
inner join clientes as c 
on c.codcliente = r.codcliente
inner join fabricas AS F
on F.codfabrica = r.codfabrica;

select *from clientes;


select r.dtaemissao, r.mes, r.ano, r.Incoterm, r.QtdTransp, F.NO_MUN, r.valorfrete, r.Dist from rotas as r
inner join fabricas AS F
on F.codfabrica = r.codfabrica;

select *from clientes;


ALTER TABLE clientes
CHANGE `CO.Cliente` codcliente integer;

ALTER TABLE fabricas
CHANGE `CO.Fabrica` codfabrica integer;

CREATE DATABASE api;
use api;

# CONSULTA USADA PARA CRIAR A VIEW
select r.dtaemissao, r.dtaentrega, r.mes, r.ano, f.MUN as 'Fabrica', c.idcliente as 'Cod Cliente', c.MUN as 'Cliente', r.Incoterm, r.Veiculo,
r.Qtdpallets, r.QtdTransp, r.valorfrete as 'Frete', r.Dist from rotas r
INNER JOIN fabricas f
on f.idfabricas = r.idfabrica
INNER JOIN clientes c 
ON r.idcliente = c.idcliente;

# SCRIPT DE VERIFICAÇÃO DE FOB 
USE api;
select * from rotas_view
where Incoterm = 'FOB' AND Frete > 0;

select nome,idade from dependente
where idade <10;



