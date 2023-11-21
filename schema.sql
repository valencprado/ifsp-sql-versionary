--cria base de dados
create database versionary; 

--usa base de dados
use master;
use versionary;

--cria tabela
create table plataforma(
--cria a chave primária da tabela
id int primary key identity not null,
nome varchar(50) not null
);

create table conta(
id int primary key identity not null,
usuario varchar(35) not null,
email varchar(50) not null,
senha varchar(20) not null,
plataforma_id int not null,
--cria uma chave estrangeira que referencia outra tabela
foreign key (plataforma_id) references plataforma(id)
);

create table personagem(
id int primary key identity not null,
nome varchar(60) not null,
descricao varchar(150)
);

create table fase(
id int identity unique not null,
descricao varchar(150) not null,
pontuacao int unique not null,
personagem_id int not null,
primary key(id, pontuacao),
foreign key (personagem_id) references personagem(id)
);

create table jogador(
id int primary key identity not null,
nome varchar(50),
idade int,
nivel_fase int,
conta_id int,
foreign key (nivel_fase) references fase(pontuacao),
foreign key (conta_id) references conta(id)
);

create table sprite(
id int primary key identity not null,
nome varchar(40) not null,
resolucao int,
jogador_id int not null,
foreign key (jogador_id) references jogador(id)
);

create table item(
id int primary key identity not null,
nome varchar(40) not null,
descricao varchar(150),
sprite_id int not null,
personagem_id int not null,
foreign key (sprite_id) references sprite(id),
foreign key (personagem_id) references personagem(id),
);

create table puzzle(
id int primary key identity not null,
descricao varchar(150),
solucao varchar(150) not null,
fase_id int not null,
foreign key (fase_id) references fase(id),
);

create table mapa(
id int primary key identity not null,
nome varchar(50) not null,
cenario varchar(50) not null,
fase_id int not null,
foreign key (fase_id) references fase(id),
);

create table npc(
id int primary key identity not null,
nome varchar(50),
descricao varchar(100),
mapa_id int not null,
foreign key (mapa_id) references mapa(id)
);
