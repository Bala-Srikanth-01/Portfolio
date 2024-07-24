import { LightningElement,api,track, wire } from 'lwc';
import createAccountImperative from "@salesforce/apex/createNewAccount.createAccountImperative";
export default class CreateAccountUsingWire extends LightningElement {
    @track accname;
    @track accdescription;
    @track error;
    @track data;

    handleChange(event){
        this.accname = event.target.value;
        this.accdescription = event.target.value;
    }
    handleClick(){
        console.log('handling click',this.accname);
        if(this.accname != null){
            alert('oopo');
            createAccountImperative({Name:this.accname,Description:this.accdescription})
            .then((result) => {
                console.log('the result',result);
              })
              .catch((error) => {
                this.error = error;
              });
        }
    }
    
}