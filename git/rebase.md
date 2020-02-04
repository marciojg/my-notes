#sincronizar com o origin
```
git rebase -i master
esq :wq
git add .
git rebase --continue
git push --force-with-lease
```
#deixar apenas os commits úteis mudando o texto do commit - squash
```
git rebase -i master
a #(digita a)
#escolhendo o commit que quer "remover" a msg e troca o pick por squash
#mudar o commit
esq :wq
git rebase --continue
git push
```

#deixar apenas os commits úteis SEM mudar o texto do commit - fixup
```
git rebase -i master
a #(digita a)
#escolhendo o commit que quer "remover" a msg e troca o pick por fixup
esq :wq
git rebase --continue
git push
```
