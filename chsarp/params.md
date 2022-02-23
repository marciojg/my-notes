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

// Se não tivesse o params seria
public void AdicionarVarios(T[] itens)
AdicionarVarios(new List<int> { 1, 2, 3, 4 })
```
