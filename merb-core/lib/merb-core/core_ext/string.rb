require "pathname"

class String
  # Join with _o_ as a file path.
  #
  # @example
  #   "merb"/"core_ext" #=> "merb/core_ext"
  #
  # @param [String] o Path component to join with receiver.
  #
  # @return [String] Receiver joined with o as a file path.
  #
  # @api public
  def /(o)
    File.join(self, o.to_s)
  end
end