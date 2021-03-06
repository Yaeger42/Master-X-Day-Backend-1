$.ajax({
    type: 'POST'
    , url: 'urlservicio'
    , data: {        
        Mensaje: document.getElementById("txtmensajeinterno").value
    }
    , success: function (result) {
        document.getElementById("txtmensajeinterno").value = ""
        while (document.getElementById('').childNodes.length !== 0) {
            document.getElementById("").childNodes.forEach(element => { element.remove() })
        }
        result.data.forEach(element => {
            document.getElementById("").insertAdjacentHTML("beforeend", "")
        })
    }
    , error: function (jqXHR, textStatus, errorThrown) {
        console.log(errorThrown)
    }
});
function editFlights() {
    $('#modalEditFlights').modal('toggle')
}
function deleteFlights() {
    $('#modalDelFlights').modal('toggle')
}
function createFlights() {
    $('#modalCreateFlights').modal('toggle')
}