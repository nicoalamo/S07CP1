restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

puts ""
puts "---------Ej6.1 ------------"

def largest_hash_key(hash)
  arreglo = hash.max_by{|k,v| v}
  max_dish = arreglo[0]
end

plato_caro = largest_hash_key(restaurant_menu)
puts "El plato más caro es #{plato_caro}"

puts ""
puts "---------Ej6.2 ------------"

def min_hash_key(hash)
  arreglo = hash.min_by{|k,v| v}
  min_dish = arreglo[0]
end

plato_barato = min_hash_key(restaurant_menu)
puts "El plato más barato es #{plato_barato}"

puts ''
puts '---------Ej6.3------------'

def hash_promedio(hash_argumento)
  sum = hash_argumento.values.inject(0) { |suma, v| suma + v }
  promedio = sum/(hash_argumento.length)
  promedio
end

prom = hash_promedio(restaurant_menu)
puts "El precio promedio es #{prom}"

puts ""
puts "---------Ej6.4 ------------"
array_names =[]
restaurant_menu.each { |key, value| array_names.push(key) }
print array_names
puts ""

puts ""
puts "---------Ej6.5 ------------"
array_prices =[]
restaurant_menu.each { |key, value| array_prices.push(value) }
print array_prices
puts ""

puts ""
puts "---------Ej6.6 con MAP ------------"
puts ""
hash_conIVA = restaurant_menu.map do |key, value|
  [key, value * 1.19]
end
hash_conIVA = hash_conIVA.to_h
print hash_conIVA
puts ""

puts ""
puts "---------Ej6.6 - 2 con EACH------------"
hash_conIVA2 = {}
restaurant_menu.each  { |key, value| hash_conIVA2[key] = value * 1.19 }
print hash_conIVA2
puts ""

puts ""
puts "---------Ej6.7 ------------------------"
hash_con_descuento = {}
restaurant_menu.each  do |key, value|
  if key.split.length > 1
    hash_con_descuento[key] = value * 0.8
  elsif key.split.length == 1
    hash_con_descuento[key] = value
  end
end
print hash_con_descuento
puts ""
