<div class="btn-group-vertical" role="group" aria-label="vertical button group" style="width: 100%;">
         
          <br>
          
          

            <a type="submit" role="button" href="{{route('uploadCv.edit',session('cv_id'))}}" class="btn btn-info @if(request()->is('*uploadCv*')) active @endif" >CV Detail</a>
            <a type="submit" role="button"  href="{{route('user.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*user/edit*')) active @endif">Attachments</a>
           
            
            
            <br>
            
           
         <style>
            
        .btn-info:active { background-color: red; }
            
        </style>

          <br>



             
</div>