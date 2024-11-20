import { useState } from 'react';

import styles from 'styled-components';

import ErrorsMessage from '../../../common/forms/ErrorsMessage';
import TextFieldGroup from '../../../common/forms/TextFieldGroup';

import { Form, Button } from '../../../styles/basic';

const UsersLoginForm = () => {
    const [ user, setUser ] = useState<any>([]);
    const [ errors, setErrors ] = useState<any>([]);

    const onChangeHandler = (event:any) => {
        setUser((prevUser:any) => {return {...prevUser,[event.target.name]:event.target.value} });
    }

    const [ login ] = user;

    return (
        <UsersLoginFormBox>
            <h1>Logowanie</h1>
            <ErrorsMessage errors={errors} />
            <Form>
                <TextFieldGroup label='Nazwa strony' onChange={onChangeHandler} name='nazwa' value={login} error={errors.login && errors.login} />
                <Button />
            </Form>
        </UsersLoginFormBox>
    )
}
export default UsersLoginForm;

const UsersLoginFormBox = styles.div`

`;