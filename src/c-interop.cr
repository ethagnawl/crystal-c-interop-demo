require "./c-interop/*"

@[Link(ldflags: "#{__DIR__}/c/lib/libhello.a")]
lib LibHello
  fun hello(name: UInt8*) : Void
end

module C::Interop
  def self.hello(message)
    LibHello.hello message
  end
end

C::Interop.hello "from Crystal"
