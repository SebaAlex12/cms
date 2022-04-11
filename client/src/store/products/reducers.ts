import {
    FETCHING_PRODUCTS,
    FETCH_PRODUCTS_SUCCESS,  
    PRODUCTS_ERROR
  } from "./types";

//   import { Iproducts } from './interfaces';

//   const initialProduct = {
//     id: undefined,
//     nazwa: '',
//     nazwaen: '',
//     nazwade: '',
//     naglowek: '',
//     nagloweken: '',
//     naglowekde: '',
//     tekst: '',
//     teksten: '',
//     tekstde: '',
//     g: '',
//     parent: '',
//     nr: '',
//     widocznosc: '',
//     widocznosc_linku: '',
//     nazwa_pliku: '',
//     nazwa_plikuen: '',
//     nazwa_plikude: '',
//     link: '',
//     szablon: '',
//     style: '',
//     img: '',
//     img_strona: '',
//     title: '',
//     titleen: '',
//     titlede: '',
//     description: '',
//     descriptionen: '',
//     descriptionde: '',
//     keywords: '',
//     keywordsen: '',
//     keywordsde: '',
//     artykuly_id: '',
//     albumy_id: '',
//     dodatkowe_id: '',
//     grupy_sekcyjne_id: '',
//     banery_id: '',
//   }
  
  const initialState = {
    products: [],
    // product: initialProduct,
    loading: false,
    error: ''
  };
  
  export const productsReducer = (state = initialState, action:any) => {
    switch (action.type) {
      case FETCHING_PRODUCTS:
        return{
          ...state,
          loading:true
        };
      case FETCH_PRODUCTS_SUCCESS:
        return{
          ...state,
          products: action.payload,
          loading: false
        };
      case PRODUCTS_ERROR:
          return {
            ...state,
            error: action.payload
          };
      default:
        return state;
    }
  };