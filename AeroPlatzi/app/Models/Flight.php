<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Location;

class Flight extends Model
{
    use HasFactory;
	
	public function origin() {
		return $this->belongsTo(Location::class, 'OriginId');
	}
	
	public function destination() {
		return $this->belongsTo(Location::class, 'DestinationId');
	}
}
