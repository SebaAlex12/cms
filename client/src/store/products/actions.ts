import {
    FETCHING_PRODUCTS
  } from "./types";
  
  export const fetchProducts = () => {
    return {
          type: FETCHING_PRODUCTS
    }
  }