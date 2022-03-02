```cs
                IEnumerable<Cinema> query = from cinema in cinemas
                        where cinema.Sessoes.Any(sessao =>
                        sessao.Filme.Titulo == nomeDoFilme)
                        select cinema;

                cinemas = query.ToList();
```
