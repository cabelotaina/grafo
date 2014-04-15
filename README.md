Grafo
=====

Implementação da classe grafo, grafo não orientado, em ruby e solução de um problema por meio da implementação do algoritmo de caminho minimo de Dikjstra ;)

Definição
---------

De acordo com o professor Antonio Carlos Mariani INE/UFSC um *grafo*, não orientado, visite [página com representações de grafos](http://www.inf.ufsc.br/grafos/represen/), possui as seguintes ações básicas:

G.adicionaVértice(v) 	"Adiciona um novo vértice em G"
G.removeVértice(v) 	"Remove um  vértice de G, juntamente com todas as conexões"
G.conecta(v1,v2) 	"Conecta os vértices v1 e v2 em G"
G.desconecta(v1,v2) 	"Desconecta os vértices v1 e v2 em G"
G.ordem Inteiro 	"Retorna o número de vértices de G"
G.vértices Conjunto 	"Retorna um conjunto contendo os vértices de G"
G.umVértice Vertice 	"Retorna um vértice qualquer de G"
G.adjacentes(v)Conjunto "Retorna um conjunto contendo os vértices adjacentes a v em G"
G.grau(v)Inteiro 	"Retorna o número de vértices adjacentes a v em G"

Descrição
---------

Neste trabalho implementamos uma classe Grafo em ruby, esta classe será utilizada pelo algoritimo de caminho minimo de Dikjstra para solucionar o problema X.

TODO
----

* Implementar o algoritimo de Dijkstra para calculo do caminho minimo;
* Permitir adicionar peso durante a inserção de uma nova aresta;
* Definir um problema para ser tratado com este algoritimo, [lista de problemas](http://www.inf.ufsc.br/grafos/problemas/); 
