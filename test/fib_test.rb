$LOAD_PATH << File.dirname(__FILE__)
require 'test/unit'
require 'shoulda-context'
require_relative '../lib/Jukutatsu'
require 'benchmark'
# DEBUG FLAG. Change to false when done debugging
# DEBUG_MODULE1 = true

class FibTest < Test::Unit::TestCase
  context "Fibonacci" do
    should "test recursive Fibonacci" do
      Benchmark.bm do |b|
        b.report("Recursive: ") {Algorithms::Fibonacci.compute_fibonacci(10)}
      end
      c = ObjectSpace.each_object(Algorithms::Fibonacci).count
      puts "#{c} object(s) created."
    end
    should "test memoized recursive Fibonacci" do
      Benchmark.bm do |b|
        b.report("Memoized: ") {Algorithms::Fibonacci.compute_optimized_fibonacci(10)}
      end
      c = ObjectSpace.each_object(Algorithms::Fibonacci).count
      puts "#{c} object(s) created."
    end
  end
end
