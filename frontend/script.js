function editFlights() {
    $('#modalEditFlights').modal('toggle')
}
function deleteFlights(element) {
    document.getElementById("deleteidlabel").innerText = "1"
    $('#modalDelFlights').modal('toggle')
}
function createFlights(element) {
    $('#modalCreateFlights').modal('toggle')
}
function loadData() {
    $.ajax({
        type: 'GET'
        , url: 'localhost:5000/flights'
        , success: function (result) {
            while (document.getElementById('totalFlightsTable').childNodes.length !== 0) {
                document.getElementById("totalFlightsTable").childNodes.forEach(element => { element.remove() })
            }
            result.all_flights.forEach(element => {
                document.getElementById("totalFlightsTable").insertAdjacentHTML("beforeend", '<tr><th scope="row">' + element.id + '</th><td>' + element.desinationId + '</td><td>' + element.originId + '</td><td>' + element.originId + '</td><td><button type="button" class="btn btn-primary fas fa-edit" onclick="editFlights(' + element + ')" /></td><td><button type="button" class="btn btn-primary fas fa-trash" onclick="deleteFlights(' + element + ')" /></td></tr>')
            })
        }
        , error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown)
        }
    });
    $.ajax({
        type: 'GET'
        , url: 'urlservicio'
        , success: function (result) {
            while (document.getElementById('edit_origin_field').childNodes.length !== 0) {
                document.getElementById("edit_origin_field").childNodes.forEach(element => { element.remove() })
            }
            result.data.forEach(element => {
                document.getElementById("edit_origin_field").insertAdjacentHTML("beforeend", '<option value="'+element.id+'">'+element.city+', '+element.country+'</option>')
            })
            while (document.getElementById('create_origin_field').childNodes.length !== 0) {
                document.getElementById("create_origin_field").childNodes.forEach(element => { element.remove() })
            }
            result.data.forEach(element => {
                document.getElementById("create_origin_field").insertAdjacentHTML("beforeend", '<option value="'+element.id+'">'+element.city+', '+element.country+'</option>')
            })
        }
        , error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown)
        }
    });
    $.ajax({
        type: 'GET'
        , url: 'urlservicio'
        , success: function (result) {
            while (document.getElementById('edit_destination_field').childNodes.length !== 0) {
                document.getElementById("edit_destination_field").childNodes.forEach(element => { element.remove() })
            }
            result.data.forEach(element => {
                document.getElementById("edit_destination_field").insertAdjacentHTML("beforeend", '<option value="'+element.id+'">'+element.city+', '+element.country+'</option>')
            })
            while (document.getElementById('create_destination_field').childNodes.length !== 0) {
                document.getElementById("create_destination_field").childNodes.forEach(element => { element.remove() })
            }
            result.data.forEach(element => {
                document.getElementById("create_destination_field").insertAdjacentHTML("beforeend", '<option value="'+element.id+'">'+element.city+', '+element.country+'</option>')
            })
        }
        , error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown)
        }
    });
    $.ajax({
        type: 'GET'
        , url: 'urlservicio'
        , success: function (result) {
            while (document.getElementById('edit_boarding_gate_input').childNodes.length !== 0) {
                document.getElementById("edit_boarding_gate_input").childNodes.forEach(element => { element.remove() })
            }
            result.data.forEach(element => {
                document.getElementById("edit_boarding_gate_input").insertAdjacentHTML("beforeend", '<option value="'+element.id+'">'+element.name+'</option>')
            })
            while (document.getElementById('create_boarding_gate_input').childNodes.length !== 0) {
                document.getElementById("create_boarding_gate_input").childNodes.forEach(element => { element.remove() })
            }
            result.data.forEach(element => {
                document.getElementById("create_boarding_gate_input").insertAdjacentHTML("beforeend", '<option value="'+element.id+'">'+element.name+'</option>')
            })
        }
        , error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown)
        }
    });
}
function sendFlightEdit() {
    $.ajax({
        type: 'POST'
        , data: {
            FlightId: document.getElementById("edit_id").value,
            Origin: document.getElementById("edit_origin_field").value,
            Deswtination: document.getElementById("edit_destination_field").value,
            Arrival: document.getElementById("edit_arrival_input").value,            
            AmountOfPassengers: document.getElementById("edit_passenger_number_field").value,
            BoardingGate: document.getElementById("edit_boarding_gate_input").value
        }
        , url: 'urlservicio'
        , success: function (result) {
            
        }
        , error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown)
        }
    });
}
function sendFlightCreation() {
    $.ajax({
        type: 'POST'
        , data: {            
            Origin: document.getElementById("create_origin_field").value,
            Deswtination: document.getElementById("create_destination_field").value,
            Arrival: document.getElementById("create_arrival_input").value,
            Departure: document.getElementById("create_departure_input").value,
            AmountOfPassengers: document.getElementById("create_passenger_number_field").value,
            BoardingGate: document.getElementById("create_boarding_gate_input").value
        }
        , url: 'urlservicio'
        , success: function (result) {
            while (document.getElementById('OurPassengers').childNodes.length !== 0) {
                document.getElementById("OurPassengers").childNodes.forEach(element => { element.remove() })
            }
            result.data.forEach(element => {
                document.getElementById("OurPassengers").insertAdjacentHTML("beforeend", '<tr><th scope="row">' + element.id + '</th><td>' + element.city + '</td><td>' + element.country + '</td><td>' + element.flightsh + '</td><td><button type="button" class="btn btn-primary fas fa-edit" onclick="editFlights(' + element + ')" /></td><td><button type="button" class="btn btn-primary fas fa-trash" onclick="deleteFlights(' + element + ')" /></td></tr>')
            })
        }
        , error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown)
        }
    });
}