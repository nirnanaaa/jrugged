module JRugged
  module To
    def to_ruby(object)
      case object
      when JGit::Error then nil
      when Java::JavaLang::CharSequence then object.toString
      else object
      end
    end

    def to_jfile(file)
      java.io.File.new(file)
    end

    def args_to_ruby(args)
      args.map { |arg| to_ruby(arg) }
    end

    private

  end
end
