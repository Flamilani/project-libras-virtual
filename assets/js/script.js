/* function confirmDelete(title, id) {
    alert('delete');
    return confirm('Tem certeza de que vai deletar ' + title + ' ' + id + '?');
} */

function confirmDelete() {
    if (confirm("Tem certeza que vai remover?"))
        return true;
    else
        return false;
}


$(document).ready(function() {
    $("#flip").click(function() {
        $("#panel").slideToggle("slow");
    });
});

$(function() {
    $('#datetimepicker1').datetimepicker({
        format: 'DD/MM/YYYY'
    });
});

$(function() {
    $('[data-toggle="tooltip"]').tooltip()
});