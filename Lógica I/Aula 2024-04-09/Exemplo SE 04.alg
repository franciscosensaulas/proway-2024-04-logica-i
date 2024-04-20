algoritmo "Exemplo SE 04"
var
numero: inteiro
inicio
escreva("Digite um n�mero: ")
leia(numero)

// Verificar se o n�mero digitado � �mpar
// Para tal verificamos se o resto da divis�o por 2 � diferente de zero
se(numero mod 2 <> 0) entao
   escreval("N�mero �mpar")
senao
   escreval("N�mero par")
fimse

// Verificar se o n�mero digitado � par
se (numero mod 2 = 0) entao
   escreval("N�mero par")
senao
   escreval("N�mero �mpar")
fimse

fimalgoritmo

escreva("Digite um n�mero: ")
leia(numero)

// https://dontpad.com/franciscosensaulas
Nome: Francisco
Idade: 30
2024 - 30 => 1994
1990 até 1999 => 90

// Ex 01: Solicitar o nome e a idade
//    Calcular o ano de nascimento(NÃO PODE PEDIR PARA O USUÁRIO A DATA DE NASCIMENTO)
//    Apresentar se nasceu na década de 50, 60, 70, 80, 90, anos 2000, anos 2010
// Ex 02: Solicitar o peso, altura
//    Calcular o imc (peso / altura²)
//    Apresentar a classificação de acordo com IMC (procurar tabela no Google)
// Ex 03: Solicitar nome, quantidade e preço unitário
//    Se a quantidade for acima de 1 mil até 1500 peças dar um desconto de 5% 
//    Se a quantidade for acima de 1500 até 3000 peças dar um desconto de 10%
//    Se a quantidade for acima de 3 mil peças dar um desconto de 15%
//    Calcular o total dando o desconto de acordo com a quantidade
//    Apresentar o total e qual foi o valor do desconto
//    Como calcular o desconto?
//       Para calcular 60% de desconto em uma compra de R$ 250
//       podemos fazer (60 * 250) / 100 => o desconto seria de 150 reais