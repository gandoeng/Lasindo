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

    public $firstName;
    public $lastName;
    public $company;
    public $country;
    public $phone;
    public $email;
    public $messages;
    public function __construct($firstName,$lastName,$company,$country,$phone,$email,$messages)
    {
        //
        $this->$firstName = $firstName;
        $this->$lastName = $lastName;
        $this->$company = $company;
        $this->$phone = $phone;
        $this->$email = $email;
        $this->$messages = $messages;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('Request Quote')->view('invoice');
    }
}
