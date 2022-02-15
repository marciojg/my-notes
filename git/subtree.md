Manter projeto git dentro de outro. ex: https://github.com/marciojg/my-courses/tree/imersao-fullcycle-6-kafka-nestjs-next-js-go

A diferença dele para o submodule é que ele trás o código fonte, já o submodule tras a referencia do branch remota.

```
git subtree add --prefix {local directory being pulled into} {remote repo URL} {remote branch} --{commits strategy}
```

For example:

```
git subtree add --prefix subtreeDirectory https://github.com/newfivefour/vimrc.git master --squash
```

Exemplo com subdiretório

```
# Trazendo todos os commits
git subtree add --prefix o-que-eu-fiz/nestjs ~/projects/imersao-fullcycle/o-que-eu-fiz/nestjs master

# Fazendo squash dos commits
git subtree add --prefix o-que-eu-fiz/nestjs ~/projects/imersao-fullcycle/o-que-eu-fiz/nestjs master --squash
```

Cria um remoto no repositório raiz

```
git remote add mano-que-fez-imersao ~/projects/imersao-fullcycle/mano-que-fez-imersao
```


### Referencia
https://gist.github.com/SKempin/b7857a6ff6bddb05717cc17a44091202#file-git-subtree-basics-md
