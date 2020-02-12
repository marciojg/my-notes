Descobrir a origem do método

```
Revenue.method(:import).source_location #=> ["/usr/local/bundle/gems/activerecord-import-1.0.3/lib/activerecord-import/import.rb", 523]

B.new.method(:m).source_location #=> ["(eval)", 1]
```
