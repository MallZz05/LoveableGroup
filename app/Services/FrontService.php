<?php

//
namespace App\Services;

use App\Repositories\Contracts\CategoryRepositoryInterface;
use App\Repositories\Contracts\BookRepositoryInterface;

class FrontService
{
    protected $categoryRepository;
    protected $bookRepository;

    public function __construct(BookRepositoryInterface $bookRepository,
    CategoryRepositoryInterface $categoryRepository)
    {
        $this->categoryRepository = $categoryRepository;
        $this->bookRepository = $bookRepository;
    }

    public function searchBooks(string $keyword)
    {
        return $this->bookRepository->searchByName($keyword);
    }

    public function getFrontPageData()
    {
        $categories = $this->categoryRepository->getAllCategories();
        $popularBooks = $this->bookRepository->getPopularBooks(5);
        $newBooks = $this->bookRepository->getAllNewBooks();

        return compact('categories', 'popularBooks', 'newBooks');
    }
}
