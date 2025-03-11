import AppForm from '../app-components/Form/AppForm';

Vue.component('videolink-form', {
    mixins: [AppForm],
    data: function() {
        return {
            form: {
                link:  this.getLocalizedFormDefaults() ,
                
            }
        }
    }

});