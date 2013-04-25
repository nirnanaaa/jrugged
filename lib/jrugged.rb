require 'java'


module JRugged

  # allow experimental builds (CI, spec)
  require 'jrugged/jar_path' unless const_defined?(:JAR_PATH)

  load JAR_PATH

  # This module contains all the native JGit objects implemented in Java
  #
  # See http://download.eclipse.org/jgit/docs/latest/apidocs/ for a list of objects
  #
  # e.g. JRugged::JGit::Lib
  module JGit
    include_package "org.eclipse.jgit"
    module Errors
      include_package "org.eclipse.jgit.errors"
    end
  end

  @@jgit_version = nil
  # Helper method to detect the jar version
  def self.jgit_version
    #@@jgit_version ||= begin
    #                     urls = JGit.java_class.to_java.getClassLoader.
    #                       getResources('META-INF/MANIFEST.MF').to_a
    #                     jgit_jar_urls = urls.select { |url| url.toString.index(JAR_PATH) }
    #                   end
  end

end

require 'jrugged/error'


# Git related things
require 'jrugged/index'
require 'jrugged/object'
require 'jrugged/commit'
require 'jrugged/repository'
require 'jrugged/reference'
require 'jrugged/walker'
require 'jrugged/tree'
require 'jrugged/tag'
require 'jrugged/branch'
require 'jrugged/remote'
