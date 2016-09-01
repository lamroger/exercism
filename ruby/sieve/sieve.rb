require 'set'

class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    potential = (2..@max).to_a
    verified = Array.new()

    return [] if @max < 2 

    while !potential.empty?
      candidate = potential.shift
      potential.delete_if { |num| num % candidate == 0 }

      verified << candidate
    end

    verified
  end
end