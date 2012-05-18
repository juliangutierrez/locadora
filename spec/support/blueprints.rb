require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end
Cliente.blueprint do
	nome {"cliente1"}	
end

Genero.blueprint do
	nome {"genero1"}
end

Filme.blueprint do
	nome {"filme1"}
	qtde {2}
	genero
end

Aluguel.blueprint do
	cliente
	filmes(3)
end

Aluguel.blueprint(:sem_filmes) do
	cliente
end