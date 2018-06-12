productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

puts "---------Ej2.1------------"
productos.each { |producto, precio| puts producto }

puts ""
puts "---------Ej2.2------------"
productos['cereal'] = 2200
print productos
puts ""


puts ""
puts "---------Ej2.3------------"
productos['bebida'] = 2000
print productos
puts ""

puts ""
puts "---------Ej2.4------------"
nuevo_productos =  productos.to_a
print nuevo_productos
puts ""

puts ""
puts "---------Ej2.5------------"
productos.delete('galletas')
print productos
puts ""
