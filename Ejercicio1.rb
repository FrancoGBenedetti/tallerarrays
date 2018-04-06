#Ejercicio 1
puts 'Ejercicio 1'

arreglo = [1,2,3,9,1,4,5,2,3,6,6]
	puts arreglo[0]
	puts arreglo[-1]

arreglo.each do |i|
	
	print  i
	puts
end

arreglo.each_with_index do |elemento, indice|
	puts "#{elemento} #{indice}"

arreglo.each_with_index do |elemento, indice|
	puts "#{elemento}" if indice.even?

#Ejercicio 2
puts 'Ejercicio 2'

arreglo.pop
arreglo.shift

arreglo = [1,2,3,9,1,4,5,2,3,6,6]

if arreglo.length.even? 
	arreglo.delete_at(arreglo.length/2-1)
else
	arreglo.delete_at(arreglo.length/2)
end

arreglo = [1,2,3,9,1,4,5,2,3,6,6]

if arreglo[-1] !=1
	arreglo.pop
end

arreglo = [1,2,3,9,1,4,5,2,3,6,6]

aux = []


arreglo.length.to_i.times do
	aux.push(arreglo.pop)
end

puts aux



#Ejercicio 3

puts "Ejercicio3"
a = [1,2,3,9,1,4,5,2,3,6,6]

a.each_with_index do |e, i|
	if e.even? 
		a.delete(e)
	end
end
puts a


suma = 0
a.each do |i|
	suma = suma + a[i]
end
puts suma

promedio = 0
promedio = suma/a.length
puts promedio

a.each_with_index do |e, i|
	a[i] = e + 1
end
print a

#Ejercicio 4
puts
puts "Ejercicio 4"

products = %w(Producto1, Producto2, Producto3, Producto4)
html = ''
products.each do |i|
  html += "<div class='product'><p>" + i + "</p></div>\n"
end
puts "EJercicio 5"
puts html

products = %w(Producto1 Producto2 Producto3 Producto4)
prices = %w[1000 2000 1500 950]
html = ''
products.each_with_index do |e, i|
  html += "<div class='product'><p>" + products[i] + "</p>""<p>" + prices[i] + "</p></div>\n"

end
print html

puts "ejercicio 6"

a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]
resultado = 0
a.each do |i|
	resultado = a.zip(b)
end
print resultado

#EJercicio 5

products = %w(Producto1 Producto2 Producto3 Producto4)
prices = %w[1000 2000 1500 950]
html = ''

products.zip(prices).each do |product, price|
 html += "<div class='product'><p> #{product} </p><p> Precio: #{price} </p></div>"
 html += "</div>\n"
end
puts html

#EJercicio 6



a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]

c = Array.new

c = a+b


c = a+b
c.uniq!



union = a & b



resultado = Array.new

a.zip(b).each do |a, b|
  aux = Array.new
  aux.push(a)
  aux.push(b)
  resultado.push(aux)
end
puts resultado












