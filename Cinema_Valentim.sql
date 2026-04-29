create database cinema;
use cinema;

create table cliente (
	id_cliente int primary key auto_increment,
    nome_cliente varchar (100) not null,
    cpf_cliente varchar (15) not null unique,
    email_cliente varchar (100) not null unique,
    status_cliente enum ('ativo', 'inativo')
);

create table categoria(
	id_categoria int primary key auto_increment,
    descricao_categoria varchar (30) not null
);

create table filme(
	id_filme int primary key auto_increment,
    nome_filme varchar (100),
    faixa_etaria_filme int check(faixa_etaria_filme >= 0),
    duracao_filme int not null, -- Em MINUTOS
    status_filme enum ('Em cartaz', 'Fora de cartaz'),
	id_categoria_filme int not null, 
    foreign key (id_categoria_filme)
	references categoria(id_categoria)
);

create table sala (
	id_sala int primary key auto_increment,
    descricao_sala text not null,
    tipo_sala enum ('2D', '3D', 'IMAX') default '2D',
    capacidade_sala int not null
	check (capacidade_sala > 0),
	vip_sala boolean default false
);

create table sessao(
	id_sessao int primary key auto_increment,
    data_hora datetime not null default current_timestamp,
    id_sala int not null,
    foreign key (id_sala)
    references sala(id_sala),
    id_filme int not null,
    foreign key (id_filme)
    references filme (id_filme),
    status_sessao enum ('Aberta', 'Encerrada', 'Cancelada') default 'Aberta',
	unique(data_hora, id_sala) -- evita conflito de horário na mesma sala 
	
);

create table tipo_ingresso(
	id_tipo_ingresso int primary key auto_increment,
    descreicao_ingresse varchar (50) not null,
    valor_ingresso decimal (5,2) not null check(valor_ingresso >= 0)
);

create table pedido (
	id_pedido int primary key auto_increment,
    data_hora datetime default current_timestamp,
    id_cliente int,
    satus_pedido enum ('Aberto', 'Pago', 'Cancelado') default 'Aberto',
    foreign key (id_cliente) references cliente (id_cliente)
);

create table ingresso(
	id_ingresso int primary key auto_increment,
    id_pedido int not null,
    id_sessao int not null,
    id_tipo_ingresso int not null,
	valor_pago decimal (5,2) not null,
	status_ingresso enum ('Reservado', 'Pago', 'Cancelado') default 'Reservado',
    foreign key (id_pedido) References pedido (id_pedido),
    foreign key (id_sessao) References sessao (id_sessao),
    foreign key (id_tipo_ingresso) References tipo_ingresso (id_tipo_ingresso)
);

