load "grafo.rb"
load "kruskal.rb"

grafo = Grafo.new

grafo.adicionaVertice "v1"
grafo.adicionaVertice "v2"
grafo.adicionaVertice "v3"
grafo.adicionaVertice "v4"
grafo.adicionaVertice "v5"

grafo.conectar "v1","v2", 17
grafo.conectar "v1","v3", 12 
grafo.conectar "v2","v3", 6
grafo.conectar "v4","v2", 13
grafo.conectar "v5","v2", 5
grafo.conectar "v3","v4", 6

# Obtendo arvore de custo minimo - por meio do algoritmo de kruskal
p "Buscamos resolver o problema das Tabas que pode ser encontrado em <http://www.inf.ufsc.br/grafos/problemas/rede-otica-tabas.html>:"
p ""
p "G (V,A)"
p ""
p "V = { v|v é uma taba}"
p ""
p "A = { (v1,v2)|Há viabilidade de conectar a Taba v1 com a taba v2 por uma fibra óptica}"

p "conjunto de vertices:"
p ""
grafo.vertices.each{|v| p v}
p ""
p "conjunto de arestas:" 
p ""
grafo.arestas.each{|a| p a}

arvore = Kruskal.new grafo
p ""

p "Aplicando o algoritimo de krukal encontramos o seguinte conjunto de arestas que conectados oferece a arvore de custo minimo para conexão das tabas por meio de fibra óptica"
p ""
(arvore.arvore_de_custo_minimo).arestas.each{|a| p a}

