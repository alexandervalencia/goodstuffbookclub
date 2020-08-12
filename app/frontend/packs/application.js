import RailsUjs from '@rails/ujs';
import Turbolinks from 'turbolinks';
import ActiveStorage from '@rails/activestorage';
import '../channels';
import '../controllers';

import '../stylesheets/application.scss';

RailsUjs.start();
Turbolinks.start();
ActiveStorage.start();

const images = require.context('../images', true);
// eslint-disable-next-line no-unused-vars
const imagePath = (name) => images(name, true);
