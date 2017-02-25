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

# C::Interop.hello 42
# Will not type check and results in the following compile-time error:
#
#   in src/c-interop.cr:10: argument 'name' of 'LibHello#hello' must be
#   Pointer(UInt8), not Int32
