meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

puts ''
puts '---------Ej5.0------------'
hash_ventas = []
hash_ventas = meses.zip(ventas)
hash_ventas = hash_ventas.to_h
print hash_ventas
puts ''

puts ""
puts "---------Ej5.1 ------------"
hash_ventas2 = hash_ventas.invert
print hash_ventas2
puts ""

puts ""
puts "---------Ej5.2 ------------"

def largest_hash_key(hash)
  arreglo = hash.max_by{|k,v| k}
  mes = arreglo[1]
end

mes_mayor_venta = largest_hash_key(hash_ventas2)
puts "El mes con mayor venta es #{mes_mayor_venta}"
