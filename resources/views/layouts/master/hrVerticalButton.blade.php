<div class="btn-group-vertical" role="group" aria-label="vertical button group">

         <style>
            
        .btn-info:active { background-color: red; }
            
        </style>

          <br>

           
            <a type="submit" role="button" href="{{route('createEmployeeInformation')}}" class="btn btn-info @if(request()->is('createEmployeeInformation')) active @endif" >Personal Information</a>
            @if (request()->is('id'))
            <a type="submit" role="button"  href="{{route('education')}}" class="btn btn-info @if(request()->is('education')) active @endif">Education</a>
            <a type="submit" role="button" href="#" class="btn btn-info">Salary</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Position & Reporting</a>
            <a type="submit" role="button"  href="#" class="btn btn-info ">Contact Detail</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Emergency Contact</a>
            <a type="submit" role="button"  href="#"  class="btn btn-info">Experience</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Training</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Dependent</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Documents</a>
             <a type="submit" role="button"   href="#" class="btn btn-info">Exit Interview</a>
             @endif
</div>