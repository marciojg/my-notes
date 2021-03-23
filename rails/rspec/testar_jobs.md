# Negativa de enfileramento de jobs

## prefira isso
```ruby
expect { subject }.to have_enqueued_job(job).with(date, origin, interface).at_least(0).times
```

## do que isso
```ruby
expect { subject }.not_to have_enqueued_job(job).with(date, origin, interface).at_least(1).times
```

# Positiva de enfilieramento de jobs

## Prefira isso
```ruby
expect { subject }.to have_enqueued_job(job).with(date, origin, interface).at_least(1).times
```

## Do que isso
```ruby
expect { subject }.to have_enqueued_job(job).with(date, origin, interface)
```
