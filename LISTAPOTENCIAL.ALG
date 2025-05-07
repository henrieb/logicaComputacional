Algoritmo "listapotencial"
Var
   // Seção de Declarações das variáveis
   n: inteiro
   i: inteiro
   j: inteiro
   poten: inteiro
   list: vetor[1..100] de inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Digite o tamanho da lista: ")
   leia(n)
   para i de 1 ate n faca
      escreva("Digite o ", i, "º dígito (1 a 9): ")
      leia(list[i])
   fimpara
   poten <- 0
   para i de 1 ate n faca
      para j de 1 ate n faca
         se i <> j entao
            poten <- poten + (10 * list[i] + list[j])
         fimse
      fimpara
   fimpara
   escreval("Potencial: ", poten)
Fimalgoritmo
