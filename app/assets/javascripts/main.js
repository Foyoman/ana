console.log('is this thing pooping?')

function myFunction() {
    // Declare variables
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById('myInput');
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName('li');
  
    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
        li[i].style.display = "";
        } else {
        li[i].style.display = "none";
        }
    }
}

$(document).ready(function() {
    
    $('.tags-checks > label').mouseup(function() {
        if ($(this).hasClass('checked')) {
            $(this).removeClass('checked');
        } else {
            $(this).addClass('checked');
        }
    });

    $('input[checked="checked"]').parent().addClass("checked")

    $('.theme').mouseup(function() {
        $('.theme').removeClass('opaque');
        $(this).addClass('opaque');
    });

    $('.sort').mouseup(function() {
        $('.sort').removeClass('checked');
        $(this).addClass('checked');
    });
    
});