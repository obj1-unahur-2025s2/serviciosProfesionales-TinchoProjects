import profesionalesYUniversidades.*

class Empresa{
    const property profesionalesContratados = []
    const property profesionalesCaros = #{}
    const property universidadesFormadoras = #{}

    method contratarA(profesional){
        if (!profesionalesContratados.contains(profesional)) {
            profesionalesContratados.add(profesional)
            profesional.contratadoPor(self)
        }
    }

    method profesionalMasBarato() = profesionalesContratados.min({p => p.honorarios()})

    method esDeProfesionalesAcotados() = profesionalesContratados.forEach({p => p.provinciasHabilitadas().size()}) <= 3 
}