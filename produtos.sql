create table produtos(
	idproduto int not null auto_increment,
    nome varchar(50) not null,
    espaco float not null,
    valor float not null,
    quantidade int not null,
    constraint pk_produtos_idproduto primary key (idproduto)
);

insert into produtos (nome, espaco, valor, quantidade) values ('Geladeira Brastemp', 1.155, 4859.10, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('PS5', 0.0105, 4999, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('TV 65', 0.370, 4099, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Fogão Brastemp', 0.516, 4859.10, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Lava louças', 0.303, 3999, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Ar condicionado', 0.7259, 3379, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Sofá', 2.898, 2492.49, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Conjunto sala de jantar', 1.152, 1488.02, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Painel para TV', 1.294, 503.39, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Purificador de água', 0.028, 1199, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Máquina de lavar roupa', 0.518, 1899.05, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Cama de solteiro', 1.278, 930.90, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Cama de casal', 2.158, 1551.03, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Notebook Lenovo', 0.0018, 3699, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Notebook Dell', 0.0019, 3899, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Notebook Acer', 0.0016, 3609.05, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Iphone 11', 0.00091, 4463.07, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Galaxy S20 Ultra', 0.00011, 5299, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Microondas Electrolux', 0.0865, 2429.1, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Ferro de passar roupa', 0.0259, 1481.89, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Aspirador de pó', 0.0054, 2165.89, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Chuveiro', 0.0107, 388.23, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Ventilador', 0.4, 284.90, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Guarda roupa', 3.348, 1367.90, 10);
insert into produtos (nome, espaco, valor, quantidade) values ('Cafeteira', 0.0341, 3484.19, 10);