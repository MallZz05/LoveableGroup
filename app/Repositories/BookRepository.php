<?php

namespace App\Repositories;

use App\Models\Book;
use App\Repositories\Contracts\BookRepositoryInterface;

class BookRepository implements BookRepositoryInterface
{
    public function getPopularBooks($limit = 5)
    {
        return Book::where('is_popular', true)->take($limit)->get();
    }

    public function searchByName(string $keyword)
    {
        return Book::where('name', 'LIKE', '%' . $keyword . '%')->get();
    }

    public function getAllNewBooks()
    {
        return Book::latest()->get();
    }

    public function find($id)
    {
        return Book::find($id);
    }

    public function getPrice($bookId)
    {
        $book = $this->find($bookId);
        return $book ? $book->price : 0;
    }
}
