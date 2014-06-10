
class Kruskal

        # Algoritmo de Kruskal para arvore geradora de custo minimo

	def initialize(grafo)

		require 'set'

		@grafo = grafo

		# E/Q - lista de arestas ordenadas por custo

		@arestas_ordenadas = grafo.arestas.sort_by{|aresta,custo| custo}

		# T - Grafo que deve conter a arvore geradora de custo minimo

		@arvore = Grafo.new 

		# VS - Floresta ... <pegar desc do livro>

		@vertices = []
	end


	def arvore_de_custo_minimo
		@grafo.vertices.each{ |v| @vertices.push(Set.new [v])}
		while @vertices.size > 1 do
			# Escolha uma aresta (v,w) em E/Q de menor custo
			# Apague (v,w) em E/Q
			aresta = @arestas_ordenadas.shift
			v = aresta[0][0]
			w = aresta[0][1]
			peso = aresta[1]
			conjunto_v = Set.new
			conjunto_w = Set.new
			@vertices.each{ |conjunto| 
				if conjunto.include?(v)
					conjunto_v = conjunto
				end
				if conjunto.include?(w)
					conjunto_w = conjunto
				end
			}

			if conjunto_v != conjunto_w
				conjunto_novo =  conjunto_v + conjunto_w
				@vertices.push conjunto_novo
				@vertices.delete conjunto_v
				@vertices.delete conjunto_w
				@arvore.adicionaVertice v
				@arvore.adicionaVertice w
				@arvore.conectar(v,w,peso)
			end

		end

		@arvore
	end
end
