class String
  
  def to_jfile
    java.io.File.new(self) 
  end

end
