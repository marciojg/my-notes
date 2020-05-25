[https://stackoverflow.com/questions/5200842/where-to-define-custom-error-types-in-ruby-and-or-rails/47115392#47115392] Erro customizado exemplo de implementação

```
class Service
  class BaseUrlError < StandardError; end

  class << self
    def base_url
      raise BaseUrlError, 'Implements'
    end
  end
end
```
