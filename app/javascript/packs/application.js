import "bootstrap";

// Mapbox
// CSS
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
// internal imports
import { initMapbox } from '../plugins/init_mapbox';

global.initMapbox = initMapbox;
const map = initMapbox();

import { initDirections } from '../plugins/init_mapbox';
initDirections(map);

// Autocomplete address
import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();

// Map searchbar
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
