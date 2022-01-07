import styled from 'styled-components';
import { Routes, Route } from 'react-router-dom';

import MenuTop from './MenuTop';
import MenuAside from './MenuAside';
import { Container, RowContainer, FullContainer, LeftContainer, RightContainer } from '../styles/basic';

/* messages container */
import MessagesContainer from '../store/messages/components/MessagesContainer';

/* menus container */
import InfosMenu from '../store/infos/components/InfosMenu';

/*  main containers */
import InfosContainer from '../store/infos/components/InfosContainer';

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
                            <Route path="/infos:id" element={<InfosContainer />} />
                            <Route path="/infos" element={<InfosContainer />} />
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