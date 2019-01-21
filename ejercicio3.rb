# Crear un método que reciba el archivo peliculas.txt, lo abra y cuente la cantidad total
# de palabras. El método debe devolver este valor.
# Crear un método similar para que además reciba -como argumento- un string. En
# este caso el método debe contar únicamente las apariciones de ese string en el archivo.

def countwords

file = File.open('peliculas.txt', 'r')
resultado = file.read.split(' ').count
puts resultado
end

countwords

def countwordsarg(arg)
  count = 0
  file = File.open('peliculas.txt', 'r')
  resultado = file.read
  resultado = resultado.split(' ')
  resultado.each do |x|
  count += 1 if x == arg
  end
  puts count
end

countwordsarg('Guerra')
