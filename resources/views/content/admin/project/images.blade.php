<!-- Menghubungkan dengan view template master -->
@extends('layout/admin/master')

<!-- isi bagian judul halaman -->
<!-- cara penulisan isi section yang pendek -->
@section('title', 'Add Project')


<!-- isi bagian konten -->
<!-- cara penulisan isi section yang panjang -->
@section('content')

     <div class="content-wrapper">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal-4" data-whatever="@getbootstrap"  style="margin-bottom:20px">Add Image</button>
          <div class="row">
            <div class="col-12">
              @if ($message = Session::get('success'))
             <div class="alert alert-fill-success" role="alert">
              <i class="ti-info-alt"></i>
              {{ $message }}
            </div>
              @endif
       
              @if ($message = Session::get('failed'))
              <div class="alert alert-fill-danger" role="alert">
                <i class="ti-info-alt"></i>
                {{ $message }}
              </div>
              @endif
              <div class="card">
                <div class="card-body">
                  <div class="row">
                    <div class="col-12">
                       <h3 style="margin-bottom: 30px"> {{$project->title}}<h3>

                      <div class="row portfolio-grid">
                        @foreach($list as $p)
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-12">
                          <figure class="effect-text-in">
                            <img src="{{$p->full_path}}" alt="image" style="height:400px" />
                            <figcaption>
                              <h4>{{$p->image_name}}</h4>
                              <p>
                            <a href="/admin/project/delete_image/{{ $p->id_image }}"  class="btn btn-danger">Delete</a>
                                
                              </p>
                            </figcaption>
                          </figure>
                        </div>
                        @endforeach
                      
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
  <script src="/assets/admin/vendors/js/vendor.bundle.base.js"></script>
  <script src="/assets/admin/vendors/js/vendor.bundle.addons.js"></script>


<div class="modal fade" id="exampleModal-4" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="ModalLabel">Add Image </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="/admin/project/action_add_images" method="post" enctype="multipart/form-data">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Image Name:</label>
            <input type="text" class="form-control" id="recipient-name" name="form[image_name]">
            <input type="hidden" class="form-control" value="{{$project->id_project}}" name="form[id_project]">
            <input type = "hidden" name = "_token" value = "<?php echo csrf_token() ?>">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Image:</label>
            <input type="file" class="form-control" name="file"/>
          </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-success">Add Image</button>
        <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
      </div>
        </form>

    </div>
  </div>
</div>
@endsection