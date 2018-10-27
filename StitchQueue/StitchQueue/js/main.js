$(document).ready(function () {

    $('.design-box').click(function () {
        $('.step-' + $('.btn-next').data('step')).find('.design-box').removeClass('active-box');
        $(this).addClass('active-box');
    });

    $('.btn-next').click(function () {
        let design = $('.step').data('design');
        if ($('.step-' + $(this).data('step')).find('.active-box').length > 0) {
            let selectedDesign = $('.active-box').data('id');
            sessionStorage.setItem(design, selectedDesign);
            $(this).data('step', $(this).data('step') + 1);
            $('.step').addClass('hidden');
            $('.step-' + $(this).data('step')).removeClass('hidden');
           /**
            * Progress bar
            */
            $('.step' + ($(this).data('step') - 1)).removeClass('active');
            $('.step' + ($(this).data('step') - 1)).addClass('complete');
            $('.step' + $(this).data('step')).removeClass('disabled');
            $('.step' + $(this).data('step')).addClass('active');
        } else {
            $.toast({
                heading: 'Error',
                text: 'Please Select a design',
                icon: 'warning',
                bgColor: '#000000',
                position: 'top-right',
                loader: false
            });
        }
    });
    $('.btn-prev').click(function () {
        $('.btn-next').data('step', $('.btn-next').data('step') - 1);
        $('.step').addClass('hidden');
        $('.step-' + $('.btn-next').data('step')).removeClass('hidden');
        $('.step' + ($('.btn-next').data('step') + 1)).removeClass('active');
        $('.step' + ($('.btn-next').data('step') + 1)).addClass('disabled');
        $('.step' + $('.btn-next').data('step')).removeClass('complete');
        $('.step' + $('.btn-next').data('step')).addClass('active');
    });
});