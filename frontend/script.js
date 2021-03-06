function editFlights() {
    $('#modalEditFlights').modal('toggle')
}
function deleteFlights() {
    document.getElementById("deleteidlabel").innerText = "1"
    $('#modalDelFlights').modal('toggle')
}
function createFlights() {
    $('#modalCreateFlights').modal('toggle')
}

function loadData() {
    $.ajax({
        // , data: {
        //     Mensaje: document.getElementById("txtmensajeinterno").value
        // }
        type: 'POST'
        , url: 'urlservicio'
        , success: function (result) {            
            while (document.getElementById('totalFlightsTable').childNodes.length !== 0) {
                document.getElementById("totalFlightsTable").childNodes.forEach(element => { element.remove() })
            }
            result.data.forEach(element => {
                document.getElementById("totalFlightsTable").insertAdjacentHTML("beforeend", '<tr><th scope="row">'+element.id+'</th><td>'+element.city+'</td><td>'+element.country+'</td><td>'+element.flightsh+'</td><td><button type="button" class="btn btn-primary fas fa-edit" onclick="editFlights('+element+')" /></td><td><button type="button" class="btn btn-primary fas fa-trash" onclick="deleteFlights('+element+')" /></td></tr>')
            })
        }
        , error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown)
        }
    });
    $.ajax({
        // , data: {
        //     Mensaje: document.getElementById("txtmensajeinterno").value
        // }
        type: 'POST'
        , url: 'urlservicio'
        , success: function (result) {            
            while (document.getElementById('HTFlightsTable').childNodes.length !== 0) {
                document.getElementById("HTFlightsTable").childNodes.forEach(element => { element.remove() })
            }
            result.data.forEach(element => {
                document.getElementById("HTFlightsTable").insertAdjacentHTML("beforeend", '<tr><th scope="row">'+element.id+'</th><td>'+element.city+'</td><td>'+element.country+'</td><td>'+element.flightsh+'</td><td><button type="button" class="btn btn-primary fas fa-edit" onclick="editFlights('+element+')" /></td><td><button type="button" class="btn btn-primary fas fa-trash" onclick="deleteFlights('+element+')" /></td></tr>')
            })
        }
        , error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown)
        }
    });
    $.ajax({
        // , data: {
        //     Mensaje: document.getElementById("txtmensajeinterno").value
        // }
        type: 'POST'
        , url: 'urlservicio'
        , success: function (result) {            
            while (document.getElementById('ActiveFlightsTable').childNodes.length !== 0) {
                document.getElementById("ActiveFlightsTable").childNodes.forEach(element => { element.remove() })
            }
            result.data.forEach(element => {
                document.getElementById("ActiveFlightsTable").insertAdjacentHTML("beforeend", '<tr><th scope="row">'+element.id+'</th><td>'+element.city+'</td><td>'+element.country+'</td><td>'+element.flightsh+'</td><td><button type="button" class="btn btn-primary fas fa-edit" onclick="editFlights('+element+')" /></td><td><button type="button" class="btn btn-primary fas fa-trash" onclick="deleteFlights('+element+')" /></td></tr>')
            })
        }
        , error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown)
        }
    });
    $.ajax({
        // , data: {
        //     Mensaje: document.getElementById("txtmensajeinterno").value
        // }
        type: 'POST'
        , url: 'urlservicio'
        , success: function (result) {            
            while (document.getElementById('OurPassengers').childNodes.length !== 0) {
                document.getElementById("OurPassengers").childNodes.forEach(element => { element.remove() })
            }
            result.data.forEach(element => {
                document.getElementById("OurPassengers").insertAdjacentHTML("beforeend", '<tr><th scope="row">'+element.id+'</th><td>'+element.city+'</td><td>'+element.country+'</td><td>'+element.flightsh+'</td><td><button type="button" class="btn btn-primary fas fa-edit" onclick="editFlights('+element+')" /></td><td><button type="button" class="btn btn-primary fas fa-trash" onclick="deleteFlights('+element+')" /></td></tr>')
            })
        }
        , error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown)
        }
    });
}