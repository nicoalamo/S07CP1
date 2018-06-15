inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

opcion_usuario = 0

puts ""
puts "El inventario actual es:"
print inventario
puts ""


# while opcion_usuario != 7 do
#
#   puts ""
#   puts "Ingresa una opción del 1 al 7"
#   puts "1--> Para agregar un artículo al inventario"
#   puts "2--> Para eliminar un artículo del inventario"
#   puts "3--> Para actualizar un artículo del inventario"
#   puts "4--> Para ver el stock total del inventario"
#   puts "5--> Para ver el ítem con mayor stock en el inventario"
#   puts "6--> Para ver el ítem con mayor stock en el inventario"
#   puts "7--> Para salir"
#
#
#   opcion_usuario = gets.chomp.to_i

  def add_element(inventario)
    puts ""
    puts "Ingrese el nombre del nuevo item y la cantidad, separados por un coma y un espacio"
    opcion_usuario_1 = gets.chomp
    arreglo1 = opcion_usuario_1.split
    arreglo1[0] = arreglo1[0].tr(',', '')
    inventario[:"#{arreglo1[0]}"] = arreglo1[1].to_i
    print "El nuevo inventario es:"
    print inventario
  end

  def delete_element(inventario)
    puts ""
    print "El inventario actual es el siguiente:"
    puts ""

    inventario.each_with_index do |(key, value), index|
      puts "#{index+1} --> #{key}, #{value} unidades"
    end

    puts ""
    puts "Ingrese la posición del articulo que quiere eliminar"
    op2 = gets.chomp.to_i



    while !(op2 >= 1 && op2 <= inventario.length) do
      puts ""
      puts "La opción ingresada es incorrecta"
      puts "Ingrese la posición del articulo que quiere eliminar"
      op2 = gets.chomp.to_i
    end

    inventario.each_with_index do |(key, value), index|
      if op2 == (index + 1)
        inventario.delete(key)
      end
    end

    puts ""
    puts "El nuevo inventario es:"
    print inventario
    puts ""

  end

  def update_element(inventario)
    puts "Ingrese el nombre del item que quieres actualizar"
    nom_item = gets.chomp

    while  !(inventario.key?(:"#{nom_item}")) do
      puts ""
      puts "El artículo ingresado no existe"
      puts "Ingrese el nombre del item que quieres actualizar"
      nom_item = gets.chomp
    end

    puts ""
    puts "¡El artículo fue encontrado!"
    puts ""
    puts "Ingrese la nueva cantidad por favor"
    nueva_cantidad = gets.chomp.to_i

    inventario[:"#{nom_item}"] = nueva_cantidad

    print "El nuevo inventario es:"
    print inventario
    puts ""

  end

  def stock_summary(inventario)

    suma_stock = inventario.values.inject(&:+)
    puts "El stock total es de #{suma_stock}"

  end

  def max_stock(inventario)

    max = max_by inventario.values.inject(&:+)
    puts "El stock total es de #{suma_stock}"

  end

  def max_stock(inventario)

    max = inventario.max_by {|key, value| value}
    puts "El producto con mayor stock es #{max[0]} con #{max[1]} unidades"

  end

  def item_exists(inventario)

    puts "Ingrese el nombre exacto del elemento que quieres verificar si existe"
    item = gets.chomp
    if inventario[item.to_sym]
      puts "El elemento existe"
    else
      puts "El elemento no existe"
    end

  end

  while opcion_usuario != 7

    puts ""
    puts "Ingresa una opción del 1 al 7"
    puts "1--> Para agregar un artículo al inventario"
    puts "2--> Para eliminar un artículo del inventario"
    puts "3--> Para actualizar un artículo del inventario"
    puts "4--> Para ver el stock total del inventario"
    puts "5--> Para ver el ítem con mayor stock en el inventario"
    puts "6--> Para ver el ítem con mayor stock en el inventario"
    puts "7--> Para salir"

    opcion_usuario = gets.chomp

    puts case opcion_usuario
      when '1'
        add_element(inventario)
      when '2'
        delete_element(inventario)
      when '3'
        update_element(inventario)
      when '4'
        stock_summary(inventario)
      when '5'
        max_stock(inventario)
      when '6'
        item_exists(inventario)
      when '7'
        exit
      else
        'Ingresa correctamente un número entero entre 1 y 7 por favor'

    end

  end
