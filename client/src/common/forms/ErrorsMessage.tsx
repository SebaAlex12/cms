import styled from 'styled-components';

const ErrorsMessage = (errors:any) => {
    console.log('errors',errors);
     const errorsContent = errors ? Object.values(errors.errors).map((error:any,index:number) => <span key={index}>{ error }</span>) : '';
    return (
        <ErrorsMessageBox>
            { errorsContent }
        </ErrorsMessageBox>
    );
}

export default ErrorsMessage;

const ErrorsMessageBox = styled.div`
    display:block;
    color:red;
    padding:10px 0px;
    span{
        padding-right:10px;
    }
`;