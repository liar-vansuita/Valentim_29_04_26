use cinema;

-- 1. Categorias
insert into categoria (descricao_categoria) values 
('Ação'), ('Comédia'), ('Terror'), ('Ficção Científica'), ('Animação');

-- 2. Filmes
insert into filme (nome_filme, faixa_etaria_filme, duracao_filme, status_filme, id_categoria_filme) values 
('Vingadores: Ultimato', 12, 181, 'Em cartaz', 1),
('Minions 2', 0, 87, 'Em cartaz', 5),
('O Exorcista', 18, 122, 'Fora de cartaz', 3),
('Interestelar', 10, 169, 'Em cartaz', 4),
('Se Beber, Não Case', 16, 100, 'Fora de cartaz', 2);

-- 3. Salas
insert into sala (descricao_sala, tipo_sala, capacidade_sala, vip_sala) values 
('Sala Master 01', 'IMAX', 300, false),
('Sala Prime 02', '3D', 50, true),
('Sala Padrão 03', '2D', 150, false),
('Sala Padrão 04', '2D', 150, false);

-- 4. Clientes
insert into cliente (nome_cliente, cpf_cliente, email_cliente, status_cliente) values 
('João Silva', '111.222.333-44', 'joao@email.com', 'ativo'),
('Maria Oliveira', '222.333.444-55', 'maria@email.com', 'ativo'),
('Carlos Souza', '333.444.555-66', 'carlos@email.com', 'inativo');

-- 5. Sessões (Atenção: datas futuras para simular um sistema real)
insert into sessao (data_hora, id_sala, id_filme, status_sessao) values 
('2024-05-20 14:00:00', 1, 1, 'Aberta'),
('2024-05-20 17:00:00', 2, 4, 'Aberta'),
('2024-05-21 20:00:00', 3, 2, 'Aberta');

-- 6. Tipos de Ingresso
insert into tipo_ingresso (descreicao_ingresse, valor_ingresso) values 
('Inteira', 40.00),
('Meia-Entrada', 20.00),
('Promoção Segunda-Feira', 15.00);

-- 7. Pedidos
insert into pedido (id_cliente, satus_pedido) values 
(1, 'Pago'),
(2, 'Aberto'),
(1, 'Pago');

-- 8. Ingressos
insert into ingresso (id_pedido, id_sessao, id_tipo_ingresso, valor_pago, status_ingresso) values 
(1, 1, 1, 40.00, 'Pago'),   -- João comprou inteira para Vingadores
(2, 1, 2, 20.00, 'Reservado'), -- Maria reservou meia para Vingadores
(3, 2, 1, 40.00, 'Pago');   -- João comprou inteira para Interestelar
