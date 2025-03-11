<div class="form-group row align-items-center" :class="{'has-danger': errors.has('heading'), 'has-success': fields.heading && fields.heading.valid }">
    <label for="heading" class="col-form-label text-md-right" :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.newsandevent.columns.heading') }}</label>
        <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <input type="text" v-model="form.heading" v-validate="'required'" @input="validate($event)" class="form-control" :class="{'form-control-danger': errors.has('heading'), 'form-control-success': fields.heading && fields.heading.valid}" id="heading" name="heading" placeholder="{{ trans('admin.newsandevent.columns.heading') }}">
        <div v-if="errors.has('heading')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('heading') }}</div>
    </div>
</div>

<div class="form-group row align-items-center" :class="{'has-danger': errors.has('link'), 'has-success': fields.link && fields.link.valid }">
    <label for="link" class="col-form-label text-md-right" :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.newsandevent.columns.link') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <div>
            <textarea class="form-control" v-model="form.link" v-validate="''" id="link" name="link"></textarea>
        </div>
        <div v-if="errors.has('link')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('link') }}</div>
    </div>
</div>


<div class="form-group row align-items-center" :class="{'has-danger': errors.has('info'), 'has-success': fields.info && fields.info.valid }">
    <label for="info" class="col-form-label text-md-right" :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.newsandevent.columns.info') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <div>
            <textarea class="form-control" v-model="form.info" v-validate="''" id="info" name="info"></textarea>
        </div>
        <div v-if="errors.has('info')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('info') }}</div>
    </div>
</div>

<div class="form-group row align-items-center" :class="{'has-danger': errors.has('published'), 'has-success': fields.published && fields.published.valid }">
    <label for="published" class="col-form-label text-md-right" :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.newsandevent.columns.published') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-sm-8'">
        <div class="input-group input-group--custom">
            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
            <datetime v-model="form.published" :config="datePickerConfig" v-validate="'date_format:yyyy-MM-dd HH:mm:ss'" class="flatpickr" :class="{'form-control-danger': errors.has('published'), 'form-control-success': fields.published && fields.published.valid}" id="published" name="published" placeholder="{{ trans('brackets/admin-ui::admin.forms.select_a_date') }}"></datetime>
        </div>
        <div v-if="errors.has('published')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('published') }}</div>
    </div>
</div>

<div class="form-check row" :class="{'has-danger': errors.has('enabled'), 'has-success': fields.enabled && fields.enabled.valid }">
    <div class="ml-md-auto" :class="isFormLocalized ? 'col-md-8' : 'col-md-10'">
        <input class="form-check-input" id="enabled" type="checkbox" v-model="form.enabled" v-validate="''" data-vv-name="enabled"  name="enabled_fake_element">
        <label class="form-check-label" for="enabled">
            {{ trans('admin.newsandevent.columns.enabled') }}
        </label>
        <input type="hidden" name="enabled" :value="form.enabled">
        <div v-if="errors.has('enabled')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('enabled') }}</div>
    </div>
</div>


@if ($mode === 'create')
<div class="row">
    <div class="col-md">
        <div class="form-group row align-items-center">
            <div class="col-md-2"></div>
            <div class="col-md">
                <div class="row">
                    <div class="col-md-9">
                    @include('brackets/admin-ui::admin.includes.media-uploader', [
                            'mediaCollection' => app(App\Models\Newsandevent::class)->getMediaCollection('cover'),
                            'label' => trans('Cover photo')
                    ])
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@else
<div class="row">
        <div class="col-md">
            <div class="form-group row align-items-center">
                <div class="col-md-2"></div>
                <div class="col-md">
                    <div class="row">
                        <div class="col-md-9">
                            @include('brackets/admin-ui::admin.includes.media-uploader', [
                               'mediaCollection' => $newsandevent->getMediaCollection('cover'),
                               'media' => $newsandevent->getThumbs200ForCollection('cover'),
                               'label' => trans('Cover photo')
                           ])
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 @endif