Algoritmo "calcularproduto"
// Pedro Henrique Simoncini
// Uma loja de departamentos deseja criar um algoritmo para
// calcular o pre�o final de um produto ap�s a aplica��o de
// descontos progressivos, de acordo com a quantidade comprada.
// As regras de desconto s�o as seguintes:
// 1. Se o cliente comprar at� 10 unidades, o pre�o por unidade
// ser� mantido.
// 2. Se o cliente comprar entre 11 e 20 unidades, haver� um
// desconto de 5% no pre�o unit�rio.
// 3. Se o cliente comprar entre 21 e 50 unidades, o desconto
// ser� de 10%.
// 4. Se o cliente comprar mais de 50 unidades, o desconto ser�
// de 20%.
// 5. Al�m disso, se o valor final da compra (j� com desconto)
// for superior a R$ 500,00, o cliente receber� um b�nus
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
   escreval("Valor unit�rio: ", valorproduto)
Fimalgoritmo