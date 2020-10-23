array = ['data 1', 'data 2', 'data 3']

# Antes
array.map do |raw_attr|
  [raw_attr, capture(raw_object, raw_attr)]
end.to_h

# depois
array.index_with { |attr| capture(data, attr) }
