@extends('adminlte::page')
@section('title','Tablero')
@section('content_header')
@section('plugins.Datatables', true)
 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.js"></script>

@section('content')
 <br>
<div class="row">
  <div class="col-sm-6">
    <div class="card" style="width: 30rem;">
      <div class="card-body">
        <h5 class="card-title">Volumen Transaccional</h5>               
        <canvas id="myChart" width="100" height="100"></canvas>
            <script>
            var ctx = document.getElementById('myChart').getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'polarArea',
                data: {
                    labels: ['7:00-9:00', '10:00-12:00', '13:00-15:00', '14:00-16:00', '16:00-19:00', '20:00-22:00'],
                    datasets: [{
                        label: '# Transacciones',
                        data: [12, 19, 3, 5, 2, 3],
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });

            </script>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6">
    <div class="card" style="width: 30rem;">
      <div class="card-body">
        <h5 class="card-title">Tipo de Operación</h5>
        <p class="card-text"> </p>
        <canvas id="myChart2" width="100" height="100"></canvas>

        <script>           
            var ctxr = document.getElementById('myChart2').getContext('2d');
            var myChart2 = new Chart(ctxr, {
                type: 'bar',
                data: {
                    labels: ['Rec. Serv publicos ', 'Depositos ', 'Retiros'],
                    datasets: [{
                        label: 'Operaciones',
                        data: [12, 19, 50],
                        backgroundColor: [
                            'rgba(80, 63, 191, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)'
                            
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)'
                        
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
                
        </script>
            </div>
        </div>
    </div>
</div>

<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Estado Transaccional</h5>
        <p class="card-text"> </p>
       
        <canvas id="myChart3" width="200" height="200"></canvas>
    
    <script>           
            var ctxr = document.getElementById('myChart3').getContext('2d');
            var myChart2 = new Chart(ctxr, {
                type: 'line',
                data: {
                    labels: ['Black', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
                    datasets: [{
                        label: '# of Votes',
                        data: [50, 55, 90, 100, 40,30],
                        backgroundColor: [
                            'rgba(80, 63, 191, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
    
    </script>
      </div>
    </div>
  </div>

  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Tipo de Operación</h5>
       
        <canvas id="myChart4" width="200" height="200"></canvas>

        <script>           
            var ctx = document.getElementById('myChart4').getContext('2d');
            var myPieChart = new Chart(ctx, {
                                    type: 'pie',
                                    data: data,
                                    options: options
                                });
                    data = {
                        datasets: [{
                            data: [10, 20, 30]
                        }],

                        // These labels appear in the legend and in the tooltips when hovering different arcs
                        labels: [
                            'Red',
                            'Yellow',
                            'Blue'
                        ]
                    };  
                            
    
        </script>
            </div>
        </div>
    </div>
</div> 
@endsection  