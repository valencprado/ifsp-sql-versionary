use versionary;

insert into plataforma values('Steam');
insert into plataforma values('GameJolt');

select * from plataforma;

insert into conta values('unicornio212', 'analuiza@gmail.com', 'corinthians_Ap', 1);
insert into conta values('pheunanda', 'pheunanda_oficial@gmail.com', 'Jungkook2013', 2);

select * from conta;

insert into personagem values('Lyra Draven', 'Lyra mora no mundo tecnológico, tem 20 anos e muitos sonhos!');
insert into personagem values('Andres Kommit', 'O mago mais poderoso do mundo de Git');
insert into personagem values('Lysander Draven', 'Irmão da Lyra que mora no mundo mágico e ajudará sua irmã a reconstruir a ponte de Aurora.');

select * from personagem;

insert into fase values('Fase inicial', 0, 1);
insert into fase values('Fase dois', 1, 1);

select * from fase;

insert into jogador values('Ana Luiza', 16, 0, 1);
insert into jogador values('Fernanda', 18, 1, 2);

select * from jogador;

insert into puzzle values('Descrição: Git init', 'Solução: fazer o comando Git init', 1);
insert into puzzle values('Descrição: Git add', 'Solução: fazer o comando Git add', 2);

select * from puzzle;

insert into mapa values('Mundo Tecnológico', 'Cenário do mapa 1', 1);
insert into mapa values('Mundo Mágico', 'Cenário do mapa 2', 2);

select * from mapa;

insert into npc values('Nome_NPC1', 'Plantinha 1', 2);
insert into npc values('Nome_NPC2', 'PCzinho 1', 1);

select * from npc;

