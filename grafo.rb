class Grafo
	def initialize
		# usuario deve passar argumento informando se o grafo é direcionado ou não?
		# atualmente o algoritimo é apenas para grafo simples		
		@vertices = Hash.new
		@arestas = Hash.new
	end
	# "Adiciona um novo vértice em G"
	# G.adicionaVértice(v) 	
	def adicionaVertice(vertice)
		@vertices[vertice] = Hash.new	
	end
	# "Remove um  vértice de G, juntamente com todas as conexões"
	# G.removeVértice(v)
	def removeVertice(vertice)
		# iterar sobre o vertice e ver quais vertices devem remover uma entrada dele;
		@vertices[vertice].keys.each{|v| @vertices[v].delete vertice}
		@vertices.delete vertice
	end
	# "Conecta os vértices v1 e v2 em G"
	# G.conecta(v1,v2)
	def conectar(vertice1,vertice2, peso)
		# se for usarmos dijkstra temos que passar peso positivo como parametro.
		@vertices[vertice1][vertice2] = peso
		@vertices[vertice2][vertice1] = peso
		@arestas[[vertice1,vertice2]] = peso
	end

	def arestas
		@arestas
	end

	# "Desconecta os vértices v1 e v2 em G"
	# G.desconecta(v1,v2)
	def desconectar(vertice1, vertice2)
		@vertices[vertice1].delete vertice2
		@vertices[vertice2].delete vertice1	
	end
	# "Retorna o número de vértices de G"
	# G.ordem → Inteiro 
	def ordem
		@vertices.size
	end
	# "Retorna um conjunto contendo os vértices de G"
	# G.vértices → Conjunto 
	def vertices
		@vertices.keys
	end
	# "Retorna um vértice qualquer de G"
	# G.umVértice → Vertice	
	def umVertice
		@vertices.keys[rand(@vertices.size)]
	end
	# "Retorna um conjunto contendo os vértices adjacentes a v em G"
	# G.adjacentes(v)Conjunto
	def adjacentes(vertice)
		@vertices[vertice]#.keys
	end
	# "Retorna o número de vértices adjacentes a v em G"
	# G.grau(v)Inteiro
	def grau(vertice)
		if @vertices[vertice][vertice]
			@vertices[vertice].size+1
		else
			@vertices[vertice]
		end
	end

end
