class Java::OrgEclipseJgitApi::Git
  include_package "org.eclipse.jgit.api"

  def open(name)
    JRugged.to_ruby Git.open(name)
  end

end
