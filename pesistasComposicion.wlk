class Pesista {

  var property imm // Índice de Masa muscular
  var property disciplina

  method entrenaFierros(horas) {
    disciplina.entrenaFierros(self, horas)
  }

  method entrenaCardio(kilometros) {
    disciplina.entrenaCardio(self, kilometros)
  }

  method ganarMasaPorHoras(horas) {
    imm += horas / 24
  }

  method perderMasaPorKilometros(kilometros) {
    imm = (imm - kilometros / 10).max(0)
  }

}

object crossfit {

  method entrenaFierros(pesista, horas) {
    pesista.ganarMasaPorHoras(horas)
  }

  method entrenaCardio(pesista, kilometros) {
    pesista.perderMasaPorKilometros(kilometros)
  }

}

object powerlifting {

  var property turnosDiarios = 3 // Lo decide el gimnasio, igual para todos

  method entrenaFierros(pesista, horas) {
    pesista.ganarMasaPorHoras(horas * turnosDiarios)
  }

  method entrenaCardio(pesista, kilometros) {}

}

class Fisicoculturismo {

  const dosisTestosterona = 2 // Cada fisicoculturista tiene la suya

  method entrenaFierros(pesista, horas) {
    pesista.entrenaCardio(1)
    pesista.ganarMasaPorHoras(horas ** dosisTestosterona)
  }

  method entrenaCardio(pesista, kilometros) {
    pesista.perderMasaPorKilometros(kilometros)
  }

}
