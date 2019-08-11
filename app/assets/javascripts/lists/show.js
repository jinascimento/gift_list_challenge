document.addEventListener("turbolinks:load", function() {
    $('.wizard__wizard-item-first').children().removeClass(('wizard__item--active'));
    $('.wizard__wizard-item-last').children().addClass(('wizard__item--active'));
});

