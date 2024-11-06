<meta charset="utf-8" />
<meta name="viewport"
    content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<title>Dashboard  - @yield('title')</title>
<meta name="color-scheme" content="dark light">
<meta name="description" content="Dashboard Admin Panel" />
<meta name="csrf-token" content="{{ csrf_token() }}">

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.datatables.net/1.11.4/css/dataTables.bootstrap5.min.css" rel="stylesheet">

<link rel="icon" href="{{ asset('admin/assets/img/icon/favicon.ico') }}" />
<link rel="stylesheet" href="{{ asset('admin/assets/icons/boxicons.css') }}" />
<link rel="stylesheet" href="{{ asset('css/template.css') }}" />
<link rel="stylesheet" href="{{ asset('css/style.css') }}" />
<style>
    {!! selected_theme() !!}
</style>
