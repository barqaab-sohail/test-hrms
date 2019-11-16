          <!-- Modal -->
          <div class="modal fade" id="editTaskModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Edit Task</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                 
                     <form id="editTaskFrom" action="{{route('task.store')}}" method="post" class="form-horizontal form-prevent-multiple-submits form-prevent-multiple-submits" enctype="multipart/form-data">
                     @method('PATCH')
                            {{csrf_field()}}
                            <div class="form-body">
                              <div class="form-group row">
                                <div class="col-md-12">
                                  <label class="control-label text-right">Task Detail<span class="text_requried">*</span></label>
                                            
                                   <input type="text" id='edit_task_detail' name="task_detail" value="{{ old('task_detail') }}" class="form-control" placeholder="Enter Task Detail" required>
                                </div>
                              </div>

                              <div class="form-group row">
                                <div class="col-md-12 date_input">
                                  <label class="control-label text-right">Completion Date<span class="text_requried">*</span></label>
                                                
                                  <input type="text" id="edit_completion_date" name="completion_date" value="{{ old('completion_date') }}" class="form-control "  placeholder="Enter Task Completion Date" required readonly>
                                  
                                  <br>
                                  @can('edit record')<i class="fas fa-trash-alt text_requried"></i>@endcan
                                 
                                </div>
                              </div>

                               {{-- <div class="form-group row">
                                <div class="col-md-12">
                                  <label class="control-label text-right">Remarks</label>
                                            
                                   <input type="text" id='edit_remarks' name="remarks" value="{{ old('remarks') }}" class="form-control" placeholder="Enter Remarks">
                                </div>
                              </div> --}}

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
 