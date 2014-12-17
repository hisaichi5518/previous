require "previous/version"
require "debug_inspector"

module Previous
  def self.called
    RubyVM::DebugInspector.open {|dc| dc.frame_self(3) }
  end
end
