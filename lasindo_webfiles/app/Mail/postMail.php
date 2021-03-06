<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class postMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    public $data;

    public function __construct($data)
    {
        //
        

        $this->data = $data;
        //dd($this->data);
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {   
        $count = count($this->data);

        if($count < 2){
            return $this->subject('Request Quote')->view('invoice2')->with(['data' => $this->data]);
        } else {
            return $this->subject('Request Quote')->view('invoice')->with(['data' => $this->data]);
        }
    }
}
