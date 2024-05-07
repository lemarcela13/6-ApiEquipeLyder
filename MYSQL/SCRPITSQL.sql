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
