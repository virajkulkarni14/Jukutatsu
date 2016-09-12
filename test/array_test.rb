$LOAD_PATH << File.dirname(__FILE__)
# require 'array_test'
require 'test/unit'
require 'shoulda-context'
require_relative '../lib/Jukutatsu'
require 'benchmark'
# DEBUG FLAG. Change to false when done debugging
# DEBUG_MODULE1 = true

class ArrayTest < Test::Unit::TestCase
  context "ArrayADT" do
    setup do
      @test_array = DataStructures::ArrayADT.new
      #DEBUG
      # if DEBUG_MODULE1
      #   puts @test_array
      # end
    end

    should "insert element in the array" do
      mock_array = [1, 2]
      #DEBUG
      # if DEBUG_MODULE1
      #   puts mock_array
      # end
      Benchmark.bm do |b|
        b.report("Insert 2 elements:") { @test_array << 1; @test_array << 2 }
      end
      c = ObjectSpace.each_object(DataStructures::ArrayADT).count
      assert_equal mock_array[0], @test_array[0]
      puts "Elements successfully inserted with object count: #{c}"
    end

  end
end
