import "bootstrap";

// Mapbox
// CSS
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
// internal imports
import { initMapbox, initDirections, getUserCoordinates } from '../plugins/init_mapbox';

global.initMapbox = initMapbox;
const map = initMapbox();

getUserCoordinates().then(data => {
  console.log(data)
  initDirections(map, data);
});

// Autocomplete address
import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();

// Map searchbar
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
