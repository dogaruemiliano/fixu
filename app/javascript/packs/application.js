import 'bootstrap';
import '../plugins/flatpickr';
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
import { refreshMessages } from '../plugins/refresh_messages';
import { initAutocomplete } from '../plugins/init_autocomplete';

initMapbox();
refreshMessages();
initAutocomplete();


