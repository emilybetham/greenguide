import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const center = (map) => {
  navigator.geolocation.getCurrentPosition(
    (position) => {
      const crd = position.coords;
      map.setCenter([crd.longitude,crd.latitude]);
      map.setZoom(15);

      map.addControl(new mapboxgl.GeolocateControl({
        positionOptions: {
         enableHighAccuracy: true
        },
        trackUserLocation: true
      }));
      setTimeout(() => {
        const currentLocationControl = document.querySelector('.mapboxgl-ctrl-geolocate');
        currentLocationControl.click();
      }, 500);
    }
  );
}

const buildMap = () => {
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10',
    center: [2.3514992, 48.8566101],
    zoom: 12
  });
}

const buildMarkers = (mapElement, map) => {
  const markers = JSON.parse(mapElement.dataset.markers);
  markers.forEach((marker) => {
    const element = document.createElement('div');
    element.className = 'marker';
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

    const map = buildMap();
    center(map);
    const markers = buildMarkers(mapElement, map);

    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
  }
}



export { initMapbox };
