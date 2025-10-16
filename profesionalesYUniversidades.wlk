//Clase por tipo de profesional?

class ProfesionalVinculado{
    (const property universidadEstudio = )
    (var property contratadoPor = null)
    (const property nombre = )
    method provinciasHabilitadas() = [universidadEstudio.provincia()]

    method honorarios() = universidadEstudio.honorarioSugerido()

    override method toString() = self.nombre()
}

class ProfesionalDelLitoral{
    (const property nombre = )
    const provinciasHabilitadas = [entreRios, santaFe , corrientes]
    const property honorarios = 3000
    override method toString() = self.nombre()
}



class ProfesionalLibre{
    (const property nombre = )
    const property universidadEstudio = 
    const provinciasHabilitadas = []
    var honorarios = 3000

    method actualizarHonorarios(nuevoValor){
        honorarios = nuevoValor
    }

    method provinciasHabilitadas() = provinciasHabilitadas

    method habilitarNuevaProvincia(unaProvincia){
        provinciasHabilitadas.asSet().add(unaProvincia)
    }

    method inhabilitarProvincia(unaProvincia){
        provinciasHabilitadas.remove(unaProvincia)
    }
    override method toString() = self.nombre()
}

class Universidad{
    (const property honorarioSugerido = )
    (const property provincia = )
}


object buenosAires{

}

object santaFe{
    
}

object entreRios{
    
}

object corrientes{
    
}

object cordoba{
    
}
/*
class Provincia{
}
*/
