@if(count($errors)>0)
		<ul class="list-group">
			@foreach($errors->all() as $abc)
			<div class="alert alert-danger">
					<a href="#" class="close" data-dismiss="alert">&times;</a>
					{{$abc}}
				</div>
			@endforeach

		</ul>
@endif

 @if (Session::has('message'))
        <div class="alert alert-success" align="left">
            <a href="#" class="close" data-dismiss="alert">&times;</a>
            <strong>!</strong> {{Session::get('message')}}
        </div>
 @endif