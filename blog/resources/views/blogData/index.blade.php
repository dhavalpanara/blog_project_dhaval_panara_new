@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>CRUD</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="{{ route('blogData.create') }}"> Create New Post</a>
            </div>
        </div>
    </div>
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
    <table class="table table-bordered">
        <tr>
            <th>No</th>
            <th>Name</th>
            <th>Body</th>
            <th width="280px">Operation</th>
        </tr>
		
    @foreach ($blogData as $data)
    <tr>
        <td>{{ ++$i }}</td>
        <td>{{ $data->name}}</td>
        <td>{{ $data->body}}</td>
        <td>
            <a class="btn btn-info" href="{{ route('blogData.show',$data->id) }}">Show</a>
			@if($data->created_by == Auth::user()->id)
            <a class="btn btn-primary" href="{{ route('blogData.edit',$data->id) }}">Edit</a>
            {!! Form::open(['method' => 'DELETE','route' => ['blogData.destroy', $data->id],'style'=>'display:inline']) !!}
            {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
            {!! Form::close() !!}
			@endif		
        </td>
    </tr>
    @endforeach
    </table>
    {!! $blogData->render() !!}
@endsection