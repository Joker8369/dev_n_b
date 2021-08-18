
import mapboxgl from '!mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  // const markers = JSON.parse(mapElement.dataset.markers);

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = 'pk.eyJ1Ijoiam9rZXI4MyIsImEiOiJja3J5bHRsZ3Ewa2F5MnFvOXJyb2p5ZzdqIn0.iQ4wC47dqMT5VJtg3VlEVg';
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v11',
    });
    // const markers = JSON.parse(mapElement.dataset.markers);
    // markers.forEach((marker) => {
    //   new mapboxgl.Marker()
    //     .setLngLat([40, 40])
    //     .addTo(map);
    // });
  }
};
export { initMapbox };
