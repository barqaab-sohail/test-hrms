<div class="btn-group-vertical" role="group" aria-label="vertical button group">

         <style>
            
        .btn-info:active { background-color: red; }
            
        </style>

          <br>

           @if (request()->is('*/edit/*') or request()->is('createPicture') )
            <a type="submit" role="button" href="{{route('employee.edit',session('employee_id'))}}" class="btn btn-info @if(request()->is('employee/edit*')) active @endif" >Personal Information</a>

            <a type="submit" role="button"  href="{{route('picture.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*icture*')) active @endif">Picture</a>


            <a type="submit" role="button"  href="{{route('education.edit', session('user_id'))}}" class="btn btn-info @if(request()->is('education/edit*')) active @endif">Education</a>
            
            
            <a type="submit" role="button" href="{{route('salary.edit', session('user_id'))}}" class="btn btn-info @if(request()->is('salary/edit*')) active @endif">Salary</a>
           

            <a type="submit" role="button"  href="#" class="btn btn-info">Position & Reporting</a>
            <a type="submit" role="button"  href="#" class="btn btn-info ">Contact Detail</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Emergency Contact</a>
            <a type="submit" role="button"  href="#"  class="btn btn-info">Experience</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Training</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Dependent</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Documents</a>
            <a type="submit" role="button"   href="#" class="btn btn-info">Exit Interview</a>
             
             @else
              <a type="submit" role="button" href="{{route('createEmployee')}}" class="btn btn-info @if(request()->is('createUser')) active @endif" >Personal Information</a>
             @endif
             
</div>