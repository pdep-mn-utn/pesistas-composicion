class Pesista {

  var property imm // Índice de Masa muscular
  var property disciplina

  method entrenaFierros(horas) {
    imm += disciplina.masaPorFierros(horas)
  }

  method entrenaCardio(kilometros) {
    imm = (imm - disciplina.masaPorCardio(kilometros)).max(0)
  }

}

object crossfit {
  method masaPorFierros(horas) = horas / 24
  method masaPorCardio(kilometros) = kilometros / 10
}

object powerlifting {
  const turnosDiarios = 3
  method masaPorFierros(horas) = horas * turnosDiarios / 24
  method masaPorCardio(kilometros) = 0
}

object fisicoculturismo {
  const dosisTestosterona = 2
  method masaPorFierros(horas) = horas ** dosisTestosterona / 24
  method masaPorCardio(kilometros) = kilometros / 10
}