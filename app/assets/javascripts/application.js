// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .



$.getJSON("http://localhost:3000/api/places")
.done(function(data){
  var pizzaIcon = L.icon({
    iconUrl: 'http://www2.psd100.com/ppp/2013/11/2701/Pizza-1127205207.png',
    iconSize:    [38, 95], // size of the icon
    iconAnchor:  [22, 94], // point of the icon which will correspond to marker's location
    popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});
  data.pizzas.forEach(function(pizza){
      L.marker([pizza.lat, pizza.lng], {icon: pizzaIcon})
      .addTo(window.map)
      .bindPopup(pizza.name);
});
  });
</script>
