import personas.*

///OBJETOS 

object cajita 
{
  var objetoInterno = remera

  method color() =rojo
  method material() =cobre
  method peso() = 500
  method pesoTotal() = self.peso() + objetoInterno.peso()

  method nuevoObjetoInterno(unObjeto) {objetoInterno = unObjeto}
}

object remera {
  /*
  var color    = rojo
  var material = lino
  var peso     = 800
  */
  method color() = rojo
  method material() = lino
  method peso() = 800
}

object pelota {
  /*
  var color    = pardo
  var material = cuero
  var peso     = 1300
  */
  method color() = pardo
  method material() = cuero
  method peso() = 1300
}

object biblioteca {
  /*
  var color    = verde
  var material = madera
  var peso     = 8000
  */
  method color() = verde
  method material() = madera
  method peso() = 8000
}

object muñeco {
  /*
  var color    = celeste

  var material = vidrio
  */

  var peso = 0
  
  method color() = celeste
  method material() = vidrio
  method peso()= peso
  method peso(unPeso) {peso = unPeso}
}

object placa {

  var peso = 0
  var color = pardo
  method peso() = peso
  method peso(unPeso) {peso = unPeso}
  method color() = color
  method color(unColor) {color = unColor}
  method material() = cobre
}

//COLORES
object rojo
{
method esFuerte() = true
}

object verde
{
method esFuerte() {return  true}
}

object pardo
{
method esFuerte() {
return  false
}
}
object celeste
{
method esFuerte() {
return  false
}
}
////MATERIALES

object cobre
{
method brilla() {
return  true
}
}

object vidrio
{
method brilla() {
return  true
}
}

object lino
{
method brilla() {
return  false
}
}
object madera
{
method brilla() {
return  false
}
}
object cuero      
{
method brilla() {
return  false
}
}