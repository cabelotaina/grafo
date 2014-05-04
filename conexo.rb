# percorrendo grafo em largura para saber se é conexo.
require 'set'
def conexo?(grafo)
 v = grafo.umVertice
 ja_visitados = []
 ja_visitados.push v
 ja_visitados.each { 
  |v| a = grafo.adjacentes(v) 
  a.each{|f|
   if !ja_visitados.include?(f)
    ja_visitados.push(f)
   end
  }
 }
 ja_visitados.to_set == grafo.vertices.to_set
end


