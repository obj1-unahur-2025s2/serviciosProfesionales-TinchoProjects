import profesionalesYUniversidades.*

class Empresa{
    const property profesionalesContratados = []
    const property profesionalesCaros = #{}
    const property universidadesFormadoras = #{}

    method profesionalMasBarato() = profesionalesContratados.min({p => p.honorarios()})

    method esDeProfesionalesAcotados() = profesionalesContratados.forEach({p => p.provinciasHabilitadas().size()}) <= 3 
}