require 'test/unit'
require File.expand_path('../Otohatiyau.rb',  __FILE__)

class TC < Test::Unit::TestCase

	def test

		assert_equal(Otohatiyau::otohatiyau(500, [7, 5, 3]), [[71, 0, 1], [3, 3, 0]])

		assert_equal(Otohatiyau::inverse_otohatiyau([7, 5, 3], [71, 0, 1], [3, 3, 0]), 500)

	end

end
