load "grafo.rb"
grafo = Grafo.new

grafo.adicionaVertice "v1"
grafo.adicionaVertice "v2"
grafo.adicionaVertice "v3"
grafo.adicionaVertice "v4"
grafo.adicionaVertice "v5"
grafo.adicionaVertice "v6"
grafo.adicionaVertice "v7"

grafo.conectar "v1","v2", 20
grafo.conectar "v2","v3", 15
grafo.conectar "v3","v4", 3
grafo.conectar "v4","v5", 17
grafo.conectar "v5","v6", 28
grafo.conectar "v6","v1", 23
grafo.conectar "v1","v7", 1
grafo.conectar "v2","v7", 4
grafo.conectar "v3","v7", 9
grafo.conectar "v4","v7", 16
grafo.conectar "v5","v7", 25
grafo.conectar "v6","v7", 36

# Algoritmo de Kruskal para arvore geradora de custo minimo

require 'set'

# E/Q - lista de arestas ordenadas por custo
arestas = grafo.arestas
arestas_ordenadas = arestas.sort_by{|aresta,custo| custo}
# T
arvore = Grafo.new 
# VS 
vertices = []
grafo.vertices.each{ |v| vertices.push(Set.new [v])}




while vertices.size > 1 do
 # Escolha uma aresta (v,w) em E/Q de menor custo
 # Apague (v,w) em E/Q
 aresta = arestas_ordenadas.shift
 v = aresta[0][0]
 w = aresta[0][1]
 peso = aresta[1]
 conjunto_v = Set.new
 conjunto_w = Set.new
 vertices.each{ |conjunto| 
	if conjunto.include?(v)
		conjunto_v = conjunto
	end
	if conjunto.include?(w)
		conjunto_w = conjunto
	end
 }

 if conjunto_v != conjunto_w
     conjunto_novo =  conjunto_v + conjunto_w
     vertices.push conjunto_novo
     vertices.delete conjunto_v
     vertices.delete conjunto_w
     arvore.adicionaVertice v
     arvore.adicionaVertice w
     arvore.conectar(v,w,peso)
 end
 
end

arvore
