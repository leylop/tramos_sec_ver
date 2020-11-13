$(document).ready(function(){
 $('#resultsTrans').dataTable(
     
     {"fnRowCallback": 
     function( nRow, aData, iDisplayIndex, iDisplayIndexFull,td )
     { switch(aData[9]){ case 'Rechazada':$(nRow).css('color', 'red');      
      break; case 'Pendiente': $(nRow).css('color', 'orange') 
      break;
     } 
    }
    
 }); 
 

 $('.datepicker').datepicker({
    format: 'YYYY-MM-DD hh:mm'
 }); 
    
  

console.log('entri');

   
});

function consultaRangoFecha(){
    var dateInit='2020-11-01 00:00:00' ;
    var dateEnd= '2020-11-05 00:00:00';

$.ajax({
    url:"{{ route('transactions/TransactionsByDates')}}",
    type:"POST",
    data:{
        'dateInit':dateInit,
        'dateEnd':dateEnd
    },
    succes: function(resp){
        alert(resp);

    },
});

}