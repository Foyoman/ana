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

    // $('.tags-checks > label').click(function() {
    //     $(this).addClass('checked');
    //     console.log('hello')
    // });
    
    $('.tags-checks > label').mouseup(function() {
        if ($(this).hasClass('checked')) {
            $(this).removeClass('checked');
            console.log('hello')
        } else {
        $(this).addClass('checked');
        console.log('hi');
        }
    });

    $('input[checked="checked"]').parent().addClass("checked")

});

// $('.tags-checks > label').click(function() {
//     $(this).addClass('checked');
// });
