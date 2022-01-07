import { Link } from "react-router-dom";
import styled from 'styled-components';

import { BtnLink } from '../styles/basic';

const MenuTop = () => {
    return(
        <MenuTopBox>
            <Link to='/'>
                <BtnLink>Strona główna</BtnLink>
            </Link>
            <Link to='/infos'>
                <BtnLink>Strony</BtnLink>
            </Link>
        </MenuTopBox>
    )
}

export default MenuTop;

const MenuTopBox = styled.div`
    
`;