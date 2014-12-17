require 'spec_helper'

class TestPreviousCalled
  def piyo
    Previous.called
  end
end

describe Previous do
  it 'has a version number' do
    expect(Previous::VERSION).not_to be nil
  end

  it '#called return self' do
    called = TestPreviousCalled.new.piyo
    expect(called).to eq self
  end
end
