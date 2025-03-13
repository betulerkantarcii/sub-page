<div class="row form-inline" style="padding-bottom: 10px;" v-cloak>
    <div :class="{'col-xl-10 col-md-11 text-right': !isFormLocalized, 'col text-center': isFormLocalized, 'hidden': onSmallScreen }">
        <small>{{ trans('brackets/admin-ui::admin.forms.currently_editing_translation') }}<span v-if="!isFormLocalized && otherLocales.length > 1"> {{ trans('brackets/admin-ui::admin.forms.more_can_be_managed') }}</span><span v-if="!isFormLocalized"> | <a href="#" @click.prevent="showLocalization">{{ trans('brackets/admin-ui::admin.forms.manage_translations') }}</a></span></small>
        <i class="localization-error" v-if="!isFormLocalized && showLocalizedValidationError"></i>
    </div>

    <div class="col text-center" :class="{'language-mobile': onSmallScreen, 'has-error': !isFormLocalized && showLocalizedValidationError}" v-if="isFormLocalized || onSmallScreen" v-cloak>
        <small>{{ trans('brackets/admin-ui::admin.forms.choose_translation_to_edit') }}
            <select class="form-control" v-model="currentLocale">
                <option :value="defaultLocale" v-if="onSmallScreen">@{{defaultLocale.toUpperCase()}}</option>
                <option v-for="locale in otherLocales" :value="locale">@{{locale.toUpperCase()}}</option>
            </select>
            <i class="localization-error" v-if="isFormLocalized && showLocalizedValidationError"></i>
            <span>|</span>
            <a href="#" @click.prevent="hideLocalization">{{ trans('brackets/admin-ui::admin.forms.hide') }}</a>
        </small>
    </div>
</div>

<div class="row">
    @foreach($locales as $locale)
        <div class="col-md" v-show="shouldShowLangGroup('{{ $locale }}')" v-cloak>
            <div class="form-group row align-items-center" :class="{'has-danger': errors.has('link_{{ $locale }}'), 'has-success': fields.link_{{ $locale }} && fields.link_{{ $locale }}.valid }">
                <label for="link_{{ $locale }}" class="col-md-2 col-form-label text-md-right">{{ trans('admin.slider.columns.link') }}</label>
                <div class="col-md-9" :class="{'col-xl-8': !isFormLocalized }">
                    <input type="text" v-model="form.link.{{ $locale }}" v-validate="''" @input="validate($event)" class="form-control" :class="{'form-control-danger': errors.has('link_{{ $locale }}'), 'form-control-success': fields.link_{{ $locale }} && fields.link_{{ $locale }}.valid }" id="link_{{ $locale }}" name="link_{{ $locale }}" placeholder="{{ trans('admin.slider.columns.link') }}">
                    <div v-if="errors.has('link_{{ $locale }}')" class="form-control-feedback form-text" v-cloak>{{'{{'}} errors.first('link_{{ $locale }}') }}</div>
                </div>
            </div>
        </div>
    @endforeach
</div>

<div class="form-check row" :class="{'has-danger': errors.has('enabled'), 'has-success': fields.enabled && fields.enabled.valid }">
    <div class="ml-md-auto" :class="isFormLocalized ? 'col-md-8' : 'col-md-10'">
        <input class="form-check-input" id="enabled" type="checkbox" v-model="form.enabled" v-validate="''" data-vv-name="enabled"  name="enabled_fake_element">
        <label class="form-check-label" for="enabled">
            {{ trans('admin.slider.columns.enabled') }}
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
                            'mediaCollection' => app(App\Models\Slider::class)->getMediaCollection('coverEN'),
                            'label' => trans('Cover photo (EN)')
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
                               'mediaCollection' => $slider->getMediaCollection('coverEN'),
                               'media' => $slider->getThumbs200ForCollection('coverEN'),
                               'label' => trans('Cover photo (EN)')
                           ])
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 @endif


 @if ($mode === 'create')
<div class="row">
    <div class="col-md">
        <div class="form-group row align-items-center">
            <div class="col-md-2"></div>
            <div class="col-md">
                <div class="row">
                    <div class="col-md-9">
                    @include('brackets/admin-ui::admin.includes.media-uploader', [
                            'mediaCollection' => app(App\Models\Slider::class)->getMediaCollection('coverTR'),
                            'label' => trans('Cover photo (TR)')
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
                               'mediaCollection' => $slider->getMediaCollection('coverTR'),
                               'media' => $slider->getThumbs200ForCollection('coverTR'),
                               'label' => trans('Cover photo (TR)')
                           ])
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 @endif
