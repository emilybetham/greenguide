import "bootstrap";

// Mapbox
// CSS
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
// internal imports
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();


// Autocomplete address
import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();

// Map searchbar
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
