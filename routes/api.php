<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\DocumentController;
use App\Http\Controllers\CodeClosureController;
use App\Http\Controllers\CodeAmendmentController;
use App\Http\Controllers\DocumentCommentController;
use App\Http\Controllers\DistributorPendingController;
use App\Http\Controllers\BusinessInformationController;
use App\Http\Controllers\DistributorshipInfoMasterController;
use App\Http\Controllers\Api\SettingController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Public Routes
Route::post('/register', [UserController::class, 'register']);
Route::post('/login', [UserController::class, 'login'])->name('login');

// Protected Routes
Route::middleware(['auth:sanctum'])->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);

    Route::resource('business_info', BusinessInformationController::class);
    Route::resource('code_amendment', CodeAmendmentController::class);
    Route::resource('code_closure', CodeClosureController::class);
    Route::resource('comments', CommentController::class);
    Route::resource('distributor_pending', DistributorPendingController::class);
    Route::resource('distributorship_info', DistributorshipInfoMasterController::class);
    Route::resource('documents', DocumentController::class);

    Route::resource('document_comment', DocumentCommentController::class);

    Route::get('/regions', [SettingController::class, 'getRegion']);
    Route::get('/application_values', [SettingController::class, 'getApplicationValues']);
    Route::get('/appointment_types', [SettingController::class, 'getAppointmentTypes']);
    Route::get('/reason-for-replacing', [SettingController::class, 'getReasonForReplacing']);
    Route::get('/business', [SettingController::class, 'getBusiness']);
    Route::get('/ownership-type', [SettingController::class, 'getOwnershipType']);
    Route::get('/office-warehouse-structure', [SettingController::class, 'getOfficeWarehouseStructure']);
    Route::get('/workspace-structure', [SettingController::class, 'getWorkspaceStructure']);
    Route::get('/warehouse', [SettingController::class, 'getWarehouse']);
    Route::get('/warehouse-condition', [SettingController::class, 'getWarehouseCondition']);
    Route::get('/electrical-wiring', [SettingController::class, 'getElectricalWiring']);
    Route::get('/insurance-coverage', [SettingController::class, 'getInsuranceCoverage']);
    Route::get('/team-sitting-arrangement', [SettingController::class, 'getTeamSittingArrangement']);
    Route::get('/fire-fighting-facilities', [SettingController::class, 'getFireFightingFacilities']);
    Route::get('/code-closure', [SettingController::class, 'getCodeClosure']);
    Route::get('/code-amendment', [SettingController::class, 'getCodeAmendment']);

    Route::get('/get_drop_down_data', [SettingController::class, 'getDropDownData']);
    Route::post('/get_zone', [SettingController::class, 'getZone']);
    Route::post('/get_territory', [SettingController::class, 'getTerritory']);

    Route::get('/get_district', [SettingController::class, 'getDistrict']);
    Route::post('/get_thana', [SettingController::class, 'getThana']);

    Route::get('/distributor_list', [SettingController::class, 'getDistributorList']);
    Route::get('/total_info/{id}', [SettingController::class, 'getTotalInfo']);

    //Pending Approval
    Route::get('/pending_approval', [SettingController::class, 'getPendingApproval']);

    Route::post('/logout', [SettingController::class, 'logout']);
});

Route::any('{any}', function () {
    return response()->json([
        'status'    => false,
        'message'   => 'This Api does not exists Or Please Login!',
    ], 404);
})->where('any', '.*');
