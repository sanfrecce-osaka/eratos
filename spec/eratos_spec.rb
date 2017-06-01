require 'spec_helper'

describe Eratos do
  it { expect(Eratos.new(1).extract_prime_numbers).to eq [] }
  it { expect(Eratos.new(2).extract_prime_numbers).to eq [2] }
  it { expect(Eratos.new(30).extract_prime_numbers).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }
  it { expect(Eratos.new(120).extract_prime_numbers).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113] }
end
