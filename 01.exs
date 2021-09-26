IO.puts("Ivan")
IO.puts "Rosolen"
IO.puts "Ivan" <> "Rosolen"

add = fn a, b -> a + b end
check = is_function(add)
IO.puts check
result = add.(2, 4)
IO.puts "Resultado #{result}"

checkAdd = is_function(add, 1)
IO.puts "Check add 1 params: #{checkAdd}"

double = fn a -> add.(a, a) end
checkDouble = is_function(double, 1)
IO.puts "Check double 1 params: #{checkDouble}"

result = double.(4)
IO.puts "Resultado #{result}"

#  Like lists, tuples are also immutable. Every operation on a tuple returns a new tuple, it never changes the given one.
array = [1, 2, 3]
IO.inspect array, label: "Lista: "
newArrayMerge = [1, 2, 3] ++ [4, 5]
IO.inspect newArrayMerge, label: "Listas juntas: "
newArrayWithoutSomeVal = [1, 2, 2, 3, 3, 3] -- [2, 3]
IO.inspect newArrayWithoutSomeVal, label: "Lista sem alguns: "

tuple = {"ivan", "rosolen"}
IO.inspect tuple, label: "tuple: "
put_elem(tuple, 1, "mori")
IO.inspect tuple, label: "nova tuple: "
ivan = put_elem(tuple, 1, "mori")
IO.inspect ivan, label: "nova tuple certo: "


