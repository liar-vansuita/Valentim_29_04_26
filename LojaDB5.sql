select * from cliente;
select * from produto;
select * from venda;
select * from item_venda;

insert into cliente (nome_cliente, email_cliente)
values

('Barb Mokwa', 'mokwa@barb'),
('Emy Drehmer', 'drehmer@emy');


-- Produtos
insert into produto (nome_produto, preco_produto)
values

('Buquê de Flores', 120.00),
('Aliança', 100.00);


-- Venda
insert into venda (data_venda, id_cliente)
values

('2026-02-14', 1),
('2026-04-17', 2);


-- Item Venda
insert into item_venda (id_venda, id_produto, qtd_item, preco_unitario)
values

(1, 1, 1, 100.00),
(2, 2, 1, 120.00);
