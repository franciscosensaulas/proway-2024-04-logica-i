algoritmo "Exemplo função 02"
var
nome: caracter
peso, altura, imc: real

procedimento solicitarInformacoes()
inicio
escreva("Digite o nome: ")
leia(nome)
escreva("Digite o peso: ")
leia(peso)
escreva("Digite a altura: ")
leia(altura)
fimprocedimento

funcao calcularImc(): real
var
resultado: real
inicio
resultado := peso / (altura * altura)
retorne resultado
fimfuncao

funcao obterStatus(): caracter
var
status: caracter
inicio
se imc < 18.5 entao
   status := "Abaixo do peso"
senao
   se imc < 30 entao
     status := "Peso normal"
   senao
     status := "Obesidade"
   fimse
fimse
retorne status
fimfuncao


inicio
solicitarInformacoes()
imc := calcularImc()
escreval("IMC: ", imc)
escreval("Status: ", obterStatus())
fimalgoritmo
