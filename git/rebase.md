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
# OU git rebase -i ID-DO-COMMIT-ANTERIOR-AO-QUE-PRETENDE-MUDAR-O-AUTOR

# para cada commit que queira mudar o autor, troque pick para edit
# a cada um usar:
git commit --amend --author 'Marcio de Jesus <marciodejesusrj@gmail.com>' --no-edit

# Quando acabar use:
git rebase --continue
```
