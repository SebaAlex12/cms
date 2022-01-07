import { useEffect, useState, memo } from 'react';
import { useSelector } from 'react-redux';

import styled from 'styled-components';

const MessagesContainer = () => {
    const data = useSelector((state:any) => state.messages.message);
    const [active, setActive] = useState(false);
    const [message, setMessage] = useState('');

    useEffect(() => {
        setMessage(data);
        setActive(true);
        const timer = setTimeout(() => {
            setActive(false);
        }, 5000);
        return () => clearTimeout(timer);        
    },[data]);

    return(
        <MessagesContainerBox>
            <div className={ active ? 'message active' : 'message' }>{ message }</div>
        </MessagesContainerBox>
    )
}

export default memo(MessagesContainer);

const MessagesContainerBox = styled.div`
    .message{
        display:none;
        position: fixed;
        z-index: 1000;
        background-color: #5b7cc7;
        color: #fff;
        padding: 8px 14px;
        left: 0px;
        top: 0px;
    }
    .message.active{
        display:block;
    }
`;