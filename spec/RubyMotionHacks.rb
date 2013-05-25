# Use the runMethod hack to deal with methods with keyed arguments
class Object
  alias :super_method_missing :method_missing

  def method_missing(method, *args, &block)
    if method =~ /^_(.+)/
      signature = $1.gsub(/_/, ':') + ":"

      if respond_to?(signature)
        return self.runMethod([signature, *args])
      end
    end
    super_method_missing(method, *args, &block)
  end
end
