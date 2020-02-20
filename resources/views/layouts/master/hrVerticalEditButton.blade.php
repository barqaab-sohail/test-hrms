<div class="btn-group-vertical" role="group" aria-label="vertical button group">

         
          <br>
          
           @if (request()->is('createEmployee'))
             <a type="submit" role="button" href="{{route('createEmployee')}}" class="btn btn-info @if(request()->is('createUser')) active @endif" >Personal Information</a>

            @else

            <a type="submit" role="button" href="{{route('employee.edit',session('employee_id'))}}" class="btn btn-info @if(request()->is('*employee*')) active @endif" >Personal Information</a>
            <a type="submit" role="button"  href="{{route('user.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*user/edit*')) active @endif">User</a>
            <a type="submit" role="button"  href="{{route('picture.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*icture*')) active @endif">Picture</a>
            <a type="submit" role="button"  href="{{route('appointment.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*appointment*')) active @endif">Appointment  Detail</a>
            <a type="submit" role="button"  href="{{route('posting.create')}}" class="btn btn-info @if(request()->is('*posting*')) active @endif">Posting</a>
            <a type="submit" role="button"  href="{{route('education.create')}}" class="btn btn-info @if(request()->is('*education*')) active @endif">Education</a>
            <a type="submit" role="button"  href="{{route('training.create')}}" class="btn btn-info @if(request()->is('*training*')) active @endif">Training/Courses</a>
            <a type="submit" role="button"  href="{{route('publication.create')}}" class="btn btn-info @if(request()->is('*publication*')) active @endif">Publication</a>
            <a type="submit" role="button"  href="{{route('membership.create')}}" class="btn btn-info @if(request()->is('*membership*')) active @endif">Membership</a>
            <a type="submit" role="button"  href="{{route('language.create')}}" class="btn btn-info @if(request()->is('*language*')) active @endif">Language</a>
            <a type="submit" role="button"  href="{{route('experience.create')}}" class="btn btn-info @if(request()->is('*experience*')) active @endif">Experience</a>
            <a type="submit" role="button"  href="{{route('promotion.create')}}" class="btn btn-info @if(request()->is('*promotion*')) active @endif">Promotion</a>
            <a type="submit" role="button"  href="{{route('bank.create', session('employee_id'))}}" class="btn btn-info @if(request()->is('*bank*')) active @endif">Bank</a>
            <a type="submit" role="button" href="{{route('contact.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*contact/edit*')) active @endif">Contact Detail</a>
            <a type="submit" role="button"  href="{{route('emergency.create')}}" class="btn btn-info @if(request()->is('*emergency*')) active @endif">Emergency Contact</a>
            <a type="submit" role="button"  href="{{route('dependent.create')}}" class="btn btn-info @if(request()->is('*dependent*')) active @endif">Dependent</a>
            <a type="submit" role="button"  href="{{route('document.create')}}" class="btn btn-info @if(request()->is('*document*')) active @endif">Document</a>
            <a type="submit" role="button"  href="{{route('otherInformation.edit', session('employee_id'))}}" class="btn btn-info @if(request()->is('*otherInformation*')) active @endif">Other Information</a>
            @can('edit_hr_record')
            <a type="submit" role="button"  href="{{route('exit.create')}}" class="btn btn-info @if(request()->is('*exit*')) active @endif">Exit</a>
            @endcan
            
            <br>
            
             @endif
             
</div>