No Ubuntu, através do terminal (permissão de administrador é necessária) execute o comando abaixo:

```
sudo apt-get install -y nodejs
```

ATENÇÃO USUÁRIOS LINUX! em algumas distribuições Linux, pode haver um conflito de nomes quando o Node é instalado pelo apt-get. Nesse caso específico, no lugar do binário ser node, ele passa a se chamar nodejs. Isso gera problemas, pois a instrução npm start não funcionará, pois ela procura o binário node e não nodejs. Para resolver, use a seguinte instrução no terminal para subir o servidor:

```
nodejs server
```

Ou no Ubuntu:

```
sudo ln -s /usr/bin/nodejs /usr/bin/node
```

Depois o comando npm start funcionará conforme esperado.

É uma pena haver essa discrepância, mas fica aqui essa dica!
