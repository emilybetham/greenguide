import mapboxgl from 'mapbox-gl';
// import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import MapboxDraw from '@mapbox/mapbox-gl-draw';


const getUserCoordinates = () => {
  const map = document.getElementById('map');
  if (map) {
   return new Promise((resolve) => {
      const apiKey = map.dataset.googleApiKey;
      const url = `https://www.googleapis.com/geolocation/v1/geolocate?key=${apiKey}`
      fetch(url, {
        method: 'POST'
      })
      .then(response => response.json())
      .then(data => { resolve(data.location) });
    });
  }
}

const center = (map) => {
  // navigator.geolocation.getCurrentPosition(
  //   (position) => {
  //     const crd = position.coords;
  //     map.setCenter([crd.longitude,crd.latitude]);
  //     map.setZoom(15);
      map.addControl(new mapboxgl.GeolocateControl({
        positionOptions: {
          enableHighAccuracy: true,
          timeout: 5000,
          maximumAge: 0
        },
        trackUserLocation: true
      }));
      setTimeout(() => {
        const currentLocationControl = document.querySelector('.mapboxgl-ctrl-geolocate');
        currentLocationControl.click();
      }, 500);
    // }
  // );
}

const buildMap = (mapElement) => {
  // DO an if else for the dataset being present, get .longtitude
  const searchedAddressCoordinates = JSON.parse(mapElement.dataset.searchedAddressCoordinates);
  if (searchedAddressCoordinates === null) {
    return new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [2.3514992, 48.8566101],
      zoom: 12
    });
  } else {
    return new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: searchedAddressCoordinates,
      zoom: 15
    });
  };
}

const buildMarkers = (mapElement, map) => {
  const markers = JSON.parse(mapElement.dataset.markers);
  markers.forEach((marker) => {
    const element = document.createElement('div');
    element.className = 'marker';
    element.id = `${[marker.lng, marker.lat]}`;
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '25px';
    element.style.height = '25px';
    element.dataset.toggle = "modal";
    element.dataset.target = `#cardModal-${marker.location_id}`;

    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  });
  return markers;
}

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const map = buildMap(mapElement);
    center(map);
    const markers = buildMarkers(mapElement, map);

    // map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
    return map;
  }
}

// ITINERAIRES

const draw = new MapboxDraw({
 displayControlsDefault: false,
 controls: {
   line_string: true,
   trash: true
 },
 styles: [
   // ACTIVE (being drawn)
   // line stroke
   {
     "id": "gl-draw-line",
     "type": "line",
     "filter": ["all", ["==", "$type", "LineString"], ["!=", "mode", "static"]],
     "layout": {
       "line-cap": "round",
       "line-join": "round"
     },
     "paint": {
       "line-color": "#3b9ddd",
       "line-dasharray": [0.2, 2],
       "line-width": 4,
       "line-opacity": 0.7
     }
   },
   // vertex point halos
   {
     "id": "gl-draw-polygon-and-line-vertex-halo-active",
     "type": "circle",
     "filter": ["all", ["==", "meta", "vertex"], ["==", "$type", "Point"], ["!=", "mode", "static"]],
     "paint": {
       "circle-radius": 10,
       "circle-color": "#FFF"
     }
   },
   // vertex points
   {
     "id": "gl-draw-polygon-and-line-vertex-active",
     "type": "circle",
     "filter": ["all", ["==", "meta", "vertex"], ["==", "$type", "Point"], ["!=", "mode", "static"]],
     "paint": {
       "circle-radius": 6,
       "circle-color": "#3b9ddd",
     }
   },
 ]
});



const initDirections = (map, userCoordinates) => {
  document.querySelectorAll(".marker").forEach((marker) => {
    marker.addEventListener("click", (event) => {
      const coordsMarker = event.currentTarget.id.split(',');
      // const modal = document.getElementById('cardModal-18');
      // console.log(modal.id)
      const cardModalId = event.currentTarget.dataset.target
      const btnItinerary = document.querySelector(`${cardModalId} #itinerary-btn`);
      btnItinerary.addEventListener("click", (event) => {
        const newCoords = userCoordinates.lng + '%2C' + userCoordinates.lat + '%3B' + coordsMarker[0] + '%2C' + coordsMarker[1];
        getMatch(map, newCoords);
        const close = document.querySelector(`${cardModalId} #card-close-modal`).click();
      });
    });
  });
}

// make a directions request
const getMatch = (map, newCoords) => {
  const apiKey = document.getElementById('map').getAttribute('data-mapbox-api-key');
  const url = 'https://api.mapbox.com/directions/v5/mapbox/walking/' + newCoords + '.json?geometries=geojson&access_token=' + apiKey;
    fetch(url)
    .then(response => response.json())
    .then(data => {
      const travelCoordinates = data.routes[0].geometry.coordinates.map((point) => { return point });
      addRoute(map, travelCoordinates);
    });
}

// adds the route as a layer on the map
const addRoute = (map, coords) => {
 // check if the route is already loaded
 if (map.getSource('route')) {
    map.removeLayer('route')
    map.removeSource('route')
 } else {
   map.addLayer({
     "id": "route",
     "type": "line",
     "source": {
       "type": "geojson",
       "data": {
         "type": "Feature",
         "geometry": {
           "type": "LineString",
           "coordinates": coords
         },
         "properties": {},
       }
     },
     "layout": {
       "line-join": "round",
       "line-cap": "round"
     },
     "paint": {
       "line-color": "#3b9ddd",
       "line-width": 8,
       "line-opacity": 0.8
     }
   });
 };
}

export { initDirections, initMapbox, getUserCoordinates };
