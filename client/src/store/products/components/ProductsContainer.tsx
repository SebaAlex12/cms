import styled from 'styled-components';
import { useDispatch } from 'react-redux';
import { useParams } from 'react-router-dom';

import { fetchProducts } from '../actions';

import Radoxradiators from './temp/Radoxradiators';


const ProductsContainer = () => {
    const dispatch = useDispatch();
    dispatch(fetchProducts());
    return(
        <ProductsContainerBox>
            <Radoxradiators />
        </ProductsContainerBox>
    )
}

export default ProductsContainer;

const ProductsContainerBox = styled.div`

`;