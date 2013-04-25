module JRugged
  class Reference
    def inspect
      "#<JRugged::Reference:#{object_id} {name: #{name.inspect}, target: #{target.inspect}}"
    end
  end
end
