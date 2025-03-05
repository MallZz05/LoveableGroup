<?php

namespace App\Repositories\Contracts;

interface BookRepositoryInterface
{
    public function getPopularBooks($limit);
    public function searchByName(string $keyword);
    public function getAllNewBooks();
    public function find($id);
    public function getPrice($ticketId);
}
