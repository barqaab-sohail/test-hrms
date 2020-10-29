<!-- Modal -->
<div class="modal fade" id="taskModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New Task</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       
           <form id="taskFrom" action="{{route('task.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits form-prevent-multiple-submits" enctype="multipart/form-data">
                  {{csrf_field()}}
                  <div class="form-body">
                    <div class="form-group row">
                      <div class="col-md-12">
                        <label class="control-label text-right">Task Detail<span class="text_requried">*</span></label>
                                  
                         <input type="text"  id='task_detail' name="task_detail" value="{{ old('task_detail') }}" class="form-control notReadonly" placeholder="Enter Task Detail" required>
                      </div>
                    </div>

                    <div class="form-group row">
                      <div class="col-md-12">
                        <label class="control-label text-right">Completion Date<span class="text_requried">*</span></label>
                                      
                        <input type="text" id="completion_date" name="completion_date" value="{{ old('completion_date') }}" class="form-control date_input"  placeholder="Enter Task Completion Date" required readonly>
                        
                        <br>
                        @can('hr_edit_record')<i class="fas fa-trash-alt text_requried"></i>@endcan
                       
                      </div>
                    </div>

                    <input type="number" name="employee_id" value="{{Auth::User()->employee->id}}"   class="form-control " hidden>
                                                                                   
                  </div>
                   <hr>
                  <div class="form-actions">
                      <div class="row">
                          <div class="col-md-6">
                              <div class="row">
                              


                                  <div class="col-md-offset-3 col-md-9">
                                      <button type="submit" class="btn btn-success btn-prevent-multiple-submits"><i class="spinner fa fa-spinner fa-spin" ></i>Save</button>
                                      
                                  </div>
                               


                              </div>
                          </div>
                      </div>
                  </div>
              </form>

      </div>
      
    </div>
  </div>
</div>
<!--end Model-->


 