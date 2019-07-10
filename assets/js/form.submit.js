import Swal from 'sweetalert2'
import { alertMsg } from "../js/swal.custom";

$(document).ready(function () {

  $("body").on("click", ".deleteItem", function () {
    var action = $(this).attr("data-action");
    var method = $(this).attr("data-method");
    var token = $(this).attr("data-token");
    var dataString = {
      _method: method,
      _token: token
    };

    Swal.fire({
      title: '¿Está seguro?',
      html: 'Se eliminará del sistema.',
      showCancelButton: true,
      confirmButtonColor: "#5cb85c",
      cancelButtonColor: "#ed5565",
      confirmButtonText: 'Si',
      cancelButtonText: 'No, cancelar!',
      confirmButtonClass: "btn btn-success m-l-lg",
      cancelButtonClass: "btn btn-danger",
      buttonsStyling: false,
      reverseButtons: true,
      allowEscapeKey: false,
      allowOutsideClick: false,
      focusConfirm: false,
      focusCancel: false,
      showLoaderOnConfirm: true,
      preConfirm: () => {
        return new Promise(function(resolve) {
          $.ajax({
          type: "POST",
          url: action,
          dataType: "json",
          data: dataString,
          cache: false
          }).done(function (response) {
            alertMsg(response)
          }).fail(function (xhr) {
            console.log(xhr.responseText)
          })
        })
      }
    })
  })
})
