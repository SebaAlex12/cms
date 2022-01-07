import styled from 'styled-components';
import { useDispatch } from 'react-redux';
import { useParams } from 'react-router-dom';

import { fetchInfos, fetchInfoById, clearInfoState } from '../actions';
import InfosAddForm from './InfosAddForm';


const InfosContainer = () => {
    const { id } = useParams();
    const dispatch = useDispatch();
    if((id)){
        dispatch(fetchInfoById(id.replace(':','')));
    }else{
        dispatch(clearInfoState());
    }
    dispatch(fetchInfos());
    return(
        <InfosContainerBox>
            <InfosAddForm />
        </InfosContainerBox>
    )
}

export default InfosContainer;

const InfosContainerBox = styled.div`

`;