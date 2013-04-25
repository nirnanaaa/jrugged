module JRugged
  
  # Using first file found
  JAR_PATH = Dir.glob(
    File.expand_path('../org.eclipse.jgit*.jar', File.dirname(__FILE__))
  ).first
end
