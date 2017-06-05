class Eratos

  def initialize(max_number)
    @max_number    = max_number
    @numbers       = (2..max_number).to_a
    @prime_numbers = []
  end

  def extract_prime_numbers
    return [] if @max_number < 2

    until greater_than_sqrt?(@numbers.min)
      @prime_numbers.push(@numbers.min)
      @numbers.select { |number| divisible_by_prime_number?(number) }.each { |number| @numbers.delete(number) }
    end

    @prime_numbers.push(@numbers).flatten
  end

  private

  def greater_than_sqrt?(prime_number)
    prime_number > Math.sqrt(@max_number)
  end

  def divisible_by_prime_number?(number)
    number % @prime_numbers.max == 0
  end
end

puts Eratos.new(ARGV[0].to_i).extract_prime_numbers.join(', ')
