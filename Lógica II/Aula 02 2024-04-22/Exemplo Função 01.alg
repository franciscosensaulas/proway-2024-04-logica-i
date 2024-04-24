algoritmo "Exemplo Função 01"
var
numero1, numero2, soma: inteiro

// procedimento: vai executar um determinado trecho de código
// funcao: vai executar um determinado trecho de código retornando uma informação

// funcao <nomeFuncao>(parametros): <tipoRetorno>
funcao somar(numero1: inteiro; numero2: inteiro): inteiro
var
resultado: inteiro
inicio
resultado := numero1 + numero2
retorne resultado
fimfuncao

inicio
soma := somar(4, 9)
escreval("A soma é: ", soma)
fimalgoritmo
