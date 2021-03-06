import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css'; // Map searchbar

// internal imports
import { initMapbox, getUserCoordinates, bindMarkersToRoute} from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initStarRating } from '../plugins/init_star_rating';
import { loadOtherReviews } from '../components/loadreviews';
import { foldBanner } from '../components/fold_banner';
import { cssToutesCategories } from '../components/css_toutes_categories';
import { alertGeoloc } from '../components/alert_geoloc';
import { hideRetourButton } from '../components/hide_retour_button';
// import { refreshMap } from '../../views/locations/index.js.erb';



global.initMapbox = initMapbox;
global.initStarRating = initStarRating;



// 1. Draw map
const map = initMapbox();
// 2. Get User Position and Bind Markers to Routes
// const coordinates = getUserCoordinates(map, bindMarkersToRoute);

// Autocomplete address
initAutocomplete();

// Reviews
initStarRating();
loadOtherReviews();

// Fold up banner
foldBanner();

// css toutes categories button
cssToutesCategories();

// Alert pour geoloc
alertGeoloc();

hideRetourButton();

// Map searchbar
// import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

