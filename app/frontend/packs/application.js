// import Rails from '@rails/ujs';
import Turbolinks from 'turbolinks';
// import * as ActiveStorage from '@rails/activestorage';
// import '../channels';
import '../controllers';

import '../stylesheets/application.scss';

// Rails.start();
Turbolinks.start();
// ActiveStorage.start();

// eslint-disable-next-line no-unused-vars
const images = require.context('../images', true);
// const imagePath = (name) => images(name, true);
