require "test/unit"
require "./class"

class TcGame < Test::Unit::TestCase

  def test_typecheck
    assert_raise( RuntimeError ) { Game.new('1.0')  }
    assert_raise( RuntimeError ) { Game.new(1..2)   }
    assert_raise( RuntimeError ) { Game.new([1, 2]) }
  end
end