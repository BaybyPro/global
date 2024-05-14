<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;

    protected $fillable = [
        'fistLastname',
        'secondLastname',
        'fistName',
        'anotherNames',
        'country',
        'typeId',
        'idNumber',
        'email',
        'dateIncome',
        'area',
        'status',
    ];

    protected $table = 'employees';
}
