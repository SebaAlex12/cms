export interface IvalidParams {
   name: string,
   required: [boolean, string] | undefined,
   minLength: [number, string] | undefined
};
export interface IvalidatorErrors {
    message: string
}

const Validator = (schema:any,data:any) => {
    let errors:any= [];
    schema.forEach((val:IvalidParams) => {
        let result = isValid(data[val.name], val);
        if (result.logic === false) errors = { ...errors, [val.name]: result.message };
      });
    return errors;
};

const isValid = (value:string, params:IvalidParams) => {
    let logic = true;
    let message = "";

    if (params.minLength) {
        if (value.length < params.minLength[0]) {
          logic = false;
          message = params.minLength[1];
        }
      }
    
      if (params.required) {
        if (value.length === 0) {
          logic = false;
          message = params.required[1];
        }
      }
    
      return {logic, message};
}

export default Validator;