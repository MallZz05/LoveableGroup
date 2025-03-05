<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Category;
use App\Services\FrontService;
use Illuminate\Http\Request;

class FrontController extends Controller
{
    //
    protected $frontService;

    public function __construct(FrontService $frontService)
    {
        $this->frontService = $frontService;
    }

    public function index()
    {
        $data = $this->frontService->getFrontPageData();
        return view('front.index', $data);
    }

    public function details(Book $book)
    {
        return view('front.details', compact('book'));
    }

    public function category(Category $category)
    {
        return view('front.category', compact('category'));
    }

}
