<?php
  
namespace App\Http\Controllers;
  
use App\Polygon;
use Illuminate\Http\Request;
use DB;
  
class PolygonController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $polygons = Polygon::latest()->simplePaginate(10);
  
        return view('polygons.index',compact('polygons'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }
   
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('polygons.create');
    }
  
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name_polygon' => 'required',
            'coordinates' => 'required',
            'warna' => 'required',
            'keterangan' => 'required',
        ]);
  
        Polygon::create($request->all());
   
        return redirect()->route('polygons.index')
        ->with('success','Polygon created successfully.');
    }
   
    /**
     * Display the specified resource.
     *
     * @param  \App\Polygon  $polygon
     * @return \Illuminate\Http\Response
     */
    public function show(Polygon $polygon)
    {
        return view('polygons.show',compact('polygon'));
    }
   
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Polygon  $polygon
     * @return \Illuminate\Http\Response
     */
    public function edit(Polygon $polygon)
    {
        return view('polygons.edit',compact('polygon'));
    }
  
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Polygon  $polygon
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Polygon $polygon)
    {
        $request->validate([
            'name_polygon' => 'required',
            'coordinates' => 'required',
            'warna' => 'required',
            'keterangan' => 'required',
        ]);
  
        $polygon->update($request->all());
  
        return view('polygons/polygon');
    }
  
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Polygon  $polygon
     * @return \Illuminate\Http\Response
     */
    public function destroy(Polygon $polygon)
    {
        $polygon->delete();
  
        return redirect()->route('polygons.index')
                        ->with('success','POlygon deleted successfully');
    }
    
    public function showPolygons(){
        $polygons =DB::select('select * from polygons');
        return view('polygons/polygon',['polygons'=>$polygons]);
    }
}