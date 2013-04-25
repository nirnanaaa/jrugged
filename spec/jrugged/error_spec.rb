require 'spec_helper'

describe JRugged::Error do
  it "should throw a JRugged::Error exception" do
    error = JRugged::Error.new 'error message'
    expect{error.to_s && error.inspect }.not_to raise_error
  end

end
