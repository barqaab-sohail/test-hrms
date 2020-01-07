<div class="btn-group-vertical" role="group" aria-label="vertical button group">

         <style>
            
        .btn-info:active { background-color: red; }
            
        </style>

          <br>

              <a type="submit" role="button" href="{{route('employee.create')}}" class="btn btn-info @if(request()->is('createEmployee')) active @endif" >Personal Information</a>

             
</div>