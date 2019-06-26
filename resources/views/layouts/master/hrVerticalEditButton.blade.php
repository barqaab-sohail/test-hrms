<div class="btn-group-vertical" role="group" aria-label="vertical button group">

         <style>
            
        .btn-info:active { background-color: red; }
            
        </style>

          <br>

           @if (request()->is('createEmployee'))
             <a type="submit" role="button" href="{{route('createEmployee')}}" class="btn btn-info @if(request()->is('createUser')) active @endif" >Personal Information</a>

            @else

            <a type="submit" role="button" href="{{route('employee.edit',session('employee_id'))}}" class="btn btn-info @if(request()->is('*employee/edit*')) active @endif" >Personal Information</a>
            <a type="submit" role="button"  href="{{route('picture.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*icture*')) active @endif">Picture</a>
            <a type="submit" role="button"  href="{{route('user.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*user/edit*')) active @endif">User</a>
            <a type="submit" role="button"  href="{{route('posting', session('employee_id'))}}" class="btn btn-info @if(request()->is('*posting*')) active @endif">Posting</a>
            <a type="submit" role="button" href="{{route('salary.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*salary/edit*')) active @endif">Salary</a>
            <a type="submit" role="button"  href="{{route('education', session('employee_id'))}}" class="btn btn-info @if(request()->is('*education*')) active @endif">Education</a>
            <a type="submit" role="button"  href="{{route('experience', session('employee_id'))}}" class="btn btn-info @if(request()->is('*experience*')) active @endif">Experience</a>
            <a type="submit" role="button"  href="{{route('training', session('employee_id'))}}" class="btn btn-info @if(request()->is('*training*')) active @endif">Training</a>
            <a type="submit" role="button"  href="{{route('publication', session('employee_id'))}}" class="btn btn-info @if(request()->is('*publication*')) active @endif">Publication</a>
            <a type="submit" role="button"  href="{{route('membership', session('employee_id'))}}" class="btn btn-info @if(request()->is('*membership*')) active @endif">Membership</a>
            <a type="submit" role="button"  href="{{route('document', session('employee_id'))}}" class="btn btn-info @if(request()->is('*document*')) active @endif">Document</a>
            <a type="submit" role="button"  href="{{route('bank', session('employee_id'))}}" class="btn btn-info @if(request()->is('*bank*')) active @endif">Bank</a>
            <a type="submit" role="button"  href="{{route('language', session('employee_id'))}}" class="btn btn-info @if(request()->is('*language*')) active @endif">Language</a>
            <a type="submit" role="button"  href="{{route('emergency', session('employee_id'))}}" class="btn btn-info @if(request()->is('*emergency*')) active @endif">Emergency Contact</a>
            <a type="submit" role="button" href="{{route('contact.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*contact/edit*')) active @endif">Contact Detail</a>
            <a type="submit" role="button"  href="{{route('other.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*other/edit*')) active @endif">Other Information</a>
            <a type="submit" role="button"  href="{{route('dependent', session('employee_id'))}}" class="btn btn-info @if(request()->is('*dependent*')) active @endif">Dependent</a>
            <a type="submit" role="button"  href="{{route('agreement.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*agreement/edit*')) active @endif">Agreement Detail</a>
            
                              
           <a type="submit" role="button"   href="#" class="btn btn-info">Exit Interview</a>


             @endif
             
</div>