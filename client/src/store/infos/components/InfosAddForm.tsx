import { useEffect, useState } from 'react';
import { useSelector, useDispatch } from 'react-redux';
import styled from 'styled-components';

import { faPencilAlt } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

import { siteTemplates } from '../../settings';

import { updateInfoById, insertInfo } from '../actions';

import Validator from '../../../common/forms/Validator';
import ErrorsMessage from '../../../common/forms/ErrorsMessage';
import TextFieldGroup from '../../../common/forms/TextFieldGroup';
import FileFieldGroup from '../../../common/forms/FileFieldGroup';
import SelectFieldGroup from '../../../common/forms/SelectFieldGroup';
import TinymceFieldGroup from '../../../common/forms/TinymceFieldGroup';

import { Form, Button } from '../../../styles/basic';

const InfosAddForm = () => {
    const dispatch = useDispatch();
    const schema = [
        {
          name: "nazwa",
          required: [true, "Nazwa jest wymagana"],
          // minLength: [8, "Minimalna wymagana liczba w nazwie"],
        }
    ];
    const data = useSelector((state:any) => state.infos.info);
    const [info,setInfo] = useState(data);
    const [errors, setErrors] = useState<any>([]);
    const path = 'http://localhost/demo/img/podstrony/';

    useEffect(() => {
        setInfo(data);
        setErrors([]);
    },[data]);

    const onChangeHandler = (event:any) => {
        setInfo({...info,[event.target.name]:event.target.value});
    };
    const onChangeIntroEditorHandler = (event:any) => {
        // setInfo({...info,naglowek:event.target.getContent()})
    }
    const onChangeTextEditorHandler = (event:any) => {
        // setInfo({...info,tekst:event.target.getContent()})
    }
    // console.log('info',info);
    const sendFormHandler = (e:any) => {
        const result = Validator(schema,info);
        if(result.length === 0){
            if(info.id){
                dispatch(updateInfoById(info));
            }else{
                dispatch(insertInfo(info));
            }
        }else{
            setErrors(result);
        }
        e.preventDefault();
    }
    
    const { nazwa, nazwa_pliku, title, description, keywords, naglowek, tekst, szablon, img, img_strona } = info;

    return(
        <InfosAddFormBox>
            <ErrorsMessage errors={errors} />
                <Form action="" encType="multipart/form-data">
                            <TextFieldGroup label='Nazwa strony' onChange={onChangeHandler} 
                            name='nazwa' value={nazwa} error={errors.nazwa && errors.nazwa}/>
                            <FileFieldGroup label='Obrazek do tekstu' type="file" onChange={onChangeHandler} 
                            name='img' value={img} path={path} error={errors.img && errors.img}/>
                            <FileFieldGroup label='Obrazek do nagłówka' type="file" onChange={onChangeHandler} 
                            name='img_strona' value={img_strona} path={path} error={errors.img_strona && errors.img_strona}/>
                            <TextFieldGroup label='Nazwa pliku' onChange={onChangeHandler} 
                            name='nazwa_pliku' value={nazwa_pliku} error={errors.nazwa_pliku && errors.nazwa_pliku}/>
                            <TextFieldGroup label='Title' onChange={onChangeHandler} 
                            name='title' value={title} classes='long-input' error={errors.title && errors.title}/>
                            <TextFieldGroup label='description' onChange={onChangeHandler} 
                            name='description' value={description} classes='long-input' error={errors.description && errors.description}/>
                            <TextFieldGroup label='keywords' onChange={onChangeHandler} 
                            name='keywords' value={keywords} classes='long-input' error={errors.keywords && errors.keywords}/>
                            <SelectFieldGroup defaultName='żaden' label='Szablon (Układ/wygląd strony)'
                            name='szablon' selectedItemValue={szablon} items={siteTemplates} onChange={onChangeHandler} error={errors.szablon && errors.szablon} />
                            <SelectFieldGroup defaultName='żaden' label='Przypisz grupę sekcyjną (działa z szablonem grupy sekcyjne)'
                            name='grupy_sekcyjne_id' selectedItemName='' onChange={onChangeHandler} error={errors.grupy_sekcyjne_id && errors.grupy_sekcyjne_id}/>
                            <SelectFieldGroup defaultName='żaden' label='Przypisz grupę banerową'
                            name='banery_id' selectedItemName='' onChange={onChangeHandler} error={errors.banery_id && errors.banery_id}/>
                            <SelectFieldGroup defaultName='żaden' label='Przypisz kategorię artykułów'
                            name='artykuly_id' selectedItemName='' onChange={onChangeHandler} error={errors.artykuly_id && errors.artykuly_id}/>
                            <SelectFieldGroup defaultName='żaden' label='Przypisz album z galerii'
                            name='albumy_id' selectedItemName='' onChange={onChangeHandler} error={errors.albumy_id && errors.albumy_id}/>
                            <SelectFieldGroup defaultName='żaden' label='Przypisz boxy/media'
                            name='dodatkowe_id' selectedItemName='' onChange={onChangeHandler} error={errors.dodatkowe_id && errors.dodatkowe_id}/>
                            <TinymceFieldGroup label='Nagłówek' classes='column-group'
                            value={naglowek} onChange={onChangeIntroEditorHandler} error={errors.naglowek && errors.naglowek}/>
                            <TinymceFieldGroup label='Tekst' classes='column-group' 
                            value={tekst}  onChange={onChangeTextEditorHandler} error={errors.tekst && errors.tekst}/>
                            <Button className='send-form-button' onClick={sendFormHandler}>
                                <FontAwesomeIcon icon={faPencilAlt} />
                            </Button>
                </Form>
        </InfosAddFormBox>
    )
}

export default InfosAddForm;

const InfosAddFormBox = styled.div`
    .form-group{
        flex-direction: row-reverse;
        display: flex;
        justify-content: left;
    }
`;