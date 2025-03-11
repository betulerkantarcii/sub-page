@extends('brackets/admin-ui::admin.layout.default')

@section('title', trans('admin.research.actions.edit', ['name' => $research->title]))

@section('body')

    <div class="container-xl">
        <div class="card">

            <research-form
                :action="'{{ $research->resource_url }}'"
                :data="{{ $research->toJsonAllLocales() }}"
                :locales="{{ json_encode($locales) }}"
                :send-empty-locales="false"
                v-cloak
                inline-template>
            
                <form class="form-horizontal form-edit" method="post" @submit.prevent="onSubmit" :action="action" novalidate>


                    <div class="card-header">
                        <i class="fa fa-pencil"></i> {{ trans('admin.research.actions.edit', ['name' => $research->title]) }}
                    </div>

                    <div class="card-body">
                        @include('admin.research.components.form-elements')
                    </div>
                    
                    
                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary" :disabled="submiting">
                            <i class="fa" :class="submiting ? 'fa-spinner' : 'fa-download'"></i>
                            {{ trans('brackets/admin-ui::admin.btn.save') }}
                        </button>
                    </div>
                    
                </form>

        </research-form>

        </div>
    
</div>

@endsection