//Funcion donde inicializamos el dialog
function PageInit() {
  $dialog = $('<div> </div>')
  	.dialog({
  	  autoOpen: false,
  	  title: 'Información',
      modal: true
	  });
}

//Funcion que muestra el div flotante con el mensaje
function MostrarMensajeModal(mensajeTexto) {
  $dialog.text(mensajeTexto);
  $dialog.dialog('open');
}