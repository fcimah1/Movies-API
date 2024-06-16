<?php
namespace App\DTO;
use Spatie\LaravelData\Dto;

class UserDTO extends Dto
{
    public function __construct(public string $name, public string $email, public string $password)
    {
        
    }
}