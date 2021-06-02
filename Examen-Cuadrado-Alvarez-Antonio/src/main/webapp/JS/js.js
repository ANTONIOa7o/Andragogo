
//cuadros
$(".hover").mouseleave(
  function () {
    $(this).removeClass("hover");
  }
);
//movimiento de tarjetas
box.classList.add('move');
var box = document.querySelector('.box');
box.addEventListener('transitionend', onTransitionEnd, false);
function onTransitionEnd() {

}
//validaciones
function DatosTotal() {

  var ID = id.value;
  var Titulo = titulo.value;
  var Autor = autor.value;
  var Editorial = editorial.value;
  var ISBN = isbn.value;
  var Publicacion = publicacion.value;
  var Precio = precio.value;
  var FechaAlta = alta.value;

  document.getElementById.innerHTML = console.log
(`${("Numero Id:") + ID}
${"Titulo del libro:"}${Titulo}
${'Autor:'}${Autor}
${'Editorial:'}${Editorial}
${'Referencia ISBN:'}${ISBN}
${'Año Publicación'}${Publicacion}
${'PVP:'}${Precio}${'€'}
${'Fecha de Alta:'}${FechaAlta}
`);
}