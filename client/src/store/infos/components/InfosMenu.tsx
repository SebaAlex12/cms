import { NavLink } from 'react-router-dom';
import { useSelector, useDispatch } from 'react-redux';

import { confirmAlert } from 'react-confirm-alert';
import 'react-confirm-alert/src/react-confirm-alert.css';

import styled from 'styled-components';

import { faTimes } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

import { Iinfo } from '../interfaces';

import { deleteInfoById } from '../actions';
import { SmallButton } from '../../../styles/basic';

const InfosMenu = () => {
    const infos:[Iinfo] = useSelector((state:any) => state.infos.infos);
    const dispatch = useDispatch();
    const deleteInfoHandler = (item:any) => {
        confirmAlert({
            title: 'Usuwanie rekordu',
            message: `Czy na pewno usunąć strone: ${item.nazwa} ?`,
            buttons: [
              {
                label: 'Tak',
                onClick: () => {
                    dispatch(deleteInfoById(item.id));
                }
              },
              {
                label: 'nie',
                onClick: () => {}
              }
            ]
          });
    }
    const content = infos ? infos.map((item:Iinfo) => (
        <li key={item.id} >
            <SmallButton onClick={() => deleteInfoHandler(item)}>
                <FontAwesomeIcon icon={faTimes} />
            </SmallButton>
            <NavLink to={`/infos:${item.id}`}>{ item.nazwa }</NavLink>
        </li>
    ))
    : null;
    return(
        <InfosMenuBox className="infos-menu-box">
            <ul>{content}</ul>
        </InfosMenuBox>
    )
}

export default InfosMenu;

const InfosMenuBox = styled.div`
    ul{
        list-style-type:none;
        margin:0px;
        padding:0px;
    }
    li{
        display:flex;
        flex-direction:row;
    }
`;