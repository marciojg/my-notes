# Lambda = força receber um parametro se for passado um
# proc = receber um parametro é sempre opcional

```ruby
l = lambda do |param|
  puts param
end
```

# ```ruby
# => #<Proc:0x000055ebbdefeaf8@(repl):1 (lambda)>
#    l.call
# wrong number of arguments (given 0, expected 1)
# (repl):1:in `block in <main>'
# (repl):1:in `<main>'
#    l.call('bla')
# bla
# ```

# proc = Proc.new
```ruby
p = proc do |param|
  puts param
end
```

# ```ruby
# => #<Proc:0x0000563d718eec48@(repl):16>
#    p.call('aaa')
# aaa
# => nil
#    p.call

# => nil
# ``` 


referencia:
https://www.youtube.com/watch?v=MzatZBqmlzY
