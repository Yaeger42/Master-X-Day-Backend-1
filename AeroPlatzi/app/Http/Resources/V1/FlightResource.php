<?php

namespace App\Http\Resources\V1;

use Illuminate\Http\Resources\Json\JsonResource;

class FlightResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return parent::toArray($request);
		
		return [
			'id' => $this->id,
			'arrive' => $this->ArrivalTime,
			'departure' => $this->DepartureTime,
			'origin_city' => $this->origin->city,
			'origin_country' => $this->origin->country,
			'destination_city' => $this->destination->city,
			'destination_country' => $this->destination->country,
			'users' => $this->AmountOfPassengers,
		];
	}
}
