```csharp
// A classe que lança a exeção no seu construtor e é usada no metodo using implementa a interface IDisposable para que o using possa funcionar de boas
public class LeitorDeArquivo : IDisposable
{
    public string Arquivo { get; }

    public LeitorDeArquivo(string arquivo)
    {
        Arquivo = arquivo;
        int divisor = 0;
        int resultado = 10/divisor;

        throw new FileNotFoundException();            
        Console.WriteLine("Abrindo arquivo: " + arquivo);
    }

    public string Ler Proxima Linha()
    {
        Console.WriteLine("Lendo linha...");
        throw new IOException();

        return "linha do arquivo";
    }

    public void Dispose()
    {
        Console.WriteLine("Fechando arquivo.");
    }
}

static void Main(string[] args)
{
    try
    {
        CarregarContas();
    }
    catch(Exception)
    {
        Console.WriteLine("CATCH NO METODO MAIN");
    }
  
    
    private static void CarregarContas()
    {
        // FAzendo desta maneira, quando o construtor retornar uma exceção a variável não é criada e evita a checagem para usar o finally.
        using (LeitorDeArquivo leitor = new LeitorDeArquivo("teste.txt"))
        {
                leitor.LerProximaLinha();
                leitor.LerProximaLinha();
                leitor.LerProximaLinha();
        }

        // Por baixo dos panos o using implementa o basicamente o código abaixo
        //------------------------------------------
        //LeitorDeArquivo leitor = null;
        //try
        //{
        //        leitor = new LeitorDeArquivo("teste.txt");

        //        leitor.LerProximaLinha();
        //        leitor.LerProximaLinha();
        //        leitor.LerProximaLinha();
        //}
        //finally
        //{
        //        Console.WriteLine("Executando o finally");
        //
        //        if(leitor != null)
        //        {
        //           leitor.Fechar();
        //        }
        //}
    }    
}
```
