# Quando lança o throw sem passar o objeto da exceção a StackTrace eh mantida

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
