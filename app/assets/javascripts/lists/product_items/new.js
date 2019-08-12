function activeLastItem() {
    $('.wizard__wizard-item-last').children().find('i').removeClass('fa-circle');
    $('.wizard__wizard-item-last').children().find('i').addClass('fa-check-circle');
    $('.wizard__wizard-item-last').children().addClass(('wizard__item--active'));
}

function searchWithKeyUp(text) {
    let category_id = $('#category_id').val() || '';
    $.get('/categories/'+category_id+'/products/search?name='+text, function() {
    })
        .done(function(data) {

        })
        .fail(function() {

        })
}

function searchProductsFromCategory() {
    let category_id = $($('[data-list-category]')[0]).attr('data-list-category');
    $.get('/categories/'+category_id+'/products/search', function() {
    })
        .done(function(data) {

        })
        .fail(function() {

        })
}


jQuery(document).ready(function () {
    if (page.controller() !== 'product_items' && page.action() !== 'new') { return; }
    activeLastItem();
    searchProductsFromCategory();

    $('.categoryFilter').on('change', function() {
        if (this.checked) {
            $.get("/categories/"+$(this).val()+"/products/search", function() {
            })
                .done(function(data) {

                })
                .fail(function() {

                })
        }
    });

    $('#name').keyup(function(){
        searchWithKeyUp($(this).val());
    });
});

