--project euler 5: find the smallest positive number that is evenly divisible by 1 through 20
package.path = "..\\libraries\\?.lua;" .. package.path
require "lib"
local t = os.clock()

local result = 1

for i=1,20 do
	result = lib.lcm(result,i)
end

print("result: "..result.." - found in "..(os.clock() - t).." s")