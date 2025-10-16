//Clase por tipo de profesional?

class ProfesionalVinculado{
    const property universidadEstudio = 
    var contratadoPor = 

    method contratadoPor(empresa){
        contratadoPor = empresa
    }

    method provinciasHabilitadas() = [universidadEstudio.provincia()]

    method honorarios() = universidadEstudio.honorarioSugerido()
}

class ProfesionalDelLitoral{
    const provinciasHabilitadas = [entreRios, santaFe , corrientes]
    const property honorarios = 3000
}



class ProfesionalLibre{
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
