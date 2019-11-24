function onplay(e){
    //localStorage.setItem("src", e);
    //location.replace("/play");
    
    var x = document.getElementById("myVideo");
    x.src ="/video/" + e;
}


function onload() {
    axios.get('/videos')
    .then(function (response) {
        // handle success
        console.log(response);

        var table = document.getElementById("table");

        response.data.videos.map(function(video){
            var row = table.insertRow(0);
            var cell1 = row.insertCell(0);
            var cell2 = row.insertCell(1);
            var cell3 = row.insertCell(2);
            var cell4 = row.insertCell(3);
            

            cell1.innerHTML = video.nombre;
            cell2.innerHTML = video.descripcion;
            cell3.innerHTML = video.src;
            cell4.innerHTML = "<button type='button' id='button' >Add</button>";

            document.getElementById("button").onclick = function(){
                onplay(video.src)
            };
        })
    })
    .catch(function (error) {
        // handle error
        console.log(error);
    })
}
