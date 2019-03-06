import mapboxgl from 'mapbox-gl';
// import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import MapboxDraw from '@mapbox/mapbox-gl-draw';


const getUserCoordinates = (map, callback) => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    navigator.geolocation.getCurrentPosition((position) => {
      callback(map, position.coords);
    });
  }
}

const center = (map) => {
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
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '40px';
    element.style.height = '40px';
    element.dataset.toggle = "modal";
    element.dataset.target = `#cardModal-${marker.location_id}`;
    element.dataset.longitude = marker.lng;
    element.dataset.latitude = marker.lat;

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
const bindMarkersToRoute = (map, userCoordinates) => {
  document.querySelectorAll(".marker").forEach((marker) => {
    marker.addEventListener('click', (event) => {
      //: get markers coordinates
      const { latitude, longitude } = event.currentTarget.dataset;
      // event listener on the btn (only this one)
      const cardModalId = event.currentTarget.dataset.target
      const btnItinerary = document.querySelector(`${cardModalId} #itinerary-btn`);
      btnItinerary.addEventListener("click", (event) => {
        // draw the route
        const token = document.getElementById('map').dataset.mapboxApiKey;
        const url = `https://api.mapbox.com/directions/v5/mapbox/walking/${userCoordinates.longitude},${userCoordinates.latitude};${longitude},${latitude}?steps=true&access_token=${token}&geometries=geojson`
        fetch(url)
          .then(response => response.json())
          .then(data => {
            const travelCoordinates = data.routes[0].geometry.coordinates.map((point) => { return point });
            addRoute(map, travelCoordinates);
            const instructions = document.getElementById('instructions');
            const steps = data.routes[0].legs[0].steps;

            const tripInstructions = [];
            console.log(btnItinerary.dataset.logo)
            alert(instructions.innerHTML = '🌱 Durée du trajet: ' + Math.floor(data.routes[0].legs[0].duration / 60) + ' minutes 😊');
          });
        const close = document.querySelector(`${cardModalId} #card-close-modal`).click();
      });
    });
  });
};

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
};

export { initMapbox, getUserCoordinates, bindMarkersToRoute };
