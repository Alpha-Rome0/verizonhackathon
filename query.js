var user_cat;
$(document).ready(function () {
    $("#user_input").keyup(function(event){
        if(event.keyCode == 13){
            $("#click").click();
        }
    });

    $('#search').change(function() {
        user_cat=$(this).val();
    });
    $("button").click(function () {
        var a = performance.now();
        $("#books tbody").empty();

        $.ajax({
            'url': 'http://localhost:8983/solr/collection1/select',
            'data': {'wt': 'json', 'q': user_cat + ":" + document.getElementById("user_input").value},
            'success': function (data) {
                //console.log(data.response.docs);
                console.log(user_cat + ":" + document.getElementById("user_input").value);
                for (i = 0; i < data.response.docs.length; i++) {
                    var title = data.response.docs[i].name_txt;
                    var isbn = data.response.docs[i].id;
                    var author = data.response.docs[i].author_txt;
                    var genre = data.response.docs[i].genre_s;
                    var price = data.response.docs[i].price;
                    $("#books tbody").append(
                        '<tr>' +
                        '<td>'+title+'</td>' +
                        '<td>'+author+'</td>' +
                        '<td>'+genre+'</td>' +
                        '<td>'+price+'</td>' +
                        '<td>'+isbn+'</td>' +
                        '</tr> ');

                }

            },
            'dataType': 'jsonp',
            'jsonp': 'json.wrf'
        });
        var b = performance.now();
        $("#time").empty();
        $("#time").html('Search took ' + (b - a) + ' ms.')
    });
});

//function showInput() {
//
//    var message_entered =  user_cat + ":" + document.getElementById("user_input").value;
//
//    document.getElementById('display').innerHTML = message_entered;
//}