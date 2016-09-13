class Algorithms::Fibonacci

  def self.compute_fibonacci(n)
    raise "Fibonacci sequence not defined for negative numbers!" if n < 0
    n <= 1 ? n : (compute_fibonacci(n - 1) + compute_fibonacci(n - 2))
  end

  def self.compute_optimized_fibonacci(n, memo = {})
    raise "Fibonacci sequence not defined for negative numbers!" if n < 0
    return  n  if n <= 1
    memo[n] ||= (compute_optimized_fibonacci(n - 1, memo) + compute_optimized_fibonacci(n - 2, memo))
  end
end
