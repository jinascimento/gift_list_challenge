jQuery(document).ready(function () {
    if (page.controller() !== 'lists' && page.action() !== 'show') { return; }
    activeLastItem();
});

function activeLastItem() {
    $('.wizard__wizard-item-last').children().find('i').removeClass('fa-circle');
    $('.wizard__wizard-item-last').children().find('i').addClass('fa-check-circle');
    $('.wizard__wizard-item-last').children().addClass(('wizard__item--active'));
}
