<div class="btn-group-vertical" role="group" aria-label="vertical button group">

         <style>
            
        .btn-info:active { background-color: red; }
            
        </style>

          <br>

           @if (request()->is('*createProject'))
             <a type="submit" role="button" href="{{route('createProject')}}" class="btn btn-info @if(request()->is('*createProject')) active @endif" >Project Information</a>

            @else
                 

           <a type="submit" role="button"  href="#" class="btn btn-info">Position & Reporting</a>
                     
           <a type="submit" role="button"   href="#" class="btn btn-info">Exit Interview</a>


             @endif
             
</div>