Select * from Categorias order by Nome asc
Select * from Eventos
Select * from Usuarios
Select * from Presencas

select E.*, C.*
from Eventos as E
join Categorias as C
on E.IdCategoria = C.IdCategoria;

Select P.*, U.*, E.*
from Presencas P
join Usuarios U
on P.IdUsuario = U.IdUsuario
join Eventos E
on P.IdEvento = E.IdEvento


Select P.*, U.*, E.*, C.*
from Presencas P
inner join Usuarios U
on P.IdUsuario = U.IdUsuario
inner join Eventos E
on P.IdEvento = E.IdEvento
inner join Categorias C
on E.IdCategoria = C.IdCategoria;

--T_03_SeuNome_DQL.sql


insert into Usuarios (Nome, Email, Senha, Permissao)
values ('Clayton','c.y@mail.com','123456','ADMINISTRADOR')

insert into Usuarios (Nome, Email, Senha, Permissao)
values ('Rayssa','rayssa@gmail.com','r123456','ALUNO')

select * from Usuarios;

insert into Categorias(Nome) 
values('Jogos'),('Meetup'),('Futebol');
select * from Categorias order by IdCategoria asc;

insert into Eventos(Titulo, Descricao, DataEvento, 
					Ativo, Localizacao, IdCategoria)
values ('Campeonato de Ping-pong'
		,'Campeonato entre as turmas de tec. de redes e dev'
		,GETDATE(), 1, 'Alameda Barão de Limeira, 539'
		,1);
select * from Eventos;
-- AAAA-MM-DDThh:mm:ss[.mmm]

insert Eventos(Titulo, Descricao, DataEvento, 
					Localizacao, IdCategoria)
values ('futebol no terraço','Do Nucleo Desenvolvimento Senai'
		,'2019-08-06T18:00:00' , 
		'Alameda Barão de Limeira, 539'
		,2);

insert into Presencas(IdEventos,IdUsuario) values (1,2),(1,1),(2,2)

update Eventos set IdCategoria = 3 where IdEventos = 3

select * from Eventos
