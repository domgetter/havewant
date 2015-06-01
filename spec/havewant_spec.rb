require 'spec_helper'

describe HaveWant do
  it 'has a version number' do
    expect(HaveWant::VERSION).not_to be nil
  end
  it 'tells me about upcase' do
    expect(HaveWant::HaveWant.new("hello", "HELLO").answers).to include :upcase
  end
end
