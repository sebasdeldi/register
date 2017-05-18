jQuery(function() {
  var cities;
  cities = $('#user_city_id').html();
  return $('#user_state_id').change(function() {
    var state, options;
    state = $('#user_state_id :selected').text();
    options = $(cities).filter("optgroup[label=" + state + "]").html();
    if (options) {
      return $('#user_city_id').html(options);
    } else {
      return $('#user_city_id').empty();
    }
  });
});