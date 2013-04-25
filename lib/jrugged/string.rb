class String
  
  def to_jfile(object)
    java.io.File.new(object) 
  end

end
