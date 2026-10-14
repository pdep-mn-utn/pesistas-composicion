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

class Disciplina {

  method entrenaFierros(pesista, horas) {
    pesista.ganarMasaPorHoras(self.cantidadDeHoras(horas))
  }

  method entrenaCardio(pesista, kilometros) {
    pesista.perderMasaPorKilometros(kilometros)
  }

  method cantidadDeHoras(horas)
}

object crossfit inherits Disciplina {
  override method cantidadDeHoras (horas) = horas


}

object powerlifting inherits Disciplina {

  var property turnosDiarios = 3 // Lo decide el gimnasio, igual para todos

  override method cantidadDeHoras (horas) = horas * turnosDiarios

  override method entrenaCardio(pesista, kilometros) {}

}

class Fisicoculturismo inherits Disciplina {

  const dosisTestosterona = 2 // Cada fisicoculturista tiene la suya

  override method entrenaFierros(pesista, horas) {
    pesista.entrenaCardio(1)
    super(pesista,horas)
  }

  override method cantidadDeHoras(horas) = horas ** dosisTestosterona

}
