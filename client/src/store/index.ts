import { combineReducers } from "redux";

import { infosReducer } from "./infos/reducers";
import { messagesReducer } from './messages/reducers';

export const reducers = combineReducers({
    infos: infosReducer,
    messages: messagesReducer
});