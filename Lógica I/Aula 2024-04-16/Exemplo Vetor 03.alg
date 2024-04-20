algoritmo "Exemplo Vetor 03"
var
texto: caracter
nomes, recebeUnimed: vetor[0..1] de caracter
quantidades: vetor[0..1] de inteiro
salariosBruto, salariosLiquido, valoresHora: vetor[0..1] de real
inicio
escreva("Digite o nome do colaborador: ")
leia(nomes[0])
escreva("Digite o valor hora: ")
leia(valoresHora[0])
escreva("Digite a quantidade de horas: ")
leia(quantidades[0])
escreva("Possui UNIMED? [sim/n�o]: ")
leia(recebeUnimed[0])

salariosBruto[0] := valoresHora[0] * quantidades[0]
se (recebeUnimed[0] = "sim") entao
   salariosLiquido[0] := salariosBruto[0] - 300 // 300 � o desconto da UNIMED
senao
   salariosLiquido[0] := salariosBruto[0]
fimse
escreval("Sal�rio Bruto: ", salariosBruto[0])
escreval("Sal�rio L�quido: ", salariosLiquido[0])

escreval("Aperte enter para continuar...")
leia(texto)

limpatela
escreva("Digite o nome do colaborador: ")
leia(nomes[1])
escreva("Digite o valor hora: ")
leia(valoresHora[1])
escreva("Digite a quantidade de horas: ")
leia(quantidades[1])
escreva("Possui UNIMED? [sim/n�o]: ")
leia(recebeUnimed[1])

salariosBruto[1] := valoresHora[1] * quantidades[1]
se (recebeUnimed[1] = "sim") entao
   salariosLiquido[1] := salariosBruto[1] - 300 // 300 � o desconto da UNIMED
senao
   salariosLiquido[1] := salariosBruto[1]
fimse
escreval("Sal�rio Bruto: ", salariosBruto[1])
escreval("Sal�rio L�quido: ", salariosLiquido[1])


fimalgoritmo
// Ex. 1: Solicitar para 5 itens seus nomes e quantidade de estoque.
// Ex. 2: Solicitar nome, nota 1, nota 2, nota 3 e percentual de frequencia para 5 alunos
//        Apresentar para cada aluno sua média e se o mesmo encontra-se aprovado ou reprovado
//        O aluno será considerado aprovado quando sua média for maior que 7 e sua frequencia 
//        maior que 75% 