import react from "react";
import styled from 'styled-components';

import { useSelector } from 'react-redux';

const Radoxradiators = () => {

    const products = useSelector((state:any) => state.products.products);

    // const descList1 = products.map((product:any) => {
    //     return (
    //         <textarea name="" id="">
    //             {product.opis}
    //         </textarea>
    //     )
    // });

    console.log('products',products);

    const descList2 = products.map((product:any) => {
        return(
            <div>
                <h1>{product.nazwa}</h1>
            <textarea name="" id="">
                {product.opis2}
            </textarea>
            </div>
        )
    });

    return (
        <RadoxradiatorsStytles>
            {/* {descList1} */}
            {descList2}
        </RadoxradiatorsStytles>
    )
}

export default Radoxradiators;

const RadoxradiatorsStytles = styled.div`
    display:flex;
    flex-wrap:wrap;
    textarea{
        width:300px;
        height:500px;
    }
`;
