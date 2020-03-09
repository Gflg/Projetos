var map;
var primeira = false;

function initialize() {
    var latlng = new google.maps.LatLng(-22.90278, -43.2075);

    var options = {
        zoom: 13,
        center: latlng,
        zoomControl: true,
        zoomControlOptions: {
            position: google.maps.ControlPosition.LEFT_TOP
        },
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    map = new google.maps.Map(document.getElementById("mapa"), options);
    }

initialize();

var b1 = document.getElementById('b1'), b2 = document.getElementById('b2'), b3 = document.getElementById('b3'), b4 = document.getElementById('b4');

b1.onclick = function() {
    window.location.reload();
    if(gup("reload")=='1' || gup("reload")=='2' || gup("reload")=='0.25'){
        window.location.search = '&reload=0.5' + '&data=' + gup("data") + '&data2=' + gup("data2");
    }
    else{
        window.location.search += '&reload=0.5' + '&data=' + gup("data") + '&data2=' + gup("data2");
    }
};
b2.onclick = function() {
    window.location.reload();
    if(gup("reload")=='0.5' || gup("reload")=='1' || gup("reload")=='0.25'){
        window.location.search = '&reload=2' + '&data=' + gup("data") + '&data2=' + gup("data2");
    }
    else{
        window.location.search += '&reload=2' + '&data=' + gup("data") + '&data2=' + gup("data2");
    }
};
b3.onclick = function() {
    window.location.reload();
    if(gup("reload")=='0.5' || gup("reload")=='2' || gup("reload")=='0.25'){
        window.location.search = '&reload=1' + '&data=' + gup("data") + '&data2=' + gup("data2");
    }
    else{
        window.location.search += '&reload=1' + '&data=' + gup("data") + '&data2=' + gup("data2");
    }
};
b4.onclick = function() {
    window.location.reload();
    if(gup("reload")=='0.5' || gup("reload")=='2' || gup("reload")=='1'){
        window.location.search = '&reload=0.25' + '&data=' + gup("data") + '&data2=' + gup("data2");
    }
    else{
        window.location.search += '&reload=0.25' + '&data=' + gup("data") + '&data2=' + gup("data2");
    }
};



function carregarPontos(radius) {

    if(radius == 1){
        var string = 'js/package.json';
    }
    else if(radius == 0.25){
        var string = 'js/package2.json';
    }
    else if(radius == 0.5){
        var string = 'js/package3.json';
    }
    else {
        var string = 'js/package4.json';
    }

    $.getJSON(string, function(pontos) {
        var latlngbounds = new google.maps.LatLngBounds();
        var lat = [];
        var long = [];
        var q1 = [];
        var q2 = [];
        var q3 = [];
        var q4 = [];
        var r1 = [];
        var r2 = [];
        var r3 = [];
        var r4 = [];
        var listaNE = [];
        var listaSW = [];
        var listaSE = [];
        var listaNW = [];
        var listNE = [];
        var listSW = [];
        var listSE = [];
        var listNW = [];
        var titulo = [];
        var v = [];
        var diaComeco = parseInt(gup("data").substring(8,10));
        var diaFim = parseInt(gup("data2").substring(8,10));
        var mesComeco = parseInt(gup("data").substring(5,7));
        var mesFim = parseInt(gup("data2").substring(5,7));
        var anoComeco = parseInt(gup("data").substr(0,4));
        var anoFim = parseInt(gup("data2").substr(0,4));

        $.each(pontos, function(index, ponto) {
            var diaPonto = parseInt(ponto.Titulo.substring(ponto.Titulo.length - 11,ponto.Titulo.length - 9));
            var mesPonto = parseInt(ponto.Titulo.substring(ponto.Titulo.length - 8,ponto.Titulo.length - 6));
            var anoPonto = parseInt(ponto.Titulo.substring(ponto.Titulo.length - 5,ponto.Titulo.length - 1));

            if((anoComeco == anoFim && anoPonto == anoComeco && mesPonto <= mesFim && mesPonto >= mesComeco && ((mesPonto == mesComeco && diaPonto >= diaComeco && mesPonto != mesFim)||(mesPonto == mesFim && diaPonto <= diaFim && mesPonto != mesComeco)||(mesPonto > mesComeco && mesPonto < mesFim)||(mesPonto == mesFim && mesPonto == mesComeco && diaPonto >= diaComeco && diaPonto <= diaFim))) ||
                (anoComeco != anoFim && anoPonto >= anoComeco && anoPonto <= anoFim && ((anoPonto == anoComeco && ((mesPonto == mesComeco && diaPonto >= diaComeco)||(mesPonto > mesComeco))||(mesPonto > mesComeco))||(anoPonto == anoFim && ((mesPonto == mesFim && diaPonto <= diaFim)||(mesPonto < mesFim)))||(anoPonto > anoComeco && anoPonto < anoFim)))) {
                lat.push(ponto.Latitude);
                long.push(ponto.Longitude);
                listaNE.push(ponto.DepoisNE);
                listaSW.push(ponto.DepoisSW);
                listaSE.push(ponto.DepoisSE);
                listaNW.push(ponto.DepoisNW);
                titulo.push(ponto.Titulo);
                v.push(JSON.parse("[" + ponto.Vertical + "]"));

                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(ponto.Latitude, ponto.Longitude),
                    map: map
                });

                var R = 6371;

                var radians1 = ponto.Latitude * (Math.PI / 180);

                var x1 = radius / R / Math.cos(radians1);
                var x2 = radius / R / Math.cos(radians1);

                x1 = x1 * (180 / Math.PI);
                x2 = x2 * (180 / Math.PI);

                x1 = ponto.Longitude - x1;
                x2 = ponto.Longitude + x2;

                var y1 = ponto.Latitude + ((radius / R) * (180 / Math.PI));
                var y2 = ponto.Latitude - ((radius / R) * (180 / Math.PI));

                var infowindow = new google.maps.InfoWindow(), marker;

                google.maps.event.addListener(marker, 'click', (function (marker, i) {
                    return function () {
                        map.setCenter(marker.getPosition());
                        infowindow.setContent(ponto.Tweet);
                        infowindow.open(map, marker);
                    }
                })(marker))

                var rectangle1 = new google.maps.Rectangle({
                    strokeColor: 'black',
                    strokeOpacity: 0.8,
                    strokeWeight: 2,
                    fillColor: 'black',
                    fillOpacity: 0.35,
                    map: map,
                    bounds: {
                        north: y1,
                        south: ponto.Latitude,
                        east: x2,
                        west: ponto.Longitude
                    }
                });

                q1.push([y1, ponto.Latitude, x2, ponto.Longitude]);
                r1.push([y1, ponto.Latitude, x2, ponto.Longitude]);


                var rectangle2 = new google.maps.Rectangle({
                    strokeColor: 'green',
                    strokeOpacity: 0.8,
                    strokeWeight: 2,
                    fillColor: 'green',
                    fillOpacity: 0.35,
                    map: map,
                    bounds: {
                        north: y2,
                        south: ponto.Latitude,
                        east: ponto.Longitude,
                        west: x1
                    }
                });

                q2.push([y2, ponto.Latitude, ponto.Longitude, x1]);
                r2.push([y2, ponto.Latitude, ponto.Longitude, x1]);

                var rectangle3 = new google.maps.Rectangle({
                    strokeColor: 'yellow',
                    strokeOpacity: 0.8,
                    strokeWeight: 2,
                    fillColor: 'yellow',
                    fillOpacity: 0.35,
                    map: map,
                    bounds: {
                        north: y2,
                        south: ponto.Latitude,
                        east: x2,
                        west: ponto.Longitude
                    }
                });

                q3.push([y2, ponto.Latitude, x2, ponto.Longitude]);
                r3.push([y2, ponto.Latitude, x2, ponto.Longitude]);

                var rectangle4 = new google.maps.Rectangle({
                    strokeColor: 'blue',
                    strokeOpacity: 0.8,
                    strokeWeight: 2,
                    fillColor: 'blue',
                    fillOpacity: 0.35,
                    map: map,
                    bounds: {
                        north: y1,
                        south: ponto.Latitude,
                        east: ponto.Longitude,
                        west: x1
                    }
                });

                q4.push([y1, ponto.Latitude, ponto.Longitude, x1]);
                r4.push([y1, ponto.Latitude, ponto.Longitude, x1]);

                //Nordeste

                google.maps.event.addListener(rectangle1, 'click', function (event) {

                    $("#error-dialog").modal();
                    for (n in q1) {
                        if (event.latLng.lat() <= q1[n][0] && event.latLng.lat() >= lat[n] && event.latLng.lng() <= x2 && event.latLng.lng() >= long[n]) {
                            var casa = n;
                        }
                    }

                    google.charts.load('current', {'packages': ['corechart']});
                    google.charts.setOnLoadCallback(drawChart);

                    function drawChart() {

                        var array = [];
                        array.push([['Medida'], ['Normal'], ['Acidente']]);
                        var array2 = JSON.parse("[" + listaNE[casa] + "]");
                        array = array.concat(array2);

                        var minutos = (ponto.Horas * 60) + ponto.Minutos;
                        var horario = [];

                        var aux = minutos;
                        var aux2 = Math.floor(aux / 60);
                        aux = aux % 60;
                        aux2 = aux2 < 10 ? '0' + aux2 : aux2;
                        aux = aux < 10 ? '0' + aux : aux;

                        horario.push(aux2 + ':' + aux + "- Horario estimado");

                        for (i = 1; i < 7; i++) {
                            var aux = minutos - (i * 30);
                            var aux2 = Math.floor(aux / 60);
                            aux = aux % 60;
                            aux2 = aux2 < 10 ? '0' + aux2 : aux2;
                            aux = aux < 10 ? '0' + aux : aux;

                            horario.push(aux2 + ':' + aux);
                        }


                        for (i = 7; i < 11; i++) {
                            var aux = minutos + ((i - 6) * 30);
                            var aux2 = Math.floor(aux / 60);
                            aux = aux % 60;
                            aux2 = aux2 < 10 ? '0' + aux2 : aux2;
                            aux = aux < 10 ? '0' + aux : aux;

                            horario.push(aux2 + ':' + aux);
                        }

                        var data = google.visualization.arrayToDataTable(array);
                        data.setColumnLabel(1, 'Dia normal');
                        data.setColumnLabel(2, 'Dia do acidente');

                        var options = {
                            title: titulo[casa],
                            titleTextStyle: {
                                fontSize: 26
                            },
                            curveType: 'function',
                            width: 1800,
                            height: 450,
                            hAxis: {
                                title: 'Tempo',
                                titleTextStyle: {
                                    fontSize: 20
                                },
                                ticks: [{v: 0, f: horario[6]}, {v: 6, f: horario[5]}, {
                                    v: 12,
                                    f: horario[4]
                                }, {v: 18, f: horario[3]}, {v: 24, f: horario[2]}, {v: 30, f: horario[1]}, {
                                    v: 36,
                                    f: horario[0]
                                }, {v: 42, f: horario[7]}, {v: 48, f: horario[8]}, {v: 54, f: horario[9]}, {
                                    v: 60,
                                    f: horario[10]
                                }]
                            },
                            vAxis: {
                                ticks: v[casa],
                                title: 'Minutos',
                                titleTextStyle: {
                                    fontSize: 20
                                }
                            },
                            series: {0: {color: 'black'}},
                            legend: {textStyle: {fontSize: 18}}
                        };

                        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

                        chart.draw(data, options);
                    }
                });

                //Sudoeste

                google.maps.event.addListener(rectangle2, 'click', function (event) {
                    $("#error-dialog").modal();
                    for (n in q2) {
                        if (event.latLng.lat() <= lat[n] && event.latLng.lat() >= q2[n][0] && event.latLng.lng() <= long[n] && event.latLng.lng() >= q2[n][3]) {
                            var casa = n;
                        }
                    }

                    google.charts.load('current', {'packages': ['corechart']});
                    google.charts.setOnLoadCallback(drawChart);

                    function drawChart() {

                        var array = [];
                        array.push([['Medida'], ['Normal'], ['Acidente']]);
                        var array2 = JSON.parse("[" + listaSW[casa] + "]");
                        array = array.concat(array2);

                        var minutos = (ponto.Horas * 60) + ponto.Minutos;
                        var horario = [];

                        var aux = minutos;
                        var aux2 = Math.floor(aux / 60);
                        aux = aux % 60;
                        aux2 = aux2 < 10 ? '0' + aux2 : aux2;
                        aux = aux < 10 ? '0' + aux : aux;

                        horario.push(aux2 + ':' + aux + "- Horario estimado");

                        for (i = 1; i < 7; i++) {
                            var aux = minutos - (i * 30);
                            var aux2 = Math.floor(aux / 60);
                            aux = aux % 60;
                            aux2 = aux2 < 10 ? '0' + aux2 : aux2;
                            aux = aux < 10 ? '0' + aux : aux;

                            horario.push(aux2 + ':' + aux);
                        }


                        for (i = 7; i < 11; i++) {
                            var aux = minutos + ((i - 6) * 30);
                            var aux2 = Math.floor(aux / 60);
                            aux = aux % 60;
                            aux2 = aux2 < 10 ? '0' + aux2 : aux2;
                            aux = aux < 10 ? '0' + aux : aux;

                            horario.push(aux2 + ':' + aux);
                        }

                        var data = google.visualization.arrayToDataTable(array);
                        data.setColumnLabel(1, 'Dia normal');
                        data.setColumnLabel(2, 'Dia do acidente');

                        var options = {
                            title: titulo[casa],
                            titleTextStyle: {
                                fontSize: 26
                            },
                            curveType: 'function',
                            width: 1800,
                            height: 450,
                            hAxis: {
                                title: 'Tempo',
                                titleTextStyle: {
                                    fontSize: 20
                                },
                                ticks: [{v: 0, f: horario[6]}, {v: 6, f: horario[5]}, {
                                    v: 12,
                                    f: horario[4]
                                }, {v: 18, f: horario[3]}, {v: 24, f: horario[2]}, {v: 30, f: horario[1]}, {
                                    v: 36,
                                    f: horario[0]
                                }, {v: 42, f: horario[7]}, {v: 48, f: horario[8]}, {v: 54, f: horario[9]}, {
                                    v: 60,
                                    f: horario[10]
                                }]
                            },
                            vAxis: {
                                ticks: v[casa],
                                title: 'Minutos',
                                titleTextStyle: {
                                    fontSize: 20
                                }
                            },
                            series: {0: {color: '008000'}},
                            legend: {textStyle: {fontSize: 18}}
                        };

                        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

                        chart.draw(data, options);
                    }
                });

                //Sudeste
                google.maps.event.addListener(rectangle3, 'click', function (event) {
                    $("#error-dialog").modal();
                    for (n in q3) {
                        if (event.latLng.lat() <= lat[n] && event.latLng.lat() >= q3[n][0] && event.latLng.lng() <= q3[n][2] && event.latLng.lng() >= long[n]) {
                            var casa = n;
                        }
                    }

                    google.charts.load('current', {'packages': ['corechart']});
                    google.charts.setOnLoadCallback(drawChart);

                    function drawChart() {

                        var array = [];
                        array.push([['Medida'], ['Normal'], ['Acidente']]);
                        var array2 = JSON.parse("[" + listaSE[casa] + "]");
                        array = array.concat(array2);


                        var minutos = (ponto.Horas * 60) + ponto.Minutos;
                        var horario = [];

                        var aux = minutos;
                        var aux2 = Math.floor(aux / 60);
                        aux = aux % 60;
                        aux2 = aux2 < 10 ? '0' + aux2 : aux2;
                        aux = aux < 10 ? '0' + aux : aux;

                        horario.push(aux2 + ':' + aux + "- Horario estimado");

                        for (i = 1; i < 7; i++) {
                            var aux = minutos - (i * 30);
                            var aux2 = Math.floor(aux / 60);
                            aux = aux % 60;
                            aux2 = aux2 < 10 ? '0' + aux2 : aux2;
                            aux = aux < 10 ? '0' + aux : aux;

                            horario.push(aux2 + ':' + aux);
                        }


                        for (i = 7; i < 11; i++) {
                            var aux = minutos + ((i - 6) * 30);
                            var aux2 = Math.floor(aux / 60);
                            aux = aux % 60;
                            aux2 = aux2 < 10 ? '0' + aux2 : aux2;
                            aux = aux < 10 ? '0' + aux : aux;

                            horario.push(aux2 + ':' + aux);
                        }

                        var data = google.visualization.arrayToDataTable(array);
                        data.setColumnLabel(1, 'Dia normal');
                        data.setColumnLabel(2, 'Dia do acidente');

                        var options = {
                            title: titulo[casa],
                            titleTextStyle: {
                                fontSize: 26
                            },
                            curveType: 'function',
                            width: 1800,
                            height: 450,
                            hAxis: {
                                title: 'Tempo',
                                titleTextStyle: {
                                    fontSize: 20
                                },
                                ticks: [{v: 0, f: horario[6]}, {v: 6, f: horario[5]}, {
                                    v: 12,
                                    f: horario[4]
                                }, {v: 18, f: horario[3]}, {v: 24, f: horario[2]}, {v: 30, f: horario[1]}, {
                                    v: 36,
                                    f: horario[0]
                                }, {v: 42, f: horario[7]}, {v: 48, f: horario[8]}, {v: 54, f: horario[9]}, {
                                    v: 60,
                                    f: horario[10]
                                }]
                            },
                            vAxis: {
                                ticks: v[casa],
                                title: 'Minutos',
                                titleTextStyle: {
                                    fontSize: 20
                                }
                            },
                            series: {0: {color: 'ffff00'}},
                            legend: {textStyle: {fontSize: 18}}
                        };

                        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

                        chart.draw(data, options);
                    }
                });

                //Noroeste
                google.maps.event.addListener(rectangle4, 'click', function (event) {
                    $("#error-dialog").modal();
                    for (n in q4) {
                        if (event.latLng.lat() <= q4[n][0] && event.latLng.lat() >= lat[n] && event.latLng.lng() <= long[n] && event.latLng.lng() >= q2[n][3]) {
                            var casa = n;
                        }
                    }

                    google.charts.load('current', {'packages': ['corechart']});
                    google.charts.setOnLoadCallback(drawChart);

                    function drawChart() {

                        var array = [];
                        array.push([['Medida'], ['Normal'], ['Acidente']]);
                        var array2 = JSON.parse("[" + listaNW[casa] + "]");
                        array = array.concat(array2);


                        var minutos = (ponto.Horas * 60) + ponto.Minutos;
                        var horario = [];

                        var aux = minutos;
                        var aux2 = Math.floor(aux / 60);
                        aux = aux % 60;
                        aux2 = aux2 < 10 ? '0' + aux2 : aux2;
                        aux = aux < 10 ? '0' + aux : aux;

                        horario.push(aux2 + ':' + aux + "- Horario estimado");

                        for (i = 1; i < 7; i++) {
                            var aux = minutos - (i * 30);
                            var aux2 = Math.floor(aux / 60);
                            aux = aux % 60;
                            aux2 = aux2 < 10 ? '0' + aux2 : aux2;
                            aux = aux < 10 ? '0' + aux : aux;

                            horario.push(aux2 + ':' + aux);
                        }


                        for (i = 7; i < 11; i++) {
                            var aux = minutos + ((i - 6) * 30);
                            var aux2 = Math.floor(aux / 60);
                            aux = aux % 60;
                            aux2 = aux2 < 10 ? '0' + aux2 : aux2;
                            aux = aux < 10 ? '0' + aux : aux;

                            horario.push(aux2 + ':' + aux);
                        }

                        var data = google.visualization.arrayToDataTable(array);
                        data.setColumnLabel(1, 'Dia normal');
                        data.setColumnLabel(2, 'Dia do acidente');

                        var options = {
                            title: titulo[casa],
                            titleTextStyle: {
                                fontSize: 26
                            },
                            curveType: 'function',
                            width: 1800,
                            height: 450,
                            hAxis: {
                                title: 'Tempo',
                                titleTextStyle: {
                                    fontSize: 20
                                },
                                ticks: [{v: 0, f: horario[6]}, {v: 6, f: horario[5]}, {
                                    v: 12,
                                    f: horario[4]
                                }, {v: 18, f: horario[3]}, {v: 24, f: horario[2]}, {v: 30, f: horario[1]}, {
                                    v: 36,
                                    f: horario[0]
                                }, {v: 42, f: horario[7]}, {v: 48, f: horario[8]}, {v: 54, f: horario[9]}, {
                                    v: 60,
                                    f: horario[10]
                                }]
                            },
                            vAxis: {
                                ticks: v[casa],
                                title: 'Minutos',
                                titleTextStyle: {
                                    fontSize: 20
                                }
                            },
                            series: {0: {color: '0000ff'}},
                            legend: {textStyle: {fontSize: 18}}
                        };

                        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

                        chart.draw(data, options);
                    }
                });
            }

        });
    });

}

//carregarPontos(1);

function onrefresh(){
    if(gup("reload")=='0.5'){
        carregarPontos(0.5);
    }
    else if(gup("reload")=='2'){
        carregarPontos(2);
    }
    else if(gup("reload")=='0.25'){
        carregarPontos(0.25);
    }
    else{
        if(primeira == false){
            primeira = true;
        }
        carregarPontos(1);
    }
}


function gup( name ){
    name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
    var regexS = "[\\?&]"+name+"=([^&#]*)";
    var regex = new RegExp( regexS );
    var results = regex.exec( window.location.href );
    if( results == null )
        return "";
    else
        return results[1];
}

onrefresh();