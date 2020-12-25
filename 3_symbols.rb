# Los simbols son tipos de datos especiales para declarar constantes o enums y ahorrar memoria
color = :red # Variable que se le asigno el simbolo red, se usa el simbolo :
color1 = :red

# Los simbolos con el mismo valor hacen referencia al mismo objeto en memoria
color.object_id
color1.object_id

:red.class
:red.methods
:red.to_s       # Para convertir el simbolo a string
