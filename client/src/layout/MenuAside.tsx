import { MenuAsideBox } from '../styles/basic';

const MenuAside = (props:any) => {
    return(
        <MenuAsideBox>{ props.children }</MenuAsideBox>
    )
}
export default MenuAside;