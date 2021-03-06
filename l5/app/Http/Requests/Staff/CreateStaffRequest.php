<?php

namespace App\Http\Requests\Staff;

use App\Http\Requests\Request;

class CreateStaffRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required',
            'intro' => 'required',
            'description' => 'required',
            'type_id' => 'required',
            'page_id' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Il campo nome è obbligatorio',
            'intro.required' => 'Il campo intro è obbligatorio',
            'description.required' => 'Il campo descrizione è obbligatorio',
            'description.type_id' => 'Il campo Tipo è obbligatorio',
            'description.page_id' => 'Il campo Pagina network è obbligatorio',
        ];
    }
}
