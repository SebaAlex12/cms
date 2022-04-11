import React, { useRef } from "react";
import styled from 'styled-components';

import { useSelector } from 'react-redux';

const Radoxradiators = () => {

    let products = useSelector((state:any) => state.products.products);
    const multiplier:any = useRef();

    // const descList1 = products.map((product:any) => {
    //     return (
    //         <textarea name="" id="">
    //             {product.opis}
    //         </textarea>
    //     )
    // });

    /* remove some elements to get lighter */
    products = products.splice(0,5);

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

    const parseTable = (myHtmlString:string) => {
        // let prices = [];
        const htmlDom = new DOMParser().parseFromString(myHtmlString, 'text/html');
        const lastElementsOfTable = htmlDom.querySelectorAll('table tr td:last-child');
        console.log(htmlDom.body.innerHTML);
        console.log('selected element', );

        lastElementsOfTable.forEach(element => {
            console.log(element.innerHTML);
        });

        console.log('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
    }

    const multipleSubmitHandler = () => {
        console.log('multipleSubmitHandler',multiplier.current.value);
    }

    /*  replace prices in string  */
    products.forEach((product:any) => {
        parseTable(product.opis2);
    })

    return (
        <RadoxradiatorsStytles>
            <div>Mnożnik cen: 
                <input type="text" ref={multiplier} />
                <button onClick={multipleSubmitHandler}>Przelicz</button>
            </div>
            {/* {descList1} */}
            <div className="products-box">{descList2}</div>
        </RadoxradiatorsStytles>
    )
}

export default Radoxradiators;

const RadoxradiatorsStytles = styled.div`
    .products-box{
        display:flex;
        flex-wrap:wrap;
    }
    textarea{
        width:300px;
        height:500px;
    }
`;
