module JRugged
  class Branch < Reference


    # The object pointed at by the tip of this branch
    #def tip
    #  @owner.lookup(self.resolve.target)
    #end

    # Compares another branch with the current by canonical_name
    #def ==(other)
    #  other.instance_of?(Rugged::Branch) &&
    #  other.canonical_name == self.canonical_name
    #end

    # Full name of the branch as reference
    #alias_method 'canonical_name', 'name'



    # The clean name of the branch
    # 
    # E.g. 'master' instead of 'refs/heads/master'
    #def name
    #  super.gsub(%r{^(refs/heads/|refs/remotes/)}, '')
    #end
  end
end
