  
@extends('adminlte::page')
@section('title','Consulta Transacciones')
@section('content_header')
@section('plugins.Datatables', true)
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>



@section('content')
<form method="POST" action="TransactionsByDates">
<div class="row">
<input id="token" type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class='col-sm-4'>
         <div class="form-group">
            <label>Rango de fechas:</label>
                <div class="input-group date" data-provide="datepicker">
                    <input type="text" class="form-control" id="reservation" name="reservation" placeholder="Fecha inicial" value="">
                        <div class="input-group-addon">
                            <span class="glyphicon glyphicon-th"></span>
                        </div>
                </div>
        </div>
    </div>

    <div class='col-sm-4'>
         <div class="form-group">
            <label>Rango de fechas:</label>
                <div class="input-group date" data-provide="datepicker">
                    <input type="text" class="form-control" name="reservation2" id="reservation2"  placeholder="Fecha final" value="{{ old('dateEnd') }}">
                        <div class="input-group-addon">
                            <span class="glyphicon glyphicon-th"></span>
                        </div>
                </div>
        </div>
    </div>
    <div class='col-sm-2'>
        <button id="search" type="submit" class="btn btn-primary" style=" margin-left: 300px;" >Buscar</button>
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
   
    <th>Id Petición</th>
    <th>canal- nombre canal</th>
    <th>Fecha transacción</th>
    <th>Origen </th>
    <th>Destino</th>
    <th>Estado Destino</th>
    <th>Operación</th>    
    <th>Descripción Operación</th>
    <th>Código Operación</th>
    <th>Estado Transacción</th>    
   
  </tr>
 </thead> 
 {{--  ('transactions.petition_id','transactions.created_at',
          'transactions.status','transactions.origin','canales.num_canal','canales.nombre','operaciones.nombre',
           'operaciones.descripcion','operaciones.cod_operacion','destinos.nombre','destinos.confirmacion')  --}}

<tbody>
    @foreach($transactions as $tr)
    <tr>        
        <td>{{$tr->petition_id}}</td>
         <td>{{$tr->num_canal}}-{{$tr->nombrecan}}</td>
        <td>{{$tr->created_at}}</td>
        <td>{{$tr->origin}}</td>
        <td>{{$tr->destiny}}</td>
        @if($tr->confirmacion == 1)
           <td> Confirmada </td>
        @endif
        @if($tr->confirmacion == 0)  
           <td> Rechazada </td>      
       @endif
        <td>{{$tr->nameOp}}</td>
        <td>{{$tr->descripcion}}</td>      
        <td>{{$tr->cod_operacion}}</td>
        <td>{{$tr->status}}</td>
    </tr>
    @endforeach
 </tbody>

</table>
</form>
@endsection  

@section('js')
 <script  type="text/javascript" src="{{ asset('vendor/jquery/jquery.min.js') }}"> </script>
 <script type="text/javascript"  src="{{ asset('../js/consultasTransacciones.js') }}"> </script> 
 <script type="text/javascript"  src="{{ asset('../js/bootstrap.js') }}"> </script>  
 <!-- Bootstrap Date-Picker Plugin -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    

 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>

 @endsection 
