algoritmo "Exemplo SE 03"
var
nome: caracter
preco: real
desconto: real
total: real // 0
inicio
escreva("Digite o nome do produto: ")
leia(nome)
escreva("Digite o pre�o do produto: ")
leia(preco)
// Tabela Verdade E
// V e V => V
// F e V => F
// V e F => F
// F e F => F

// preco 100 at� 300, desconto 5 reais
se ((preco >= 100) e (preco <= 300)) entao
   escreval("Desconto: 5 reais")
   total := preco - 5
   escreval("Total: ", total)
senao
   // preco 301 at� 600, desconto 10 reais
   se ((preco > 300) e (preco <= 600)) entao
      escreval("Desconto: 10 reais")
      total := preco - 10
      escreval("Total: ", total)
   senao
      // pre�o 601 at� 1000, desconto 20 reais
      se ((preco > 600) e (preco <= 1000)) entao
         escreval("Desconto: 20 reais")
         total := preco - 20
         escreval("Total: ", total)
      senao
         escreval("Sem desconto")
         total := preco
         escreval("Total: ", preco)
      fimse
   fimse
fimse

fimalgoritmo
