import { useState } from 'react';

import styles from 'styled-components';

import Validator from '../../../common/forms/Validator';
import ErrorsMessage from '../../../common/forms/ErrorsMessage';
import TextFieldGroup from '../../../common/forms/TextFieldGroup';

import { Form, Button } from '../../../styles/basic';

const schema = [
    {
        name: "login",
        required: [true, "Login jest wymagany"],
        // minLength: [8, "Minimalna wymagana liczba w nazwie"],
    },
    {
        name:"password",
        required: [true, "Hasło jest wymagane"]
    }
];

const UsersLoginForm = () => {
    const [ user, setUser ] = useState<any>({login:'',password:''});
    const [ errors, setErrors ] = useState<any>([]);

    const onChangeHandler = (event:any) => {
        setUser((prevUser:any) => {return {...prevUser,[event.target.name]:event.target.value} });
    }
    const onSubmitFormHandler = (e:any) => {
        e.preventDefault();
        const result = Validator(schema, user);
        if(result.length === 0){
            console.log('form is valid');
            setErrors([]);
        }else{
            setErrors(result);
        }
    };
    const { login, password } = user;

    return (
        <UsersLoginFormBox>
            <h1>Logowanie</h1>
            {/* <ErrorsMessage errors={errors} /> */}
            <Form onSubmit={onSubmitFormHandler}>
                <TextFieldGroup label='Login' onChange={onChangeHandler} name='login' value={login} error={errors.login && errors.login} />
                <TextFieldGroup label='Hasło' onChange={onChangeHandler} name='password' value={password} error={errors.password && errors.password} />
                <Button>Wyślij</Button>
            </Form>
        </UsersLoginFormBox>
    )
}
export default UsersLoginForm;

const UsersLoginFormBox = styles.div`

`;