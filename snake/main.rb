# Algunas cosas de ruby
# Bundler: https://bundler.io/ Gema para manejar dependendencias(otras gemas) en proyectos de ruby
# RubyGems: https://rubygems.org Gemas publicas
# Ruby Toolbox: https://www.ruby-toolbox.com/ Gemas Populares por categoria

# Ejemplo
# gem install bundler
# mkdir snake
# cd snake/
# bundle init
# - Agregar las gemas deseadas al archivo Gemfile
# Instalar con el comando bundle install
# Listo!!!, con esto hemos instalado nuevas dependencias de nuestro proyecto usando bundler.
require 'faker'

puts Faker::Name.name
