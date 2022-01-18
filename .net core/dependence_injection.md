## Dependency injection

### Singleton [#AddSingleton()]

Cria uma única instância do serviço quando é solicitado pela primeira vez e reutiliza esta intância em todos os locais em que esse serviço é necessário

### Transient [#AddTransient()]

Sempre gerará uma nova instância para cada item encontrado que possua tal dependência, ou seja, se houver 5 dependências serão 5 instâncias diferentes

### Scoped [#AddScoped()]

A cada requisição uma instância de uma classe é criada e a mesma instência é utilizada nas dependências, renovando somente nas requisições subsequentes

### Material de referência

- https://stackoverflow.com/questions/38138100/addtransient-addscoped-and-addsingleton-services-differences (muito bom)
- https://docs.microsoft.com/en-us/dotnet/core/extensions/dependency-injection-usage
- https://docs.microsoft.com/en-us/aspnet/core/fundamentals/dependency-injection?view=aspnetcore-5.0
- https://www.coreprogramm.com/2020/02/difference-between-addsingleton-addScoped-addTransient.html
