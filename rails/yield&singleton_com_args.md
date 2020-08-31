## Exemplo legal com uso do yield

Sem yield
```ruby
class Mediator
  private_class_method :new
  
  def initialize(**kwargs)
    @kwargs = kwargs
  end

  def self.instance(**kwargs)
    @instance ||= new(kwargs)
  end

  def start; end
  def finish; end
end

class Test
  def initialize(**kwargs)
    mediator = Mediator.instance(kwargs)
    mediator.start

    @document = Prawn::Document.new(page_layout: :landscape)

    build('cover', mediator.cover_data)
    start_new_page
    build('page', mediator.page_data)

    mediator.finish
  end

  private

  def build(string, data)
    ...
  end
end
```

Com yield
```ruby
class Mediator

  private_class_method :new
  
  def self.mediate(**kwargs)
    @instance ||= new(kwargs)

    @instance.start
    yield @instance
    @instance.finish
  end

  def initialize(**kwargs)
    @kwargs = kwargs
  end

  def start; end
  def finish; end
end

class Test
  def initialize(**kwargs)
    Mediator.mediate(kwargs) do |mediator|
      @document = Prawn::Document.new(page_layout: :landscape)

      build('cover', mediator.cover_data)
      start_new_page
      build('page', mediator.page_data)
    end
  end

  private

  def build(string, data)
    ...
  end
end
```
