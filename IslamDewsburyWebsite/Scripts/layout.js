$(function () {

    // Function with the Toggle Dates events
    function ActivateToggleDates() {
        $(function () {
            $('.rightSalaahTimeToggle').on('click',
                function (e) {
                    var currentHighlightedDate = $('#HighlightedDate').val();

                    $.ajax({
                        url: '/Home/NextSalaahTimes',
                        type: 'GET',
                        contentType: "application/html; charset=utf-8",
                        dataType: "html",
                        data: { currentDate: currentHighlightedDate },
                        success: function (result) {
                            $('#divSalaahTimes').html(result);
                            $('#divSalaahTimesTop').html(result);
                            ActivateToggleDates();
                        }
                    });
                }
            );

            $('.leftSalaahTimeToggle').on('click',
                function (e) {
                    var currentHighlightedDate = $('#HighlightedDate').val();

                    $.ajax({
                        url: '/Home/PreviousSalaahTimes',
                        type: 'GET',
                        contentType: "application/html; charset=utf-8",
                        dataType: "html",
                        data: { currentDate: currentHighlightedDate },
                        success: function (result) {
                            $('#divSalaahTimes').html(result);
                            $('#divSalaahTimesTop').html(result);
                            ActivateToggleDates();
                        }
                    });
                }
            );

        });
    }

    ActivateToggleDates();
});