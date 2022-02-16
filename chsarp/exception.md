### Quando lança o throw sem passar o objeto da exceção a StackTrace eh mantida

O StackTrace na CLR começa quando executamos throw <objeto de exception>; até o manipulador da exceção.

```csharp
public void MetodoX() {
  try {
    MetodoY();
  }
  catch (Exception ex) {
    throw; // Com StackTrace
    throw ex; // Sem StackTrace
  }
}

public void MetodoY() {
  1/0;
}
```

Para manter o StackTrace e não expor informações sensíveis é possível ser feito com innerException

```
public void MetodoX() {
  try {
    MetodoY();
  }
  catch (ErroOriginal ex) {
    throw new Exception("Erro bem louco", ex);
  }
}

public void MetodoY() {
  1/0;
}

# Executando programa
try {
  MetodoX();
}
catch (Exception ex) {
  Console.WriteLine(ex.Message);
  Console.WriteLine(e.StackTrace);
  
  Console.WriteLine("Informações da Inner Exception (exceção interna)");
  Console.WriteLine(ex.InnerException.Message);
  Console.WriteLine(ex.InnerException.StackTrace);
  
}

> mensagem do ErroOriginal
> # Caminho inteiro até chegar no erro
> Informações da Inner Exception (exceção interna)
> Erro bem louco
> # Caminho inteiro até chegar no erro
```
