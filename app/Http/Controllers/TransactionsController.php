<?php

namespace App\Http\Controllers;

//use App\transactions;
use App\Models\Transaction;
use Illuminate\Http\Request;
use DB;
use Exception;

class TransactionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {     
     $transactions=$transactions = Transaction::select('transactions.petition_id','transactions.created_at',
     'transactions.status','transactions.origin','canales.num_canal','canales.nombre as nombrecan','operaciones.nombre as nameOp',
      'operaciones.descripcion','operaciones.cod_operacion','destinos.nombre as destiny','destinos.confirmacion')
           ->join('canales', 'transactions.canal_id', '=', 'canales.id')    
           ->join('operaciones', 'transactions.operation_id', '=', 'operaciones.id')  
           ->join('destinos', 'transactions.destination_id', '=', 'destinos.id')   
           ->get();     
    return view('transactions.index',compact('transactions'));
    
    }

    public function TransactionsByDates(Request $request)
    
    {
        
       /* $f1 = $request->reservation;
        $f2 = $request->reservation2; */  
        

        $originalDate1 = $request->reservation;
        $f1 = date("yy-m-d", strtotime($originalDate1));
      
        $originalDate = $request->reservation2;
        $f2 = date("yy-m-d", strtotime($originalDate));
        
       
        /* $transactions = DB::table('transactions')
           ->whereBetween('created_at', [$f1, $f2])
           ->get();*/
          $transactions = Transaction::select('transactions.petition_id','transactions.created_at',
          'transactions.status','transactions.origin','canales.num_canal','canales.nombre as nombrecan','operaciones.nombre as nameOp',
           'operaciones.descripcion','operaciones.cod_operacion','destinos.nombre as destiny','destinos.confirmacion')
                ->join('canales', 'transactions.canal_id', '=', 'canales.id')    
                ->join('operaciones', 'transactions.operation_id', '=', 'operaciones.id')  
                ->join('destinos', 'transactions.destination_id', '=', 'destinos.id')               
                 ->whereBetween('created_at', [$f1, $f2])
                 ->get();
                
              // return json_encode($transactions);
     
          return view('transactions.index',compact('transactions'));
    }

    
      /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function list()
    {
        return view('transactions.graphs');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $datosTransaccion=request()->except('_token');
        transactions::insert($datosTransaccion);
        return response()->json($datosTransaccion);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\transactions  $transactions
     * @return \Illuminate\Http\Response
     */
    public function show(transactions $transactions)
    {
        //
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\transactions  $transactions
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, transactions $transactions)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\transactions  $transactions
     * @return \Illuminate\Http\Response
     */
    public function destroy(transactions $transactions)
    {
        //
    }
}