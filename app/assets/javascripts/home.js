$(document).ready(function() {
    $('input#toggle-phones').change(function() {
        var prop = $('input#toggle-phones').prop('checked');
        if (prop) {
            $('#phones_table').removeClass('d-none');
            $('label.toggle-phones').text('非表示にする');
        } else {
            $('#phones_table').addClass('d-none');
            $('label.toggle-phones').text('表示する');
        }
    });
    $('.button-to-wait').click(function () {
        $('div#grayout').show().animate({'opacity':0.5}, 100);
    })
});