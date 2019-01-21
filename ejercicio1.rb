# Crear un método que reciba dos strings, este método creará un archivo index.html y pondrá como párrafo cada uno de los strings recibidos.
# Crear un método similar al anterior, que además pueda recibir un arreglo. Si el arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada uno de los elementos.
# Crear un tercer método que además pueda recibir un color. Agregar color de fondo a los párrafos.
# El retorno de los métodos debe devolver nil.

def creaindex(arg1, arg2)
  save = File.open("index.html", "w") do |file|
    file.puts "<p>#{arg1}</p> \n<p>#{arg2}</p>"
  end
end

creaindex('Fiorella', 'Sebastian')
