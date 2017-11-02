   @foreach($mial_types as $mial_type)
        <div class="checkbox">
            <label>
                @if(in_array($mial_type->id))
                    {{ Form::checkbox('mial_type[]', $labourType->id, false) }}
                @endif
                {{ $labourType->mial_type_name }}
            </label>
        </div>
    @endforeach
