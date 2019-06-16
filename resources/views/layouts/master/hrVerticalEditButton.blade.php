<div class="btn-group-vertical" role="group" aria-label="vertical button group">

         <style>
            
        .btn-info:active { background-color: red; }
            
        </style>

          <br>

           @if (request()->is('createEmployee'))
             <a type="submit" role="button" href="{{route('createEmployee')}}" class="btn btn-info @if(request()->is('createUser')) active @endif" >Personal Information</a>
             @else



            <a type="submit" role="button" href="{{route('employee.edit',session('employee_id'))}}" class="btn btn-info @if(request()->is('employee/edit*')) active @endif" >Personal Information</a>
            <a type="submit" role="button"  href="{{route('picture.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*icture*')) active @endif">Picture</a>
            <a type="submit" role="button"  href="{{route('user.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('user/edit*')) active @endif">User</a>
             <a type="submit" role="button" href="{{route('salary.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('salary/edit*')) active @endif">Salary</a>
             <a type="submit" role="button"  href="{{route('education', session('employee_id'))}}" class="btn btn-info @if(request()->is('education*')) active @endif">Education</a>
             <a type="submit" role="button"  href="{{route('experience', session('employee_id'))}}" class="btn btn-info @if(request()->is('experience*')) active @endif">Experience</a>
              <a type="submit" role="button"  href="{{route('training', session('employee_id'))}}" class="btn btn-info @if(request()->is('training*')) active @endif">Training</a>

            

            <a type="submit" role="button"  href="{{route('other.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('other/edit*')) active @endif">Other Information</a>





            
           
           

            <a type="submit" role="button"  href="#" class="btn btn-info">Position & Reporting</a>
            <a type="submit" role="button"  href="#" class="btn btn-info ">Contact Detail</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Emergency Contact</a>
           
            <a type="submit" role="button"  href="#" class="btn btn-info">Dependent</a>
            <a type="submit" role="button"  href="#" class="btn btn-info">Documents</a>
            <a type="submit" role="button"   href="#" class="btn btn-info">Exit Interview</a>


             @endif
             
</div>