Algoritmo "notasaluno"
// Pedro Henrique Simoncini
// A nota final de uma disciplina de um curso é calculada com base
// em provas presenciais (AP1, AP2 e se for necessário AP3) e provas
// a distância (AD1 e AD2). As notas variam entre 0 e 10.0 inclusive.
// As fórmulas para calcular as notas parciais são:
// N1 = 0.8 * AP1 + 0.2 * AD1
// N2 = 0.8 * AP2 + 0.2 * AD2
// A nota parcial (NP) é igual a:
// NP = (N1 + N2) / 2.0
// O aluno é aprovado se NP >= 6.0. Esta será a nota do aluno na
// disciplina e termina o processo de avaliação.
// Caso não seja aprovado ele pode fazer uma terceira avaliação
// presencial (AP3). A nota final (NF) será a média aritmética entre
// AP3 e a maior das notas (N1 ou N2). O aluno é aprovado se NF >= 5.0.
// Esta será a nota na disciplina.
// Caso o aluno falte a uma prova ele recebe a nota zero.
// Considere que as notas fornecidas são sempre válidas. Considere
// também que não existe uma função pronta que calcule o maior de dois
// valores. Escreva um programa que leia as notas de um aluno e imprima
// a sua nota na disciplina e se ele foi aprovado ou reprovado.
Var
   ad1: real
   ad2: real
   ap1: real
   ap2: real
   ap3: real
   n1: real
   n2: real
   np: real
   nf: real
Inicio
   escreval("Digite a nota da AD1: ")
   escreval("(Caso não tenha entregue, o valor é 0)")
   escreva("->")
   leia(ad1)
   limpatela
   escreval("Digite a nota da AD2: ")
   escreval("(Caso não tenha entregue, o valor é 0)")
   escreva("->")
   leia(ad2)
   limpatela
   escreval("Digite a nota da AP1: ")
   escreval("(Caso tenha faltado à prova, o valor é 0)")
   escreva("->")
   leia(ap1)
   limpatela
   escreval("Digite a nota da AP2: ")
   escreval("(Caso tenha faltado à prova, o valor é 0)")
   escreva("->")
   leia(ap2)
   limpatela
   n1 <- 0.8 * ap1 + 0.2 * ad1
   n2 <- 0.8 * ap2 + 0.2 * ad2
   np <- (n1 + n2)/2
   se (np >= 6) entao
      escreval("Você está aprovado!")
      escreval("Nota final: ", np)
   senao
      escreval("Sua nota não é suficiente!")
      escreval("Digite a nota de sua AP3")
      escreval("(Caso tenha faltado à prova, o valor é 0)")
      leia(ap3)
      limpatela
      se (n1 > n2) entao
         nf <- (n1 + ap3)/2
      senao
         se (n2 > n1) entao
            nf <- (n2 + ap3)/2
         senao
            nf <- (n1 + ap3)/2
         fimse
      fimse
      se (nf >= 5) entao
         escreval("Você está aprovado!")
         escreval("Nota final: ", nf)
      senao
         escreval("Você está reprovado.")
         escreval("Nota final: ", nf)
      fimse
   fimse
Fimalgoritmo