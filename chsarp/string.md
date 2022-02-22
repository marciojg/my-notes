```cs
String texto = "Gustavo_Silva";

if(string.IsNullOrEmpty(texto))
{
    Console.WriteLine("String vazia");
}

Int32 indice = texto.IndexOf("Gustavo");
Int32 outroIndice = texto.IndexOf("_");
String texto2 = texto.Substring(indice+1);

Console.WriteLine("Tamanho: " + texto.Length);
Console.WriteLine("Indice: " + indice);
Console.WriteLine("outroIndice: " + outroIndice);
Console.WriteLine(texto2);
```

Resultado
```
Tamanho: 13
Indice: 0
outroIndice: 7
ustavo_Silva

Correta! A sobrecarga string::IndexOf(string) devolve o índice inicial da sequência que buscamos.
```
