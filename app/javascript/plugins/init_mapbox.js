import mapboxgl from 'mapbox-gl';

const initMapbox = () => {

  const mapElement = document.getElementById('map');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const marker = JSON.parse(mapElement.dataset.marker);

    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [marker.lng, marker.lat],
      zoom: 12
    });

    map.addControl(new mapboxgl.NavigationControl());

    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '25px';
    element.style.height = '25px';

    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  }
};

export { initMapbox };
