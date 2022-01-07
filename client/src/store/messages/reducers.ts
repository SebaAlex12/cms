import {
    UPDATE_MESSAGE,
  } from "./types";
  
  const initialState = {
    message: 'Inicjalizacja komunikatów',
  };
  
  export const messagesReducer = (state = initialState, action:any) => {
    switch (action.type) {
      case UPDATE_MESSAGE:
        return {
          ...state,
          message: action.payload
        };
      default:
        return state;
    }
  };
  