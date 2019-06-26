<?php

namespace App\Imports;

use App\contact_number;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class PhoneImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new contact_number([
            
         'name'  => $row['name'],
         'designation'   => $row['designation'],
         'mobile_1'   => $row['mobile_1'],
         'mobile_2'    => $row['mobile_2'],
         'mobile_3'  => $row['mobile_3'],
         'office'   => $row['office'],
         'fax'   => $row['fax'],
         'landline'   => $row['landline'],
         'email'   => $row['email'],
         'address'   => $row['address'],
         'remarks'   => $row['remarks'],
        ]);
    }
}
