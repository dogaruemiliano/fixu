import "bootstrap";
import "../plugins/flatpickr"

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

import{refreshMessages} from '../plugins/refresh_messages';

initMapbox();
refreshMessages();
