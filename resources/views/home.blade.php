@extends('adminlte::page')
 @section('title','Home')
@section('content_header')
{{--  @section('plugins.Sweetalert2', true)  --}}
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
  

@stop
@section('content')
<div class="card">
<div class="card-header">
<h1> Bienvenido a TRAMOS</h1>

</div>
<div class="card-body">

<p>Transactional Monitor System </p>
</div>

</div>

<footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 1.0.0
    </div>
    <strong>Copyright &copy; 2020  Lic GPL <a href="https://github.com/leylop">Leylop</a>.</strong> All rights
    reserved.
  </footer>
@stop
@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop
@section('js')

<script></<cript>

@stop


