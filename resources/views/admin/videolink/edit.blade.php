@extends('brackets/admin-ui::admin.layout.default')

@section('title', trans('admin.videolink.actions.edit', ['name' => $videolink->id]))

@section('body')

    <div class="container-xl">
        <div class="card">

            <videolink-form
                :action="'{{ $videolink->resource_url }}'"
                :data="{{ $videolink->toJsonAllLocales() }}"
                :locales="{{ json_encode($locales) }}"
                :send-empty-locales="false"
                v-cloak
                inline-template>
            
                <form class="form-horizontal form-edit" method="post" @submit.prevent="onSubmit" :action="action" novalidate>


                    <div class="card-header">
                        <i class="fa fa-pencil"></i> {{ trans('admin.videolink.actions.edit', ['name' => $videolink->id]) }}
                    </div>

                    <div class="card-body">
                        @include('admin.videolink.components.form-elements')
                    </div>
                    
                    
                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary" :disabled="submiting">
                            <i class="fa" :class="submiting ? 'fa-spinner' : 'fa-download'"></i>
                            {{ trans('brackets/admin-ui::admin.btn.save') }}
                        </button>
                    </div>
                    
                </form>

        </videolink-form>

        </div>
    
</div>

@endsection