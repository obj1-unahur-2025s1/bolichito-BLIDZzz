import objetos.*
import personas.*


object bolichito{
    var laVidriera = vidriera
    method laVidriera() = vidriera
    method vidriera(unaVidriera) {laVidriera = unaVidriera}

    var elMostrador = mostrador
    
    method elMostrador() = mostrador
    method mostrador(unMostrador) {elMostrador = unMostrador}

    method esBrillante() {
        return laVidriera.objeto().color().brilla() and elMostrador.objeto().color().brilla()
    }

    method esMonocromatico()
    {
        return laVidriera.objeto().color() == elMostrador.objeto().color() 
    }

    method esEquilibrado() {
        return laVidriera.objeto().peso() < elMostrador.objeto().peso()
    }

    method objetoExhibido(unColor) {

        return (laVidriera.objeto().color() == unColor) || (elMostrador.objeto().color() == unColor)

    }

    method puedeMejorar() {
       return !self.esEquilibrado() && self.esMonocromatico()
    }

    method puedeOfrecerle(unaPersona) {
        return unaPersona.leGusta(laVidriera.objeto()) or unaPersona.leGusta(elMostrador.objeto())
    }

    method intercambiarObjeto(){
        const aux = elMostrador.objeto()
        elMostrador.objeto(laVidriera.objeto())
        laVidriera.objeto(aux)
    }

    method intercambiarPlus() {
        self.intercambiar(laVidriera.objeto(), elMostrador.objeto())
    }

    method intercambiar(unObjeto, otroObjeto){
        laVidriera.objeto(otroObjeto)  
        elMostrador.objeto(unObjeto) 
    }
    
}

object vidriera{
    var objeto = remera
    method objeto() = objeto
    method objeto(unObjeto) {objeto = unObjeto}
}

object mostrador{
    var objeto = pelota
    method objeto() = objeto
    method objeto(unObjeto) {objeto = unObjeto}
}

/*
object bolichito2{
    var laVidriera2 = remera
    method laVidriera(unObjeto)
}

*/