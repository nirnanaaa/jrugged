require 'spec_helper'

describe JRugged::Error do
  it "should throw a JRugged::Error exception" do
    error = JRugged::Error.new 'error message'
    expect{ error.to_s && error.inspect }.not_to raise_error
  end

  it "should wrap a NativeError into a JRugged::Error" do
    #error = JRugged::Error::GiTAPIException("42".to_java)
    error = JRugged::JGit::Error::CanceledException.new("42".to_java)

  end

end
