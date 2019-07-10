import Swal from 'sweetalert2'

let btnClass = (data) => {
  if (data.status == true) {
    return 'btn btn-success'
  } else {
    return 'btn btn-danger'
  }
}
let btnColor = (data) => {
  if (data.status == true) {
    return '#5cb85c'
  } else {
    return '#ed5565'
  }
}
export const show_loading = () => {
  Swal.fire({
    html: 'Aguarde un instante...',
    allowEscapeKey: false,
    allowOutsideClick: false,
    onOpen: function () {
      Swal.showLoading()
    }
  })
}

export const alertMsg = (data) => {
  Swal.fire({
    title: data.title,
    html: data.message,
    showCancelButton: false,
    animation: true,
    focusConfirm: false,
    focusCancel: false,
    buttonsStyling: false,
    allowEscapeKey: false,
    allowOutsideClick: true,
    confirmButtonClass: btnClass(data),
    confirmButtonColor: btnColor(data)
  }).then(function (result) {
    if (result.value) {
      if (data.redirUrl != null) {
        $(location).prop('href', data.redirUrl);
      } else {
        Swal.close();
      }
    }
  });
}
