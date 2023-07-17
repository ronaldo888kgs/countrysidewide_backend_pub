<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Api\ContractorController;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\SubCategoryController;
use App\Http\Controllers\Api\ProjectController;
use App\Http\Controllers\Api\FloorController;
use App\Http\Controllers\Api\UnitController;
use App\Http\Controllers\Api\SectionController;
use App\Http\Controllers\Api\SubSectionController;
use App\Http\Controllers\Api\HistoryController;
use App\Http\Controllers\Api\TaskController;
use App\Http\Controllers\Api\MediaFilesController;
use App\Http\Controllers\Api\WorkspaceController;
use App\Http\Controllers\Api\CommentController;
use App\Http\Controllers\Api\InvitedListController;
use App\Http\Controllers\Api\NotificationController;
use App\Http\Controllers\Api\VersionSetController;
use App\Http\Controllers\Api\SheetController;
use App\Http\Controllers\Api\ShowDrawingController;
use App\Http\Controllers\Api\TicketTemplateController;
use App\Http\Controllers\Api\SubmittalController;
use App\Http\Controllers\Api\InventoryController;
use App\Http\Controllers\Api\PurchasingController;





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

Route::middleware(['cors'])->group(function () {
   
    Route::post('/login', [AuthController::class, 'loginUser']);
    Route::post('/signup', [AuthController::class, 'createUser']);
    Route::post('/forgot', [AuthController::class, 'forgotUser']);
    Route::post('/reset-password', [AuthController::class, 'resetPwd']);


    Route::post('/test-subsection-attachment', [SubSectionController::class, 'updateAttahcments']);



    
    Route::middleware('auth:sanctum')->group(function() {
        //->middleware(['adminuser'])
        Route::post('/create_user', [AuthController::class, 'createUser']);
        Route::get('/dashboard', [ProjectController::class, 'getDashboard']);
        Route::get('/getSections', [CategoryController::class, 'getAllCategories']);
        Route::get('/getAllProjects', [ProjectController::class, 'getAllProjects']);
        // Route::get('/getProjectById', [ProjectController::class, 'getProjectById']);
        Route::get('/getProjectById', ['middleware' => 'gzip', 'as' => 'data', 'uses' => 'App\Http\Controllers\Api\ProjectController@getProjectById']);


        Route::get('/getProjectById_origin', ['middleware' => 'gzip', 'as' => 'data', 'uses' => 'App\Http\Controllers\Api\ProjectController@getProjectById_origin']);
        Route::get('/getProjectById_floors', ['middleware' => 'gzip', 'as' => 'data', 'uses' => 'App\Http\Controllers\Api\ProjectController@getProjectById_floors']);
        Route::get('/getProjectById_units', ['middleware' => 'gzip', 'as' => 'data', 'uses' => 'App\Http\Controllers\Api\ProjectController@getProjectById_units']);


        Route::get('/getAllHistory', [HistoryController::class, 'getAllHistory']);
        Route::get('/getAllTasks', [TaskController::class, 'getAllTasks']);
        Route::get('/mediaList ', [MediaFilesController::class, 'mediaList']);
        Route::post('/changeStatus', [SubSectionController::class, 'changeStatus']);
        Route::post('/fileStore', [MediaFilesController::class, 'fileStore']);
        Route::post('/deleteMedia', [MediaFilesController::class, 'deleteMedia']);    
        Route::post('/deleteTask', [TaskController::class, 'deleteTask']);
        Route::post('/addTask', [TaskController::class, 'addTask']);
        Route::post('/editTask', [TaskController::class, 'editTask']);
        Route::get('/getComments4Subsection', [CommentController::class, 'getAllComment4Subsection']);
        Route::get('/getAllCommentByUser', [CommentController::class, 'getAllCommentByUser']);
        Route::get('/doc/{filename}', [MediaFilesController::class, 'getPdfFile']);   
        Route::post('/addMentions', [NotificationController::class, 'addMentions']);
        Route::get('/notifications', [NotificationController::class, 'getNotifications']);   
        Route::post('/notification-read-all', [NotificationController::class, 'readAllNotifications']);   
        Route::post('/changeSectionOrders', [SectionController::class, 'changeSectionOrders']);
        Route::post('/addReply', [CommentController::class, 'addReply']);

        Route::post('/getSubSectionById', [SubSectionController::class, 'getSubSectionById']);

        //upload sheets
        Route::post('/new_version_set', [VersionSetController::class, 'addNewVersionSet']);
        Route::post('/getVersionSet', [VersionSetController::class, 'getVersionSet']);
        Route::post('/new_sheet', [SheetController::class, 'addNewSheetAsDraft']);

        Route::post('/convertUploadedPdf2Png', [SheetController::class, 'convertUploadedPdf2Png']);


        //shop drawings

        Route::post('/drawinglist', [ShowDrawingController::class, 'getDrawingList']);
        Route::post('/addDrawing', [ShowDrawingController::class, 'addDrawing']);
        Route::post('/deleteDrawing', [ShowDrawingController::class, 'deleteDrawing']);
        Route::post('/updateDrawing', [ShowDrawingController::class, 'updateDrawing']);
        Route::post('/change_order_shop_drawings', [ShowDrawingController::class, 'changeOrderShopDrowings']);

        // comment

        Route::post('/addComment', [CommentController::class, 'addComment']);
        Route::post('/updateComment', [CommentController::class, 'updateComment']);
        Route::post('/deleteComment', [CommentController::class, 'deleteComment']);
        Route::post('/read_notifications', [NotificationController::class, 'readNotification']);   
        Route::post('/markunreadnotification', [NotificationController::class, 'markUnreadNotification']);   
        Route::post('/markasRead', [NotificationController::class, 'markasRead']);   

        //ticket template

        Route::post('/upload_ticket_template', [TicketTemplateController::class, 'uploadTemplate']);
        Route::post('/update_ticket_template', [TicketTemplateController::class, 'updateTemplate']);
        Route::post('/delete_ticket_template', [TicketTemplateController::class, 'deleteTemplate']);
        Route::post('/get_ticket_template', [TicketTemplateController::class, 'getTemplate']);

        //materials
        Route::post('/addNewSubmittal', [SubmittalController::class, 'addNewSubmittal']);
        Route::post('/updateSubmittal', [SubmittalController::class, 'updateSubmittal']);
        Route::post('/deleteSubmittal', [SubmittalController::class, 'deleteSubmittal']);
        Route::get('/getSubmittals', [SubmittalController::class, 'getSubmittals']);
        Route::post('/addToInventory', [InventoryController::class, 'addToInventory']);
        Route::get('/getInventoryList', [InventoryController::class, 'getInventoryList']);
        Route::post('/updateInventoryItem', [InventoryController::class, 'updateInventoryItem']);
        Route::post('/deleteInventoryItem', [InventoryController::class, 'deleteInventoryItem']);


        Route::post('/addToPurchasing', [PurchasingController::class, 'addToPurchasing']);
        Route::get('/getPurchasingList', [PurchasingController::class, 'getPurchasingList']);
        Route::post('/updatePurchasingItem', [PurchasingController::class, 'updatePurchasingItem']);
        Route::post('/deletePurchasingItem', [PurchasingController::class, 'deletePurchasingItem']);

        //
        
        Route::get('/getProjectInWorkspace',  [ProjectController::class, 'getProjectInWorkspace']);
        //

        //Route::prefix('super')->middleware(['superuser'])->group(function(){
        Route::middleware(['superuser'])->group(function(){
            // Route::get('/getAllUsers', [UserController::class, 'getAllUsers']);
            Route::get('/getAllWorkspaces', [WorkspaceController::class, 'getAllWorkspaces']);
            Route::post('/createWorkspace', [WorkspaceController::class, 'createWorkspace']);
            Route::post('/updateWorkspace', [WorkspaceController::class, 'updateWorkspace']);
            Route::post('/deleteWorkspace', [WorkspaceController::class, 'deleteWorkspace']);
        });

        


        Route::get('/getUsersInSameWorkspace', [UserController::class, 'getAllUsers_for_inviting']);


        Route::get('/getAllUsers', [UserController::class, 'getAllUsers']);

        

        //test


        Route::get('/testResortCategories', [CategoryController::class, 'resortCategories']);
        Route::get('/resortExistedSections', [CategoryController::class, 'resortExistedSections']);
//resortExistedSections


        
        Route::middleware(['adminuser'])->group(function(){ // admin or super user
            
            Route::post('/updateUser', [UserController::class, 'updateUser']);
            Route::post('/deleteItem', [UserController::class, 'deleteItem']);
            Route::post('/updateItem', [UserController::class, 'updateItem']);
            Route::get('/userDetail', [UserController::class, 'getUserDetails']);
            
            
            // Route::get('/dashboard', [UserController::class, 'deleteItem']);

            //contractor
            Route::get('/getContractors', [ContractorController::class, 'getAllContractors']);
            Route::post('/addContractor',  [ContractorController::class, 'addContractor']);
            Route::post('/editContracotr',  [ContractorController::class, 'updateContractor']);
            Route::post('/deleteContracotr',  [ContractorController::class, 'deleteContractor']);
            //

            //category
            
            Route::post('/addCategory',  [CategoryController::class, 'addCategory']);
            Route::post('/updateCategory',  [CategoryController::class, 'updateCategory']);
            Route::post('/deleteCategory',  [CategoryController::class, 'deleteCategory']);
            Route::post('/addNewCategoryForProject', [CategoryController::class, 'addNewCategoryForProject']);

            //subcategory
            Route::get('/getSubSections', [SubCategoryController::class, 'getAllCategories']);
            Route::post('/addSubCategory',  [SubCategoryController::class, 'addSubCategory']);
            Route::post('/updateSubCategory',  [SubCategoryController::class, 'updateSubCategory']);
            Route::post('/deleteSubCategory',  [SubCategoryController::class, 'deleteSubCategory']);


            //project
            
            
            Route::post('/addProject',  [ProjectController::class, 'addProject']);
            Route::post('/updateProject',  [ProjectController::class, 'updateProject']);
            Route::post('/deleteProject',  [ProjectController::class, 'deleteProject']);

            // floor
            Route::get('/getAllFloors', [FloorController::class, 'getFloors']);
            Route::post('/addFloor',  [FloorController::class, 'addFloor']);
            Route::post('/updateFloor',  [FloorController::class, 'updateFloor']);
            Route::post('/deleteFloor',  [FloorController::class, 'deleteFloor']);
            Route::post('/duplicateFloor', [FloorController::class, 'duplicateFloor']);

             // floor
             Route::get('/getAllUnits', [UnitController::class, 'getAllUnits']);
             Route::post('/addUnit',  [UnitController::class, 'addUnit']);
             Route::post('/updateUnit',  [UnitController::class, 'updateUnit']);
             Route::post('/deleteUnit',  [UnitController::class, 'deleteUnit']);
             


            //section
            Route::post('/addSection', [SectionController::class, 'addSection']);


            Route::post('/deletePost', [UserController::class, 'deletePost']);

            
            // Route::post('/deleteProject', [ProjectController::class, 'getAllProjects']);


            Route::post('/completionStatus', [SubSectionController::class, 'completionStatus']);

            Route::post('/saveFloorOrders', [FloorController::class, 'updateOrders']);

            
            

            // invited users

            Route::get('/getInviteUsers', [InvitedListController::class, 'getInviteUsers']);
            Route::post('/addInviteUser', [InvitedListController::class, 'addInviteUser']);
            Route::post('/delInviteUser', [InvitedListController::class, 'delInviteUser']);

            Route::get('/getallusers-for-inviting', [UserController::class, 'getAllUsers_for_inviting']);
            
            
            
        });
        
    });

});

// Route::middleware('auth:sanctum')->post('/signup', [AuthController::class, 'createUser']);
// Route::post('/login', [AuthController::class, 'loginUser']);
// Route::middleware('auth:sanctum')->post('/deletePost', [UserController::class, 'deletePost']);
// Route::middleware('auth:sanctum')->get('/userDetail', [UserController::class, 'getUserDetails']);
// Route::middleware('auth:sanctum')->get('/getAllUsers', [UserController::class, 'getAllUsers']);
// Route::middleware('auth:sanctum')->post('/updateUser', [UserController::class, 'updateUser']);
// Route::middleware('auth:sanctum')->post('/deleteItem', [UserController::class, 'deleteItem']);
//
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
