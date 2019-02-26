import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const success = (pos) => {
      const crd = pos.coords;

      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10',
        center: [crd.longitude,crd.latitude],
        zoom: 17
      });

      const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach((marker) => {
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .addTo(map);
      });
      // fitMapToMarkers(map, markers);
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

    const error = (err) => {
      console.warn(`ERREUR (${err.code}): ${err.message}`);

      const fitMapToMarkers = (map, markers) => {
        const bounds = new mapboxgl.LngLatBounds();
        markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
        map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
      };
      if (mapElement) { // only build a map if there’s a div#map to inject into
       mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
       const map = new mapboxgl.Map({
         container: 'map',
         style: 'mapbox://styles/mapbox/streets-v10'
       });
       const markers = JSON.parse(mapElement.dataset.markers);
       markers.forEach((marker) => {
         new mapboxgl.Marker()
           .setLngLat([ marker.lng, marker.lat ])
           .addTo(map);
       });
       fitMapToMarkers(map, markers);
      }
    }

    navigator.geolocation.getCurrentPosition(success, error);

  }

  const addMarkersToMap = (map, markers) => {
    markers.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    });
  };
};


export { initMapbox };
