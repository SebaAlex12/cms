import styled from 'styled-components';

/* basic structure */

export const Container = styled.div`
    display:flex;
`;
export const RowContainer = styled.div`
    display:flex;
    flex-direction:row;
    gap:15px;
`;
export const FullContainer = styled.div`
    display:flex;
    flex-direction:column;
    max-width:1200px;
    margin-left:auto;
    margin-right:auto;
`;
export const LeftContainer = styled.aside`
    display:flex;
    flex-direction:column;
    flex:1;
`;
export const RightContainer = styled.div`
    display:flex;
    flex-direction:column;
    flex:4;
`;
export const MenuAsideBox = styled.div`
    ul{
        background-color:grey;
        list-style-type:none;
        margin:0px;
        padding:10px 15px;
        li{
            a{
                padding:8px 15px;
                text-decoration:none;
                font-size:13px;
                color:#fff;
                display:block;
                text-transform:uppercase;
                border-bottom:1px solid #fff;
            }
            a:hover{
                background-color:#fff;
                color:#000;
            }
            &:last-child{
                a{
                    border:none;
                }
            }
        }
    }
`;

/* basic elements  */
export const Button = styled.button`
    margin:2px;
    padding: 8px 15px;
    border: 1px solid #797979;
    font-size: 14px;
    color: white;
    background-color: #afafaf;
    cursor: pointer;
    border-radius: 4px;
`;
export const SmallButton = styled.button`
    margin:2px;
    padding:2px 4px;
    border: 1px solid #797979;
    font-size: 12px;
    color: white;
    background-color: #afafaf;
    cursor: pointer;
    border-radius: 2px; 
    :hover{
        background-color:#000;
        color:grey;
    }
`;
export const BtnLink = styled.button`
    margin:2px;
    padding: 8px 15px;
    border: 1px solid #797979;
    font-size: 14px;
    color: white;
    background-color: #afafaf;
    cursor: pointer;
    border-radius: 4px;
`;

/*  basic form */
export const Form = styled.form`
    .form-group{
        padding:5px;
    }
    .form-label{
        padding:0px 10px;
    }
    .form-control{
        width:300px;
    }
    .form-error{
        padding-right: 10px;
        display:flex;
        color:red;
    }
    .long-input .form-control{
        width:60%;
    }
    .form-group.column-group{
        flex-direction:column;
        .form-label{
            padding:0px;
        }
        .form-control{
            width:100%;
        }
    } 
    .send-form-button{
        position:fixed;
        right:0px;
        bottom:0px;
        z-index: 10000;
    }
`;