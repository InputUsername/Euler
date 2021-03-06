require 'prime'

module Lib
	# load a list of words, formatted as "WORD","WORD 2","ETC"
	def Lib.load_list_file(file)
		file = File.new(file,"r")
		words = file.gets.tr("\"","").split(",")
		file.close
		words
	end

	# return the nth triangle number
	def Lib.get_triangle(n)
		return 0.5*n*(n+1)
	end

	def Lib.factorize(n)
		upper_bound = Math.sqrt n
		primes = Prime.take_while {|p| p <= upper_bound}
		ret = []
		primes.each {|p|
			while n%p == 0 do
				n /= p
				ret << p
			end
		}
		ret
	end

	def Lib.divisors(n)
		d = []
		i = 2
		while i < Math.sqrt(n).ceil
			if n % i == 0 then
				d << i
				n = n % i
			else
				i += 1
			end
		end
		d
	end

	def Lib.distinct_prime_factors(n)
		upper_bound = Math.sqrt n
		primes = Prime.take_while {|p| p <= upper_bound}
		primes.inject(0) do |amount,prime|
			if n%prime == 0 then
				return amount + 1
			end
			amount
		end
	end
end
