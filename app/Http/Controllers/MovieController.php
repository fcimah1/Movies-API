<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class MovieController extends Controller
{
    public function all(){
        return response()->json(Movie::all());
    }
    public function getMovie($id){
        return response()->json(Movie::findOrFail($id));
    }
    public function addMovie(Request $request)
    {
        dd($request);

        $data = $request->validate([
            'name'=> 'required',
            'description'=> 'required',
            'director'=> 'required',
            'duration'=> 'required',
            'production_date'=> 'required',
            'rate'=> 'required',
            'image'=> 'required',
            'genre_id'=> 'required'
        ]);
        dd($data);
        // Movie::create([
        //     'name'=> $data['name'],
        //     'description'=> $data['description'],
        //     'production_date'=> $data['production_date'],
        //     'director'=> $data['director'],
        //     'duartion'=> $data['duartion'],
        //     'image'=> $data['image'],
        //     'rate'=> $data['rate'],
        //     'genre_id'=> $data['genre_id']
        // ]);
        // return response()->json([
        //     'message' => "Movie created successfully",
        // ]);
    }
    public function delete($id)
    {
        $movie = Movie::findOrFail($id);
        $movie->delete();
        return response()->json([
            'message'=> "Movie deleted successfully"
    ]);
    }
    // public function update(Request $request, $id)
    // {
        
    //     $movie = Movie::findOrFail($id);
    //     $movie->name = $request->name;
    //     $movie->description = $request->description;
    //     $movie->production_date = $request->production_date;
    //     $movie->director = $request->director;
    //     $movie->duartion = $request->duartion;
    //     $movie->image = $request->image;
    //     $movie->rate = $request->rate;
    //     $movie->genre_id = $request->genre_id;
    //     $movie->save();
    //     return response()->json([
    //         'message'=> "Movie updated successfully"
    // ]);
    // }
    // public function getMoviesByGenre($id){
    //     return response()->json(Movie::where('genre_id', $id)->get());
    // }
}
