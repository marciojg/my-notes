### IsNullOrEmpty && IndexOf && Substring

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

// Resultado
// Tamanho: 13
// Indice: 0
// outroIndice: 7
// ustavo_Silva
//
// A sobrecarga string::IndexOf(string) devolve o índice inicial da sequência que buscamos.

```

---

### ToUpper && Replace

```cs
string endereco = "R. São Carlos do Pinhal nº746";
string enderecoFormatado = 
    endereco
        .ToUpper()
        .Replace("r.", "Rua")
        .Replace(" nº", ", Número ")
        .ToUpper();

Console.WriteLine(enderecoFormatado);

// Resultado
// "R. SÃO CARLOS DO PINHAL Nº746"
```

---

### Remove

```cs
string testeRemocao = "primeiraParte&parteParRemover";
int indiceEComercial = testeRemocao.IndexOf('&');
Console.WriteLine(testeRemocao.Remove(indiceEComercial));

// Resultado
// primeiraParte

string testeRemocao = "primeiraParte&parteParRemover";
int indiceEComercial = testeRemocao.IndexOf('&');
Console.WriteLine(testeRemocao.Remove(indiceEComercial, 4));

// Resultado
// primeiraParteteParRemover
```

### StartsWith && EndsWith && Contains

```cs
string urlTeste = "https://www.bytebank.com/cambio";
int indiceByteBank = urlTeste.IndexOf("https://www.bytebank.com");

Console.WriteLine(urlTeste.StartsWith("https://www.bytebank.com"));
Console.WriteLine(urlTeste.EndsWith("cambio"));
Console.WriteLine(urlTeste.Contains("bytebank"));

// Resultado
// True
// True
// True
```

