export default function FileFieldGroup(props:any) {
    const {
      label,
      title,
      onChange,
      name,
      value,
      disabled,
      classes,
      style,
      multiple,
      path,
      error
    } = props;
    const addClasses = classes ? classes : '';

    return (
      <div className={`form-group ${addClasses}`} style={style}>
        { label && <label htmlFor="" className="form-label">{ label }</label>}
        <input
          className="form-control"
          title={title}
          type="file"
          onChange={onChange}
          name={name}
          defaultValue={value.length > 0 ? value : ""}
          disabled={disabled}
          multiple={multiple && multiple}
        />
        { error && error.length > 0 && <div className="form-error">{ error }</div> }
        { path && value && path.length > 0 && value.length > 0  && <img src={path + value} alt="" /> }
      </div>
    );
  }