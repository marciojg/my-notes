Troubleshooting do erro ng nao encontrado

```
devel@DESKTOP-JR1G8NE:/mnt/c/Users/devel/projects/my-courses/alurapic$ ng -v

Command 'ng' not found, but can be installed with:

sudo apt install ng-common
```

configurar no package.json o comando ng

``` package.json

{
  "scripts": {
    "ng": "ng",
    ...
  }
}
```

Agora só rodar:

```
devel@DESKTOP-JR1G8NE:/mnt/c/Users/devel/projects/my-courses/alurapic$ npm run ng -v
5.5.1
```
