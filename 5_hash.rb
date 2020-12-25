# Hash = también conocidos como arrays asociativos, mapas o diccionarios,
# son parecidos a los arrays en que son una colección indexada de referencias a objetos.
# Sin embargo, mientras que en los arrays los índices son números, 
# en los hashes se puede indexar con objetos de cualquier tipo.
# Operador rocket o flecha =>
capitales= {"Peru" => "Lima", "Chile" => "Santiago de Chile", "España" => "Madrid", "Argentina" => "Buenos aires", "Paises Bajos" => "Amsterdan", "Estados Unidos" => "Washington"}
capitales.methods
capitales["Peru"] # Acceder a un indice especifico, debe ser exactamente igual
capitales.size
capitales.empty?
# Aqui un hash vacio
{}.empty?
capitales.has_value? "Madrid"
capitales.has_key? "Chile"
capitales.invert # Convertir los valores a llaves y las llaves ahora serian los valores
capitales.merge({"Marte" => "Musk"}) # Para mezclar dos hashes
capitales.transform_values {|x| x.downcase}
capitales.map {|k,v| "La capital de #{k} es #{v}"}
# Convertir un arreglo con parejas de arreglos podemos generar un hash
[["a",1],[b,2]].to_h
