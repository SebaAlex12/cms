// interface Iprops{
//   label: string | undefined,
//   type: string | undefined,
//   title: string | undefined,
//   onChange(data:any):any,
//   name: string | undefined,
//   value: any,
//   disabled: boolean | undefined,
//   placeholder: string | undefined,
//   classes: string | undefined,
//   style: React.CSSProperties | undefined
// }

export default function TextFieldGroup(props:any) {
  const {
    label,
    type,
    title,
    onChange,
    name,
    value,
    disabled,
    placeholder,
    classes,
    style,
    error
  } = props;
  const addClasses = classes ? classes : '';
  return (
    <div className={`form-group ${addClasses}`} style={style}>
      { label && <label htmlFor="" className="form-label">{ label }</label>}
      <input
        className="form-control"
        type={type}
        title={title}
        onChange={onChange}
        name={name}
        value={value}
        disabled={disabled}
        placeholder={placeholder}
      />
      { error && error.length > 0 && <div className="form-error">{ error }</div> }
    </div>
  );
}