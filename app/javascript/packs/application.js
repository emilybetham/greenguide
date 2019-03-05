import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css'; // Map searchbar
import { loadOtherReviews } from '../components/loadreviews';

// internal imports
import { initMapbox, getUserCoordinates, bindMarkersToRoute } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initStarRating } from '../plugins/init_star_rating';

global.initMapbox = initMapbox;
global.initStarRating = initStarRating;

// 1. Draw map
const map = initMapbox();
// 2. Get User Position and Bind Markers to Routes
const coordinates = getUserCoordinates(map, bindMarkersToRoute);


// Autocomplete address
initAutocomplete();
initStarRating();
loadOtherReviews();


// Map searchbar
// import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

