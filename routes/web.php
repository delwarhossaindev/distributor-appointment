<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    if (auth()->check()) {
        return redirect('/dashboard');
    }
    return view('admin.login');
})->name('login');
Route::post('/login', [AuthController::class, 'login'])->name('login-user');

Route::get('/register', function () {
    return view('register');
})->name('register');
Route::post('/registration', [AuthController::class, 'registration'])->name('registration');

Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard',  function () {
        return view('auth.dashboard.index');
    })->name('dashboard');
});

Route::get('theme_mode', function (Request $request) {
    $request->session()->put('theme', $request->theme);
    return back();
})->name('theme.update');

Route::get('users', [UserController::class, 'index'])->name('users.index');
// Route::get('users', [UserController::class, 'datatable']);

Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
