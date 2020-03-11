<div class="btn-group-vertical" role="group" aria-label="vertical button group" style="width: 100%;">
         
          <br>
          
          

            <a type="submit" role="button" href="{{route('addSubmission.edit',session('submission_id'))}}" class="btn btn-info @if(request()->is('*addSubmission*')) active @endif" >Submission Detail</a>
            <a type="submit" role="button"  href="{{route('participant.create')}}" class="btn btn-info @if(request()->is('*submission/participant*')) active @endif">Participant</a>
            <a type="submit" role="button"  href="" class="btn btn-info @if(request()->is('*attachment*')) active @endif">Attachments</a>
           
            
            
            <br>
            
           
         <style>
            
        .btn-info:active { background-color: red; }
            
        </style>

          <br>



             
</div>