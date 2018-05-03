require 'matrix'

class Otohatiyau

	def self.otohatiyau(a, b)
		q = Array.new
		r = Array.new

		b.each_with_index do |v, k|
			q[k] = 
				if k == 0 then
					a / b[k]
				else
					r[k - 1] / b[k]
				end
			r[k] = 
				if k == 0 then
					a % b[k]
				else
					r[k - 1] % b[k]
				end
		end
		[q, r]
	end


	def self.essence_otohatiyau(a, b)
		otohatiyau = Otohatiyau::otohatiyau(a, b)
		[otohatiyau[0], otohatiyau[-1][-1]]
	end
	
	def self.inverse_otohatiyau(b, q, r)
		a = 0
		b.each_with_index do |v, k|
			a += v * q[k]
		end
		a += r[-1]
		a
	end

	def self.essence_inverse_otohatiyau(a, b)
		Vector[*a[0]].inner_product(Vector[*b]) + a[1]
	end		
end

