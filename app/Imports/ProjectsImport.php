<?php

namespace App\Imports;

use App\Project;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class ProjectsImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Project([
         'name'  => $row['name'],
         'type'   => $row['type'],
         'client'   => $row['client'],
         'commencement'    => $row['start_date'],
         'contractual_completion'  => $row['complete_date'],
         'status'   => $row['status'],
         'role'   => $row['role'],
         'share'   => $row['share'],
        ]);
    }
}
