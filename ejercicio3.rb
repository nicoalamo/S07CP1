h = {"x": 1, "y":2}
print h

puts ""
puts "---------Ej3.1------------"
h["z"] = 3
print h
puts ""

puts ""
puts "---------Ej3.2------------"
h[:x] = 5
print h
puts ""

puts ""
puts "---------Ej3.3------------"
h.delete(:y)
print h
puts ""

puts ""
puts "---------Ej3.4 - 1 ------------"
new_h1 = {}
h.each { |key, value| new_h1[value] = key }
print new_h1
puts ""

puts ""
puts "---------Ej3.4 - 2 ------------"
new_h2 = h.invert
print new_h2
puts ""
