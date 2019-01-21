require 'spec_helper'

RSpec.describe SalaryService do
  let(:salary)      { 1000 }
  let(:hours)       { 100}
  let(:shifts)      { 1 }
  let(:expectation) { 220 }

  describe '.call' do
    specify { expect(described_class.call(salary, hours, shifts)).to eq(expectation) }
  end
end
