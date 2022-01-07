import { Editor } from '@tinymce/tinymce-react';

export default function TinymceFieldGroup(props:any) {
  const {
    label,
    onChange,
    value,
    classes,
    style,
    error
  } = props;
  const addClasses = classes ? classes : '';
  return (
    <div className={`form-group ${addClasses}`} style={style}>
      { label && <label htmlFor="" className="form-label">{ label }</label>}
      <Editor
            initialValue={value}
            init={{
                    plugins: 'link image code',
                    toolbar: 'undo redo | bold italic | alignleft aligncenter alignright | code'
            }}
            onChange={onChange}
        />
        { error && error.length > 0 && <div className="form-error">{ error }</div> }
    </div>
  );
}
