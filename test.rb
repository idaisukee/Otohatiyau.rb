def met(a, b)

	q = Array.new
	r = Array.new

	q[0] = a / b[0]
	r[0] = a % b[0]
	
	q[1] = r[0] / b[1]
	r[1] = r[0] % b[1]

	[q, r]
end

def met3(a, b)

	q = Array.new
	r = Array.new

	q[0] = a / b[0]
	r[0] = a % b[0]
	
	q[1] = r[0] / b[1]
	r[1] = r[0] % b[1]

	q[2] = r[1] / b[2]
	r[2] = r[1] % b[2]


	[q, r]
end

def metn(a, b)
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
	
p met(110, [20, 3])
p met3(130, [20, 7, 5])

p metn(110, [20, 3])
p metn(130, [20, 7, 5])
p metn(130, [20, 7, 5, 4, 1])
p metn(224, [400, 100, 4])

year = 365
fy = year * 4 + 1
hy = fy * 25 - 1
fhy = hy * 4 + 1

p hy * 2 + fy * 6
p metn(81970, [fhy, hy, fy, year])
