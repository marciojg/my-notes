# Mock

## método de classe
```ruby 
a = allow(ProductionPdf).to receive(:save_file).and_return(nil)
b = allow(ProductionPdf).to receive(:save_file)

a == b # true
```

## método de instancia
```ruby
allow_any_instance_of(described_class).to receive(:save_as).and_return('teste.pdf')
```

## de uma uma única instância
```ruby
instance = ClassName.new 

allow(instance).to receive(:save_as).and_return('teste.pdf')
```

## com argumentos

```ruby
allow(dbl).to receive(:foo).with(1).and_return(1)
```

# PROXIMOS

```
 - instance_double
 - double("json")
```
