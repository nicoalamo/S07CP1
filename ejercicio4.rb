personas = ['Carolina', 'Alejandro', 'Maria Jesús', 'Valentín']
edades = [32, 28, 41, 19]
personas_hash = {}

puts ''
puts '---------Ej4.1------------'
personas.each_with_index do |_value, i|
  personas_hash[(personas[i]).to_s] = edades[i]
end
print personas_hash
puts ''

puts ''
puts '---------Ej4.1------------'
personas_hash2 = []
personas_hash2 = personas.zip(edades)
personas_hash2 = personas_hash2.to_h
print personas_hash2
puts ''

puts ''
puts '---------Ej4.2------------'

def hash_promedio(hash_argumento)
  sum = hash_argumento.values.inject(0) { |suma, v| suma + v }
  promedio = sum/(hash_argumento.length)
  promedio
end

prom = hash_promedio(personas_hash)
puts prom
