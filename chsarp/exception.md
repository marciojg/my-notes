# Quando lança o throw sem passar o objeto da exceção a StackTrace eh mantida

```csharp
public void MetodoX() {
  try (1/0) {
  }
  catch (Exception ex) {
    throw; // Com StackTrace
    throw ex; // Sem StackTrace
  }
}
```
