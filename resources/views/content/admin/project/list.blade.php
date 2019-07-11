<!-- Menghubungkan dengan view template master -->
@extends('layout/admin/master')

<!-- isi bagian judul halaman -->
<!-- cara penulisan isi section yang pendek -->
@section('title', 'Project')


<!-- isi bagian konten -->
<!-- cara penulisan isi section yang panjang -->
@section('content')

    <!-- partial -->
        <div class="content-wrapper">
          <a href="/admin/project/add" class="btn btn-primary pull-right" style="margin-bottom:20px">Add Project</a>
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">{{$title}}</h4>
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

                  <div class="table-responsive">
                    <table id="order-listing" class="table">
                      <thead>
                        <tr>
                          <th>Title</th>
                          <th>Description</th>
            							<th>Viewers</th>
            							<th>Created At</th>
            							<th>Opsi</th>
                        </tr>
                      </thead>
                      <tbody>
						            @foreach($list as $p)
                        <tr>
                          <td>{{ $p->title }}</td>
                          <td>{{ substr($p->description, 0, 50) }} </td>
                          <td>{{ $p->logs->count() }}</td>
            							<td>{{ $p->created_at }}</td>
            							<td>
                            <a href="/admin/project/images/{{ $p->id_project }}"  class="btn btn-primary">View Images</a>
            								<a href="/admin/project/edit/{{ $p->id_project }}"  class="btn btn-warning">Edit</a>
              							<a href="/admin/project/delete/{{ $p->id_project }}"  class="btn btn-danger">Delete</a>
            							</td>
                        </tr>
            						@endforeach
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->

  <script src="/assets/admin/vendors/js/vendor.bundle.base.js"></script>
  <script src="/assets/admin/vendors/js/vendor.bundle.addons.js"></script>

        <script type="text/javascript">
          
          (function($) {
            'use strict';
            $(function() {
              $('#order-listing').DataTable({
                "aLengthMenu": [
                  [5, 10, 15, -1],
                  [5, 10, 15, "All"]
                ],
                "iDisplayLength": 10,
                "language": {
                  search: ""
                }
              });
              $('#order-listing').each(function() {
                var datatable = $(this);
                // SEARCH - Add the placeholder for Search and Turn this into in-line form control
                var search_input = datatable.closest('.dataTables_wrapper').find('div[id$=_filter] input');
                search_input.attr('placeholder', 'Search');
                search_input.removeClass('form-control-sm');
                // LENGTH - Inline-Form control
                var length_sel = datatable.closest('.dataTables_wrapper').find('div[id$=_length] select');
                length_sel.removeClass('form-control-sm');
              });
            });
          })(jQuery);
        </script>

@endsection