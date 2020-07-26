# sincronizar com o origin
```
git rebase -i master
esq :wq
git add .
git rebase --continue
git push --force-with-lease
```
# deixar apenas os commits úteis mudando o texto do commit - squash
```
git rebase -i master
a #(digita a)
#escolhendo o commit que quer "remover" a msg e troca o pick por squash
#mudar o commit
esq :wq
git rebase --continue
git push
```

# deixar apenas os commits úteis SEM mudar o texto do commit - fixup
```
git rebase -i master
a #(digita a)
#escolhendo o commit que quer "remover" a msg e troca o pick por fixup
esq :wq
git rebase --continue
git push
```
# Trocar o autor de varios commits
```
git rebase -i master
# trocar todos a ação ds commits que quer trocar o autor de pick para edit
a cada um usar:
git commit --amend --author 'Marcio de Jesus <marciodejesusrj@gmail.com>'
e depois, até acabar
git rebase --continue
```
