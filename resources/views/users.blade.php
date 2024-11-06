@extends('auth.layout')
@section('title', 'Dashboard')
@push('css')
@endpush
@section('content')
    <div class="container-xxl flex-grow-1 container-p-y">
        <div name="content">
            <div class="container-xxl flex-grow-1 container-p-y">
                <div name="content">
                    @include('auth.alert_component')
                    <div class="card">
                        <div class="card-body" style="padding-bottom: 15px !important">
                            <div class="row ">
                                <div class="col-6">
                                    <h4 class="fw-bold">User List</h4>
                                </div>
                                <div class="col-6 text-end">
                                    <a href="#" class="pointer publish-post" data-bs-target="#basicModal" data-backdrop="static"
                                        data-keyboard="false" data-bs-toggle="modal">Add New
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <table class="table table-bordered data-table">
                                <thead>
                                    <tr>
                                        <th>Sl</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th width="100px">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
    <div class="content-backdrop fade"></div>
@endsection
@push('js')
    <script type="text/javascript">
        $(function() {

            var table = $('.data-table').DataTable({
                processing: true,
                serverSide: true,
                ajax: "{{ route('users.index') }}",
                columns: [{
                        data: 'id',
                        name: 'id'
                    },
                    {
                        data: 'name',
                        name: 'name'
                    },
                    {
                        data: 'email',
                        name: 'email'
                    },
                    {
                        data: 'action',
                        name: 'action',
                        orderable: false,
                        searchable: false
                    },
                ]
            });

        });
    </script>
@endpush
