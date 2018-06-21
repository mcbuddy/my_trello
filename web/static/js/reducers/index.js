//web/static/js/reducers/index.js

import { combineReducers }  from 'redux';
import { routerReducer }    from 'react-router-redux';
import session              from './session';

export default combineReducers({
  routing: routeReducer,
  session: session,
});