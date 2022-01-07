import axios from "axios";
import { call, put, takeEvery } from "redux-saga/effects";
import moment from 'moment';
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
  INFOS_ERROR,
} from "./types";
import { UPDATE_MESSAGE } from '../messages/types';

function* fetchInfosAsync():any {
  try{
    const response = yield call([axios, axios.get],'http://localhost:5000/infos');
    yield put({type:FETCH_INFOS_SUCCESS,payload:response.data});
  }catch(error){
    yield put({ type: INFOS_ERROR, payload: error });
  }
}

export function* fetchInfosWatcher() {
  yield takeEvery(FETCHING_INFOS, fetchInfosAsync);
}

function* fetchInfoByIdAsync(data:any):any{
  const { id } = data;
  try{
    const response = yield call([axios, axios.post],'http://localhost:5000/info/id/',{id});
    yield put({type:FETCH_INFO_BY_ID_SUCCESS,payload:response.data[0]});
  }catch(error){
    yield put({ type: INFOS_ERROR, payload: error });
  }
}

export function* fetchInfoByIdWatcher(){
  yield takeEvery(FETCHING_INFO_BY_ID,fetchInfoByIdAsync);
}

function* updateInfoByIdAsync(data:any):any{
  try{
    const response = yield call([axios, axios.post],'http://localhost:5000/info/update/id/',data);
    yield put({type:UPDATE_INFO_BY_ID_SUCCESS,payload:response.data[0]});
    yield put({type:UPDATE_MESSAGE,payload:`Aktualizacja [${response.data[0].nazwa}] [godz:${moment().format('h:mm:ss')}]`});
  }catch(error){
    yield put({ type: INFOS_ERROR, payload: error });
  }
}

export function* updateInfoByIdWatcher(){
  yield takeEvery(UPDATING_INFO_BY_ID,updateInfoByIdAsync);
}

function* insertInfoAsync(data:any):any {
  try{
    const response = yield call([axios,axios.post],'http://localhost:5000/info/insert/',data);
    yield put({type:INSERT_INFO_SUCCESS, payload:response.data[0]});
    yield put({type:UPDATE_MESSAGE,payload:`Dodanie [${response.data[0].nazwa}] [godz:${moment().format('h:mm:ss')}]`});
  }catch(error){
    yield put({ type: INFOS_ERROR, payload: error });
  }
}

export function* insertInfoWatcher(){
  yield takeEvery(INSERTING_INFO,insertInfoAsync);
}

function* deleteInfoByIdAsync(id:any):any{
  try{
      const response = yield call([axios,axios.post],'http://localhost:5000/info/delete/id/',id);
      yield put({type:DELETE_INFO_SUCCESS, payload:response.data});
      yield put({type:UPDATE_MESSAGE,payload:`Rekord został usunięty [godz:${moment().format('h:mm:ss')}]`});
  }catch(error){
    yield put({ type: INFOS_ERROR, payload: error });
  }  
}

export function* deleteInfoByIdWatcher(){
    yield takeEvery(DELETING_INFO, deleteInfoByIdAsync);
}