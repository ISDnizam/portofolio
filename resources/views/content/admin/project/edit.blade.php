<!-- Menghubungkan dengan view template master -->
@extends('layout/admin/master')

<!-- isi bagian judul halaman -->
<!-- cara penulisan isi section yang pendek -->
@section('title', 'Edit Project')


<!-- isi bagian konten -->
<!-- cara penulisan isi section yang panjang -->
@section('content')

    <!-- partial -->    
        <div class="content-wrapper">
          <div class="row">
          <div class="col-12 grid-margin">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">{{ $title }}</h4>
                  <form class="form-sample" action="/admin/project/action_edit" method="post">
                    <input type = "hidden" name = "_token" value = "<?php echo csrf_token() ?>">
                    <input type = "hidden" name = "form[id_project]" value = "{{$edit->id_project}}">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Title</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="form[title]" value="{{$edit->title}}"/>
                          </div>
                        </div>

                         <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Client</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="form[client]" value="{{$edit->client}}"/>
                          </div>
                        </div>

                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Category</label>
                          <div class="col-sm-9">
                            <select name="form[category]" class="form-control" id="category">
                              <option value="development">Development</option>
                              <option value="design">Design</option>
                            </select>
                          </div>
                        </div>

                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">URL</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="form[url]" value="{{$edit->url}}"/>
                          </div>
                        </div>

                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Image</label>
                          <div class="col-sm-9">
                            <input type="file" class="form-control" name="file"/>
                          </div>
                        </div>


                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Description</label>
                          <div class="col-sm-9">
                            <textarea class="form-control" name="form[description]">{{$edit->description}}</textarea>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        @if ($edit->image !== '')
                            <img src="{{$edit->image}}" style="width: 100%; height: 500px"  >
                        @endif
                      </div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Submit</button>
                    <a class="btn btn-light" href="/admin/project">Cancel</a>
                  </form>
                </div>
              </div>
            </div>
          </div>
      </div>

  <script src="/assets/admin/vendors/js/vendor.bundle.base.js"></script>
  <script src="/assets/admin/vendors/js/vendor.bundle.addons.js"></script>
<script type="text/javascript">
  $('#category').val('{{$edit->category}}')
</script>
@endsection