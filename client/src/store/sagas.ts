import { fork, all } from "redux-saga/effects";

import {
    fetchInfosWatcher,
    fetchInfoByIdWatcher,
    updateInfoByIdWatcher,
    insertInfoWatcher,
    deleteInfoByIdWatcher
  } from "./infos/saga";

  export default function* rootSaga() {
    yield all([
        fork(fetchInfosWatcher),
        fork(fetchInfoByIdWatcher),
        fork(updateInfoByIdWatcher),
        fork(insertInfoWatcher),
        fork(deleteInfoByIdWatcher)
    ]);
}