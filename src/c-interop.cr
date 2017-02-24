require "./c-interop/*"

@[Link(ldflags: "#{__DIR__}/c/lib/libhello.a")]
lib LibHello
  fun hello(name: UInt8*) : Void
end

module C::Interop
  def self.hello(name)
    LibHello.hello name
  end
end

C::Interop.hello "world"
