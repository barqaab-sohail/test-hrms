<div class="btn-group-vertical" role="group" aria-label="vertical button group">

         <style>
            
        .btn-info:active { background-color: red; }
            
        </style>

          <br>

           @if (request()->is('*/edit/*') || request()->is('education')|| request()->is('salary'))
            <a type="submit" role="button" href="{{route('employee.create')}}" class="btn btn-info @if(request()->is('employee.create')|| request()->is('employee/edit*')) active @endif" >Personal Information</a>
            <a type="submit" role="button"  href="{{route('education')}}" class="btn btn-info @if(request()->is('education/*')) active @endif">Education</a>
            <a type="submit" role="button" href="#" class="btn btn-info @if(request()->is('salary')) active @endif">Salary</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Position & Reporting</a>
            <a type="submit" role="button"  href="#" class="btn btn-info ">Contact Detail</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Emergency Contact</a>
            <a type="submit" role="button"  href="#"  class="btn btn-info">Experience</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Training</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Dependent</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Documents</a>
            <a type="submit" role="button"   href="#" class="btn btn-info">Exit Interview</a>
             
             @else
              <a type="submit" role="button" href="{{route('employee.create')}}" class="btn btn-info @if(request()->is('createEmployee')) active @endif" >Personal Information</a>
             @endif
             
</div>