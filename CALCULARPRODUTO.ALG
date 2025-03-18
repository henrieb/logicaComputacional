Algoritmo "calcularproduto"
// Pedro Henrique Simoncini
// Uma loja de departamentos deseja criar um algoritmo para
// calcular o preço final de um produto após a aplicação de
// descontos progressivos, de acordo com a quantidade comprada.
// As regras de desconto são as seguintes:
// 1. Se o cliente comprar até 10 unidades, o preço por unidade
// será mantido.
// 2. Se o cliente comprar entre 11 e 20 unidades, haverá um
// desconto de 5% no preço unitário.
// 3. Se o cliente comprar entre 21 e 50 unidades, o desconto
// será de 10%.
// 4. Se o cliente comprar mais de 50 unidades, o desconto será
// de 20%.
// 5. Além disso, se o valor final da compra (já com desconto)
// for superior a R$ 500,00, o cliente receberá um bônus
// adicional de 5% de desconto sobre o valor total.
Var
   valorproduto: real
   valorfinal: real
   qtdproduto: inteiro
Inicio
   escreval("Digite o valor do produto:")
   escreva("->")
   leia(valorproduto)
   limpatela
   escreval("Digite a quantidade:")
   escreva("->")
   leia(qtdproduto)
   limpatela
   se (qtdproduto > 10) e (qtdproduto <= 20) entao
      valorproduto <- valorproduto * 0.95
   senao
      se (qtdproduto > 20) e (qtdproduto <= 50) entao
         valorproduto <- valorproduto * 0.9
      senao
         se (qtdproduto > 50) entao
            valorproduto <- valorproduto * 0.8
         fimse
      fimse
   fimse
   valorfinal <- valorproduto * qtdproduto
   escreval("Total a pagar: ", valorfinal)
   escreval("Valor unitário: ", valorproduto)
Fimalgoritmo