import styled from 'styled-components';
import { Routes, Route } from 'react-router-dom';

import MenuTop from './MenuTop';
import MenuAside from './MenuAside';
import { Container, RowContainer, FullContainer, LeftContainer, RightContainer } from '../styles/basic';

/* messages container */
import MessagesContainer from '../store/messages/components/MessagesContainer';

/* menus container */
import InfosMenu from '../store/infos/components/InfosMenu';

/* logim container */
import UsersLoginForm from '../store/users/components/UsersLoginForm';

/*  main containers */
import InfosContainer from '../store/infos/components/InfosContainer';
import ProductsContainer from '../store/products/components/ProductsContainer';

const Dashboard = () => {
    console.log('lunching dashboard');

    return(
        <DashboardBox>
            <MessagesContainer />
            <FullContainer>
                <Container className='menu-top'>
                        <MenuTop />
                </Container>
                <RowContainer>
                    <LeftContainer>
                        <MenuAside>
                            <Routes>
                                <Route path='/infos:id' element={<InfosMenu/>} />
                                <Route path='/infos' element={<InfosMenu/>} />
                            </Routes>
                        </MenuAside>
                    </LeftContainer>
                    <RightContainer>
                        <Routes>
                            <Route path='/' element={<UsersLoginForm />} />
                            <Route path="/infos:id" element={<InfosContainer />} />
                            <Route path="/infos" element={<InfosContainer />} />
                            <Route path='/products' element={<ProductsContainer />} />
                        </Routes>
                    </RightContainer>
                </RowContainer>
            </FullContainer>
        </DashboardBox>
    )
}

export default Dashboard;

const DashboardBox = styled.section`
    .menu-top{
        justify-content:right;
    }
`;