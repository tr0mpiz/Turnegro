var turnoModal = document.getElementById('turnoModal')
turnoModal.addEventListener('show.bs.modal', function (event) {
  // Button that triggered the modal
  let button = event.relatedTarget
  // Extract info from data-bs-* attributes
  let numeroDeTicket = button.getAttribute('data-bs-numero')
  let id = button.getAttribute('data-bs-id')
  let inputId = turnoModal.querySelector('#id_turno_modal')
  inputId.value = id
  // If necessary, you could initiate an AJAX request here
  // and then do the updating in a callback.
  //
  // Update the modal's content.
  let inputTextNumero = turnoModal.querySelector('#turnoTexto')
  inputTextNumero.value = numeroDeTicket
})

function llamarNumero() {
  //obtene el nombre del puesto
  let puesto = 1;
  //obtene el id del turno
  alert("Llamando número");
  // Emite un evento personalizado llamado "llamarNumero" al servidor
  socket.emit("llamarNumero", "Datos que deseas enviar al servidor");
}