import profesionalesYUniversidades.*

class Empresa{
    const property profesionalesContratados = []
    const property profesionalesCaros = #{}
    const property universidadesFormadoras = #{}
    (const property nombre = )

    method contratarA(profesional){
        if (!profesionalesContratados.contains(profesional)) {
            profesionalesContratados.add(profesional)
            profesional.contratadoPor(self)
        }
    }

    method profesionalMasBarato() = profesionalesContratados.min({p => p.honorarios()})

    method esDeProfesionalesAcotados(){
            return profesionalesContratados.all({p => p.provinciasHabilitadas().size() <= 3})
    }
    override method toString() = self.nombre()
}

/*
const calsa = new Empresa(nombre = "Calsa")
const buenosAires = new Provincia(nombre = "Buenos Aires")
const unahur = new Universidad(honorarioSugerido = 2500 , provincia = buenosAires , nombre = "UNAHUR")
const juan = new ProfesionalVinculado(universidadEstudio = unahur , nombre = "Juan")
const felipe = new ProfesionalLibre(nombre = "Felipe" , universidadEstudio = unahur)
const corrientes = new Provincia(nombre = "Corrientes")
const cordoba = new Provincia(nombre = "Cordoba")
const entreRios = new Provincia(nombre = "Entre Rios")
felipe.habilitarNuevaProvincia(corrientes)
felipe.habilitarNuevaProvincia(cordoba)
felipe.habilitarNuevaProvincia(entreRios)
calsa.contratarA(felipe)
calsa.contratarA(juan)
calsa.esDeProfesionalesAcotados()
*/