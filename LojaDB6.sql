-- Buscar por produto dentro da venda
-- QUERY - select - LEITURA
-- * TODAS AS COLUNAS
-- Select nomes de tables (filtra)

select id_produto, preco_unitario
from item_venda
where id_venda = 2 and id_produto = 2;

-- Pesquisando por nome
  -- * = all
select iv.preco_unitario, p.nome_produto  
from item_venda as iv -- As=apelido
join produto as p on iv.id_produto = p.id_produto  -- juntar
where iv.id_venda = 1 and p.nome_produto like
'%Aliança%';


-- Buscar produtos mais vendidos
select p.nome_produto, sum(iv.qtd_item) as total_vendido
from item_venda iv
join produto p on p.id_produto = iv.qtd_item
group by p.nome_produto;
 