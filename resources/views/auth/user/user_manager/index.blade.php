@extends('auth.layout')
@section('title', 'User')
@push('css')
    <link rel="stylesheet" href="{{ asset('css/datatable.css') }}" />
    <link rel="stylesheet" href="{{ asset('css/plugins.css') }}" />
    <style></style>
@endpush
@section('content')
    <div class="container-xxl flex-grow-1 container-p-y">
        <div name="content">
            @include('auth.alert_component')
            <div class="row mt-4">
                <div class="col mt-2" style="display:inline-flex;">
                    <h4 class="fw-bold">List</h4>

                </div>
            </div>

            <div class="card mt-3">
                <div class="card-body">
                    {{ generate_table_columns(['user id', 'Name', 'designation', 'email', 'mobile', 'sales code', 'user level', 'active', 'action']) }}
                </div>
            </div>




            @include('auth.user.user_manager.export')
        </div>
    </div>
    <div class="content-backdrop fade"></div>
@endsection
@push('js')
    <script src="{{ asset('js/datatable.js') }}"></script>
    <script src="{{ asset('js/plugins.js') }}"></script>

    <script type="text/javascript">
        const columns = ['id', 'user_id', 'name', 'designation', 'email', 'mobile', 'sales_code', 'user_level', 'active'];
        const route = "{{ url('user/user_list') }}";
        const order = "asc";
        const button = true;
        const table = 'user_manager';
        generate_datatable(route, columns, order, button, table);
    </script>
    <script></script>
@endpush
