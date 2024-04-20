algoritmo "Exemplo SE 05 Ou"
var
reserva: real
possuiFerias: logico
inicio
escreva("Digite o valor que vc tem guardado: ")
leia(reserva)
escreva("Você possuí férias? [verdadeiro/falso]: ")
leia(possuiFerias)
// TABELA VERDADE OU
// V OU V => V
// F OU V => V
// V OU F => V
// F OU F => F

se ((reserva >= 500000) ou (possuiFerias = verdadeiro)) entao
   escreva("Rumo Londres")
senao
   escreva("Partiu trabalhar")
fimse
fimalgoritmo
