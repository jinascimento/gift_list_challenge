jQuery(document).ready(function () {
    if (page.controller() !== 'product_items' && page.action() !== 'new') { return; }
    activeLastItem();
    searchProductsFromCategory();
});

function activeLastItem() {
    $('.wizard__wizard-item-last').children().find('i').removeClass('fa-circle');
    $('.wizard__wizard-item-last').children().find('i').addClass('fa-check-circle');
    $('.wizard__wizard-item-last').children().addClass(('wizard__item--active'));
}

function searchProductsFromCategory() {
    let category_id = $($('[data-list-category]')[0]).attr('data-list-category');
    $.get('/categories/'+category_id+'/products/search', function() {
    })
        .done(function(data) {

        })
        .fail(function() {

        })
};
