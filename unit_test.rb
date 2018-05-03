require 'test/unit'
require File.expand_path('../lib/Otohatiyau.rb',  __FILE__)

class TC < Test::Unit::TestCase
	ROMME = [400, 100, 4]

	def test

		assert_equal(Otohatiyau::otohatiyau(500, [7, 5, 3]), [[71, 0, 1], [3, 3, 0]])

		assert_equal(Otohatiyau::inverse_otohatiyau([7, 5, 3], [71, 0, 1], [3, 3, 0]), 500)

		
		assert_equal(Otohatiyau::otohatiyau(0, ROMME), [[0, 0, 0], [0, 0, 0]])
		assert_equal(Otohatiyau::otohatiyau(1, ROMME), [[0, 0, 0], [1, 1, 1]])
		assert_equal(Otohatiyau::otohatiyau(2, ROMME), [[0, 0, 0], [2, 2, 2]])
		assert_equal(Otohatiyau::otohatiyau(3, ROMME), [[0, 0, 0], [3, 3, 3]])
		assert_equal(Otohatiyau::otohatiyau(4, ROMME), [[0, 0, 1], [4, 4, 0]])
		assert_equal(Otohatiyau::otohatiyau(5, ROMME), [[0, 0, 1], [5, 5, 1]])
		assert_equal(Otohatiyau::otohatiyau(100, ROMME), [[0, 1, 0], [100, 0, 0]])
		assert_equal(Otohatiyau::otohatiyau(-1, ROMME), [[0, 1, 0], [100, 0, 0]])
	end

	def test_essence_otohatiyau
		assert_equal(Otohatiyau::essence_otohatiyau(0, ROMME), [[0, 0, 0], 0])
		assert_equal(Otohatiyau::essence_otohatiyau(100, ROMME), [[0, 1, 0], 0])
		assert_equal(Otohatiyau::essence_otohatiyau(101, ROMME), [[0, 1, 0], 1])
		assert_equal(Otohatiyau::essence_otohatiyau(401, ROMME), [[1, 0, 0], 1])
		assert_equal(Otohatiyau::essence_otohatiyau(2015, ROMME), [[5, 0, 3], 3])
		assert_equal(Otohatiyau::essence_otohatiyau(500, [7, 5, 3]), [[71, 0, 1], 0])
	end

	def test_essence_inverse_otohatiyau
		assert_equal(Otohatiyau::essence_inverse_otohatiyau([[0, 0, 0], 1], ROMME), 1)
		assert_equal(Otohatiyau::essence_inverse_otohatiyau([[1, 0, 0], 1], ROMME), 401)
	end
end
