```cs
public void AdicionarVarios(params T[] itens)
{
        foreach (T item in itens)
        {
                Adicionar(item);
        }
}

// Com o argumento params é possível passar diversos argumentos que serão lidos como um array, tipo o *args do ruby
AdicionarVarios(1, 2, 3, 4)
```
