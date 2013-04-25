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

    # Exceptions thrown by API commands.
    module Errors
      include_package "org.eclipse.jgit.api.errors"
    end

    # Core API for repository, config, refs, object database.
    module Lib
      include_package "org.eclipse.jgit.lib"
    end

    # High-level API commands (the porcelain of JGit).
    module Api
      include_package "org.eclipse.jgit.api"
    end

    # Comparing file contents by computing diffs.
    module Diff
      include_package "org.eclipse.jgit.diff"
    end

    # Computing blame/annotate information of files.
    module Blame
      include_package "org.eclipse.jgit.blame"
    end

    # Events and listener interfaces.
    module Events
      include_package "org.eclipse.jgit.events"
    end

    # File name matcher.
    module Fnmatch
      include_package "org.eclipse.jgit.fnmatch"
    end

    # Ignore rule parser/matcher (for .gitignore entries).
    module Ignore
      include_package "org.eclipse.jgit.ignore"
    end

    # Content and commit history merge algorithms.
    module Merge
      include_package "org.eclipse.jgit.merge"
    end

    # Git notes processing (for commits, etc).
    module Notes
      include_package "org.eclipse.jgit.notes"
    end

    # Patch file parser and data structure.
    module Patch
      include_package "org.eclipse.jgit.patch"
    end

    # Building/rendering revision graphs.
    module Revplot
      include_package "org.eclipse.jgit.revplot"
    end

    # Walking revision graphs (commit history).
    module Revwalk
      include_package "org.eclipse.jgit.revwalk"
    end

    # Git submodule support.
    module Submodule
      include_package "org.eclipse.jgit.submodule"
    end

    # Transport (fetch/push) for different protocols.
    module Transport
      include_package "org.eclipse.jgit.transport"

    end

    # Walking and comparing directory/file trees (of commits, file system).
    module Treewalk
      include_package "org.eclipse.jgit.treewalk"
    end

    # Utility classes.
    module Util
      include_package "org.eclipse.jgit.util"
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

require 'jrugged/version'
require 'jrugged/wormhole'
JRugged.extend JRugged::To

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
