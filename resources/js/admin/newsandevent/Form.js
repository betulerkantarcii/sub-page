import AppForm from '../app-components/Form/AppForm';

Vue.component('newsandevent-form', {
    mixins: [AppForm],
    data: function() {
        return {
            form: {
                heading:  this.getLocalizedFormDefaults() ,
                info:  this.getLocalizedFormDefaults() ,
                link:  this.getLocalizedFormDefaults() ,
                published:  '' ,
                enabled:  false ,
                
            },
            mediaCollections: ['cover'],
        }
    }

});