Usando método de extensão (this)

```cs
public static class ListExtensoes 
{
  public static void AdicionarVarios(this List<int> listaDeInteiros, params int[] itens)
  {
      foreach(int item in itens)
      {
          listaDeInteiros.Add(item);
      }
  }
}

var listaExemplo = new List<int> { 1, 2 };
listaExemplo.AdicionarVarios(3, 4, 5);

// 1, 2, 3, 4, 5
```

Não utilizando Usando método de extensão

```cs
public static class ListExtensoes 
{
  public static void AdicionarVarios(List<int> listaDeInteiros, params int[] itens)
  {
      foreach(int item in itens)
      {
          listaDeInteiros.Add(item);
      }
  }
}

var listaExemplo = new List<int> { 1, 2 };
ListExtensoes.AdicionarVarios(listaExemplo, 3, 4, 5);

// 1, 2, 3, 4, 5
```


https://imasters.com.br/back-end/c-metodos-de-extensao-revisitado#:~:text=Os%20m%C3%A9todos%20de%20extens%C3%A3o%20ou,um%20outro%20membro%20do%20tipo.
