require 'spec_helper'

describe JRugged::Repository do
  let(:path){ File.expand_path('../../fixtures/test.git', __FILE__) }
  it "should open a new repository" do
    JRugged::Repository.create( path ) 
    repository = JRugged::Repository.new( path )
  end
end
