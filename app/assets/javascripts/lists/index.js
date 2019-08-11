jQuery(document).ready(function () {
    if (page.controller() !== 'lists' && page.action() !== 'index') { return; }
    activeFirstItem();
});

function activeFirstItem() {
    $('.wizard__wizard-item-last').children().removeClass(('wizard__item--active'));
    $('.wizard__wizard-item-last').children().find('i').removeClass('fa-check-circle');
    $('.wizard__wizard-item-last').children().find('i').addClass('fa-circle');
    $('.wizard__wizard-item-first').children().addClass(('wizard__item--active'));

}

