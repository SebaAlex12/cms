import { combineReducers } from "redux";

import { infosReducer } from "./infos/reducers";
import { productsReducer } from './products/reducers';
import { messagesReducer } from './messages/reducers';

export const reducers = combineReducers({
    infos: infosReducer,
    products: productsReducer,
    messages: messagesReducer
});