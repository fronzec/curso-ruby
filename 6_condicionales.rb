# Si necesitamos hacer deciciones podemos usar las condicionales
# Condicionales
is_authenticaded = false
role = :admin

# If
if is_authenticaded
    puts "Pantalla de bienvenida"
else
    puts "Pantalla de login"
end
# If Else and Else-If
if role == :admin
    puts "Admin"
elsif role == :super_admin
    puts "Super admin"
else
    puts "otro"
end
