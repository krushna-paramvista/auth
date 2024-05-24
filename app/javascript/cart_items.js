$(document).on('click', '.add-to-cart-btn', function(e) {
  e.preventDefault();
  $.ajax({
    type: 'POST',
    url: $(this).attr('href'),
    dataType: 'json',
    success: function(response) {
      $('#cart-message').text(response.message);
      $('#cart-count').text("Total items in cart: " + response.cart_count);
    },
    error: function(response) {
      alert('An error occurred while adding the item to cart');
    }
  });
});