-- Consulta 1
select Nome,Ano from Filmes;
-- Consulta 2
select Nome,Ano,Duracao  from Filmes ORDER BY Ano ASC;
-- Consulta 3
select Nome,Ano,Duracao  from Filmes WHERE Nome = "De Volta para o Futuro";
-- Consulta 4
select Nome,Ano,Duracao  from Filmes WHERE Ano = 1997;
-- Consulta 5
select Nome,Ano,Duracao  from Filmes WHERE Ano > 2000;
-- Consulta 6
select Nome,Ano,Duracao  from Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;
-- Consulta 7
select Ano, COUNT(Ano) AS Quantidade 
from Filmes 
group by Ano   
order by COUNT(Ano) DESC
-- Consulta 8
select Id, PrimeiroNome, UltimoNome, Genero from Atores
where Genero = "M"
-- Consulta 9
select Id, PrimeiroNome, UltimoNome, Genero from Atores
where Genero = "F"
order by PrimeiroNome ASC;
-- Consulta 10
select * from Filmes inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
-- Consulta 11
select * from Filmes inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme inner join Generos on FilmesGenero.IdGenero = Generos.Id
where  Genero = "Mistério"
-- Consulta 12
select Nome, PrimeiroNome, UltimoNome, Papel from Filmes inner join ElencoFilme on Filmes.Id = ElencoFilme.IdFilme inner join Atores on ElencoFilme.IdAtor = Atores.Id
