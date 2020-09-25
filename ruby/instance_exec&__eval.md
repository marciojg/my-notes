https://blog.bigbinary.com/2013/03/12/understanding-instance-exec-in-ruby.html


instance_eval  nao aceita argumentos
```ruby
class Person
  code = proc { |greetings| puts greetings; puts self }

  define_method :name do
    self.class.instance_eval 'Good morning', &code
  end
end

class Developer < Person
end

Person.new.name
Developer.new.name

#=> wrong number of arguments (1 for 0) (ArgumentError)
```

instance_exec aceita argumentos
```ruby
class Person
  code = proc { |greetings| puts greetings; puts self }

  define_method :name do
    self.class.instance_exec 'Good morning', &code
  end
end

class Developer < Person
end

Person.new.name #=> Good morning Person
Developer.new.name #=> Good morning Developer
```
