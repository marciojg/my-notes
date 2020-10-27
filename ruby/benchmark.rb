
require 'benchmark'

s = Summary.first
n = 10_000

Benchmark.bm do |benchmark|
  benchmark.report("Indo pelos modelos") do
    n.times do
      s.teste1
    end
  end

  benchmark.report("Com where") do
    n.times do
      s.teste2
    end
  end
end
