import axios from "axios";
import { call, put, takeEvery } from "redux-saga/effects";
import {
  FETCHING_PRODUCTS,
  FETCH_PRODUCTS_SUCCESS,
  PRODUCTS_ERROR,
} from "./types";

function* fetchProductsAsync():any {
  try{
    const response = yield call([axios, axios.get],'http://localhost:5000/products');
    yield put({type:FETCH_PRODUCTS_SUCCESS,payload:response.data});
  }catch(error){
    yield put({ type: PRODUCTS_ERROR, payload: error });
  }
}

export function* fetchProductsWatcher() {
  yield takeEvery(FETCHING_PRODUCTS, fetchProductsAsync);
}