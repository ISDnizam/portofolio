<!-- Menghubungkan dengan view template master -->
@extends('layout/admin/master')

<!-- isi bagian judul halaman -->
<!-- cara penulisan isi section yang pendek -->
@section('title', 'Edit Blog')


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
                  <form class="form-sample" action="/admin/blog/action_edit" method="post">
                    <input type = "hidden" name = "_token" value = "<?php echo csrf_token() ?>">
                    <input type = "hidden" name = "form[id_blog]" value = "{{$edit->id_blog}}">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Title</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="form[title]" value="{{$edit->title}}"/>
                          </div>
                        </div>

                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Description</label>
                          <div class="col-sm-9">
                            <textarea class="form-control" name="form[description]">{{$edit->description}}</textarea>
                          </div>
                        </div>
                      </div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Submit</button>
                    <a class="btn btn-light" href="/admin/blog">Cancel</a>
                  </form>
                </div>
              </div>
            </div>
          </div>
      </div>

  <script src="/assets/admin/vendors/js/vendor.bundle.base.js"></script>
  <script src="/assets/admin/vendors/js/vendor.bundle.addons.js"></script>
@endsection