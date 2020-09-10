ANTES
```
def sum(key)
  values = data.map { |h| h[key] }.compact

  return if values.empty?

  values.map(&:to_f).sum
end
```

Como o retorno é nil, acho que fica melhor simplificar assim:

```
def sum(key)
  values = data.pluck(key).compact

  values.map(&:to_f).sum if values.present?
end
```

Daria pra fazer tudo encadeado, mas não fica bonito no Ruby 2.5:
```
def sum(key)
  data.pluck(key)
      .compact
      .yield_self { |v| v.map(&:to_f).sum if v.present? }
end
```

No 2.7 ficaria bem diferente:
```
def sum(key)
  data.pluck(key)
      .compact
      .them { _1.map(&:to_f).sum if _1.present? }
end
```
Enfim, divago… 😂

Alternativas by: https://github.com/DNA
