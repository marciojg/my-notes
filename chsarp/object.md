```cs
Cliente outroCliente = (Cliente)obj;
// Quando não é possivel converter uma exceção é lançada

Cliente outroCliente = obj as Cliente;
// Quando não é possível converter outroCliente recebe null
```

Arrays de objects somente aceitam arrays de objects, diferente das variáveis objects
Por mais que variáveis de object aceitem valores de int, o mesmo não vale para arrays. Não podemos usar um array de int em um argumento do tipo object[].

```cs
public static object[] Concatenar(this object[] a, object[] b) { ... }

int[] a = new int[] { 0, 1, 2 };
int[] b = new int[] { 3, 4, 5 };

// não funciona
int[] resultado = a.Concatenar(b);


```
