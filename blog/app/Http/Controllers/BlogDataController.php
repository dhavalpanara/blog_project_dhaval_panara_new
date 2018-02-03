<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\BlogData;
use Illuminate\Support\Facades\Auth;

class BlogDataController extends Controller
{
     public function index()
    {	
        $blogData = BlogData::latest()->paginate(10);
		
	    return view('blogData.index',compact('blogData'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('blogData.create');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate([
            'name' => 'required',
            'body' => 'required',
        ]);
		
		$requestedData = $request->all();
		$requestedData['created_by'] = Auth::user()->id;
			
        BlogData::create($requestedData);
        return redirect()->route('blogData.index')
                        ->with('success','Post created successfully');
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(BlogData $blogData, $id)
    {	
		
		$postData = BlogData::whereId($id)->first();
			
		$data = array(
		'blogData' => $postData,
		'id' => $id,
		);

		return view('blogData.show',$data);
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(BlogData $blogData,$id)
    {	
		$postData = BlogData::whereId($id)->first();
		
		$data = array(
		'blogData' => $postData,
		'id' => $id,
		);
        return view('blogData.edit',$data);
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,BlogData $blogData, $id)
    {
        request()->validate([
            'name' => 'required',
            'body' => 'required',
        ]);
		
		$requesData = $request->all();
		
		$blogData = BlogData::find($id);
        $blogData->name = $request->get('name');
        $blogData->body = $request->get('body');
        $blogData->created_by = Auth::user()->id;
        $blogData->save();
		
        return redirect()->route('blogData.index')
                        ->with('success','Post updated successfully');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        BlogData::destroy($id);
        return redirect()->route('blogData.index')
                        ->with('success','Post deleted successfully');
    }
}
