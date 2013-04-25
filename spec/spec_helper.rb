require 'jrugged'

module JgiR
  Error = JRugged::JGit::Errors
end

RSpec.configure do |c|
  c.mock_with :mocha
  c.alias_example_to :fit, :focused => true
  c.filter_run :focused => true
  c.run_all_when_everything_filtered = true

end
