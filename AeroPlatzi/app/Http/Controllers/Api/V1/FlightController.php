<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Flight;

use App\Http\Resources\V1\FlightResource;

class FlightController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json([
			'count' => Flight::count(),
			'message' => 'Success'
		],200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
		$target = Flight::create([
			'AmountOfPassengers' => $request->passagers,
			'ArrivalTime' => $request->arrive,
			'DepartureTime' => $request->departure,
			'DestinationId' => $request->destination,
			'OriginId' => $request->origin,
			'BoardingGateId' => $request->gate,
			'flightStatusId' => $request->status
		]);
		
		if(!empty($target)) {
			return response()->json([
				'message' => 'Success'
			],200);
		}
		
		return response()->json([
			'message' => 'Bad request'
		],400);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Flight  $flight
     * @return \Illuminate\Http\Response
     */
    public function show(Flight $flight)
    {
        return new FlightResource($flight);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Flight  $flight
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Flight $flight)
    {
        $target = Flight::find($request->id);
		
		if(!empty($target)) {
			$updt = Flight::where('id', $request->id)->update([
				'AmountOfPassengers' => $request->passagers,
				'ArrivalTime' => $request->arrive,
				'DepartureTime' => $request->departure,
				'flightStatusId' => $request->status,
				'BoardingGateId' => $request->gate
			]);
			
			if(!empty($updt)) {
				return response()->json([
					'message' => 'Success'
				],200);
			}
		}
		
		return response()->json([
			'message' => 'Bad request'
		],400);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Flight  $flight
     * @return \Illuminate\Http\Response
     */
    public function destroy(Flight $flight)
    {
        $target = Flight::find($request->id);
		
		if(!empty($target)) {
			
			if($target->delete()) {
				return response()->json([
					'message' => 'Success'
				],200);
			}
		}
		
		return response()->json([
			'message' => 'Bad request'
		],400);
    }
}
