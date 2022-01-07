export default function SelectFieldGroup(props:any) {
  const {
    selectedItemValue,
    label,
    name,
    items,
    onChange,
    disabled,
    classes,
    error
  } = props;

  let counter = 1;
  const addClasses = classes ? classes : '';
  const selectOptionsContent = items
    ? items.map((item:any) => (
        <option
          key={counter++}
          value={item.value}
          // selected={item.name === selectedItemName ? "selected" : null}
        >
          {item.name}
        </option>
      ))
    : null;
  return (
        <div className={`form-group ${addClasses}`}>
          { label && <label htmlFor="" className="form-label">{ label }</label>}
          <select
            name={name}
            id=""
            className="form-control"
            onChange={onChange}
            disabled={disabled ? true : undefined}
            defaultValue={selectedItemValue}
            value={selectedItemValue}
          >
            {/* {defaultName ? <option>{defaultName}</option> : null} */}
            {selectOptionsContent}
          </select>
          { error && error.length > 0 && <div className="form-error">{ error }</div> }
        </div>
  );
}