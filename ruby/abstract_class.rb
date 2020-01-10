como fazer metodo e classe abstrata em ruby

Classe abstrata em C#
```C#
public abstract class DebitoConta 
{
  public abstract string Debitar(decimal valor, string conta);
}

public class DebitoContaCorrente : DebitoConta 
{
  public override string Debitar(decimal valor, string conta) 
  {
    return 'Debito feito com sucesso';
  }
}
```

Classe abstrata em Ruby
```ruby
class DebitoConta
  def initialize
    raise 'Esta classe é abstrata, não pode ser instanciada'
  end

  def debitar(valor, conta)
    raise 'Este método precisa ser sobrescrito'
  end
end

class DebitoContaCorrente < DebitoConta
  def initialize;end

  def debitar(valor, conta)
    'Debito feito com sucesso'
  end
end
```
