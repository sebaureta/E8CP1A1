# Crear un método que lea el archivo, lo abra y devuelva la cantidad de líneas que posee.

def countlines
  file = File.open('peliculas.txt', 'r')
  puts file.readlines.length
  file.close
end

countlines
