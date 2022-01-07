import {
    FETCHING_INFOS,
    FETCH_INFOS_SUCCESS,
    INSERTING_INFO,
    INSERT_INFO_SUCCESS,
    FETCHING_INFO_BY_ID,
    FETCH_INFO_BY_ID_SUCCESS,
    UPDATING_INFO_BY_ID,
    UPDATE_INFO_BY_ID_SUCCESS,  
    DELETING_INFO,
    DELETE_INFO_SUCCESS,
    CLEAR_INFO_STATE,  
    INFOS_ERROR
  } from "./types";

  import { Iinfo } from './interfaces';

  const initialInfo = {
    id: undefined,
    nazwa: '',
    nazwaen: '',
    nazwade: '',
    naglowek: '',
    nagloweken: '',
    naglowekde: '',
    tekst: '',
    teksten: '',
    tekstde: '',
    g: '',
    parent: '',
    nr: '',
    widocznosc: '',
    widocznosc_linku: '',
    nazwa_pliku: '',
    nazwa_plikuen: '',
    nazwa_plikude: '',
    link: '',
    szablon: '',
    style: '',
    img: '',
    img_strona: '',
    title: '',
    titleen: '',
    titlede: '',
    description: '',
    descriptionen: '',
    descriptionde: '',
    keywords: '',
    keywordsen: '',
    keywordsde: '',
    artykuly_id: '',
    albumy_id: '',
    dodatkowe_id: '',
    grupy_sekcyjne_id: '',
    banery_id: '',
  }
  
  const initialState = {
    infos: [],
    info: initialInfo,
    loading: false,
    error: ''
  };
  
  export const infosReducer = (state = initialState, action:any) => {
    switch (action.type) {
      case FETCHING_INFOS:
        return{
          ...state,
          loading:true
        };
      case FETCH_INFOS_SUCCESS:
        return{
          ...state,
          infos: action.payload,
          loading: false
        };
      case FETCHING_INFO_BY_ID:
        return{
          ...state,
          loading:true
        };
      case FETCH_INFO_BY_ID_SUCCESS:
        return{
          ...state,
          info: action.payload,
          loading:false
        }
      case UPDATING_INFO_BY_ID:
          return{
            ...state,
            loading:true
          };
      case UPDATE_INFO_BY_ID_SUCCESS:
          return{
            ...state,
            infos: state.infos.map((info:Iinfo) => info.id === action.payload.id ? action.payload : info),
            info: action.payload,
            loading:false
          };
      case INSERTING_INFO:
        return{
              ...state,
              loading:true
      };
      case INSERT_INFO_SUCCESS:
          return{
              ...state,
              infos: [ ...state.infos, action.payload ],
              info: action.payload,
              loading:false
      };
      case DELETING_INFO:
        return{
          ...state,
          loading:true
      };
      case DELETE_INFO_SUCCESS:
        return{
          ...state,
          infos: state.infos.filter((info:Iinfo) => info.id !== action.payload.id),
          info: state.info.id !== action.payload.id ? state.info : initialInfo,
          loading:false
        }
      case CLEAR_INFO_STATE:
        return{
          ...state,
          info: initialInfo
      };
      case INFOS_ERROR:
          return {
            ...state,
            error: action.payload
          };
      default:
        return state;
    }
  };