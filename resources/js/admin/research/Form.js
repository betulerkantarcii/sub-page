import AppForm from '../app-components/Form/AppForm';

Vue.component('research-form', {
    mixins: [AppForm],
    data: function() {
        return {
            form: {
                title:  '' ,
                description:  '' ,
                link:  '' ,
                
            },
            mediaCollections: ['cover']
        }
    }

});