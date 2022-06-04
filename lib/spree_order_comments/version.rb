module SpreeOrderComments
  VERSION = '1.1.0'.freeze

  module_function

  # Returns the version of the currently loaded SpreeOrderComments as a
  # <tt>Gem::Version</tt>.
  def version
    Gem::Version.new VERSION
  end
end
