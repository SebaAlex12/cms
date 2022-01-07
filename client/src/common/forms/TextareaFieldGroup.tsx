const TextareaFieldGroup = (props:any) => {
  const {
    label,
    title,
    onChange,
    name,
    value,
    cols,
    rows,
    disabled,
    placeholder,
    classes,
    error
  } = props;
  const addClasses = classes ? classes : '';
  return (
    <div className={`form-group ${addClasses}`}>
      { label && <label htmlFor="" className="form-label">{ label }</label>}
      <textarea
        className="form-control"
        title={title}
        onChange={onChange}
        name={name}
        cols={cols}
        rows={rows}
        value={value}
        disabled={disabled}
        placeholder={placeholder}
      >
        {value}
      </textarea>
      { error && error.length > 0 && <div className="form-error">{ error }</div> }
    </div>
  );
};

export default TextareaFieldGroup;
