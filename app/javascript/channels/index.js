// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)
// Code display map
// import mapboxgl from '!mapbox-gl';

// mapboxgl.accessToken = 'pk.eyJ1Ijoiam9rZXI4MyIsImEiOiJja3J5bHRsZ3Ewa2F5MnFvOXJyb2p5ZzdqIn0.iQ4wC47dqMT5VJtg3VlEVg';
// const map = new mapboxgl.Map({
//   container: 'map',
//   style: 'mapbox://styles/mapbox/streets-v11',
// });
