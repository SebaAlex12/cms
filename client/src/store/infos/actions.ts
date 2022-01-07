import {
    FETCHING_INFOS,
    INSERTING_INFO,
    FETCHING_INFO_BY_ID,
    UPDATING_INFO_BY_ID,
    DELETING_INFO,
    CLEAR_INFO_STATE
  } from "./types";
  
  export const fetchInfos = () => {
    return {
          type: FETCHING_INFOS
    }
  }

  export const insertInfo = (data:any) => {
    return {
        type: INSERTING_INFO,
        data
    }
  } 

  export const fetchInfoById = (id:any) => {
    return {
        type: FETCHING_INFO_BY_ID,
        id
    }
  }

  export const updateInfoById = (data:any) => {
    return {
        type: UPDATING_INFO_BY_ID,
        data
    }
  }

  export const deleteInfoById = (id:number) => {
    return{
        type: DELETING_INFO,
        id
    }
  }

  export const clearInfoState = () => {
    return {
      type: CLEAR_INFO_STATE
    }
  }