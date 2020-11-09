  
@extends('adminlte::page')
@section('title','Consulta Transacciones')
@section('content_header')
@section('plugins.Datatables', true)
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">



@section('content')
<div class="row">
    <div class='col-sm-4'>
        <div class="form-group">
            <label>Rango de fechas:</label>
                <div class="input-group">
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                    <input type="text" class="form-control pull-right" id="reservation">
                </div>
        </div>
    </div>

    <div class='col-sm-4'>
        <div class="form-group">
            <label>Rango de fechas:</label>
                <div class="input-group">
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                    <input type="text" class="form-control pull-right" id="reservation">
                </div>                    
        </div>
    </div>
    <div class='col-sm-2'>
        <button type="button" class="btn btn-primary" style=" margin-left: 300px;" >Buscar</button>
    </div>
</div>

<div class="row">
    <div class='col-sm-4'>
    </div>

    <div class='col-sm-4'>
    </div>
</div>


<table class="table table-striped table-bordered" style="width:100%" id="resultsTrans">
<thead>
  <tr>
    <th>Id Registro</th>
    <th>Id Petición</th>
    <th>Fecha transacción</th>
    <th>Origen </th>
    <th>Estado</th>    
    <th>destino</th>
  </tr>
 </thead> 

<tbody>
    @foreach($transactions as $tr)
    <tr>
        <td>{{$loop->iteration}}</td>
        <td>{{$tr->petition_id}}</td>
        <td>{{$tr->created_at}}</td>
        <td>{{$tr->origin}}</td>
        <td>{{$tr->status}}</td>
        <td>{{$tr->destination_id}}</td>
    </tr>
    @endforeach
 </tbody>

</table>
@endsection  

@section('js')
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
<script>
$(document).ready( function () {
$('#resultsTrans').DataTable();
} );

</script>
@endsection  

