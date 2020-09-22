import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10',
  });
};

const addMarkersToMap = (map, markers) => {
    markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this
    // DEFAULT MARKER
    //new mapboxgl.Marker().setLngLat([marker.lng, marker.lat]).setPopup(popup).addTo(map);
    
    // CUSTOM MARKER (AVATAR)
      // Create a HTML element for your custom marker
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '25px';
    element.style.height = '25px';

  // Passing element as an argument to the new marker
    new mapboxgl.Marker(element)
    .setLngLat([marker.lng, marker.lat])
    .setPopup(popup)
    .addTo(map);
});
  
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach((marker) => bounds.extend([marker.lng, marker.lat]));
  map.fitBounds(bounds, { 
    padding: 70, 
    maxZoom: 15, 
    duration: 0 
  });
};

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();

    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }));
  }
};




// const avatar = document.createElement("div");
// avatar.className = "marker";
// avatar.style.backgroundImage = 
// 'url(https://placekitten.com/g/' +
// marker.properties.iconSize.join('/') +
// '/)';
// el.style.width = marker.properties.iconSize[0] + 'px';
// el.style.height = marker.properties.iconSize[1] + 'px';

export { initMapbox };
