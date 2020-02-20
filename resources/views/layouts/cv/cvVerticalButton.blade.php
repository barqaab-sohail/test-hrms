<div class="btn-group-vertical" role="group" aria-label="vertical button group" style="width: 100%;">
         
          <br>
          
          

            <a type="submit" role="button" href="{{route('uploadCv.edit',session('cv_id'))}}" class="btn btn-info @if(request()->is('*uploadCv*')) active @endif" >CV Detail</a>
            <a type="submit" role="button"  href="{{route('cvDocument.create')}}" class="btn btn-info @if(request()->is('*cvDocument*')) active @endif">Attachments</a>
           
            
            
            <br>
            
           
         <style>
            
        .btn-info:active { background-color: red; }
            
        </style>

          <br>



             
</div>