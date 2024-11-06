<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

use Illuminate\Support\Facades\DB;


class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:sanctum', ['except' => ['login', 'register', 'password_recovery', 'verify_and_reset_password']]);
    }

    public function register(Request $request)
    {

        $validated = Validator::make($request->all(), [
            'full_name' => 'required|string|between:2,100',
            'email' => 'required|string|email|max:100|unique:users,email',
            'password' => 'required|string|confirmed|min:6',
            'phone_number' => 'required',
            'roles' => 'required'

        ]);

        if ($validated->fails()) {
            return response([
                'message' => $validated->errors(),
                'status' => 'error'
            ], 200);
        }
        DB::beginTransaction();
        try {

            $user = User::create([
                'full_name' => $request->full_name,
                'email' => $request->email,
                'phone_number' => $request->phone_number,
                'password' => Hash::make($request->password)
            ]);

          

            $token = $user->createToken($request->email)->plainTextToken;
            DB::commit();
            return response([
                'token' => $token,
                'message' => 'Registration Success',
                'status' => 'success'
            ], 201);
        } catch (\Exception $e) {

            DB::rollback();
            return response(
                [
                    "message" => $e->getMessage(),
                    "status" => "error",
                ],
                403
            );
        }
    }

    public function login(Request $request)
    {

        $validated = Validator::make($request->all(), [
            'user_id' => 'required',
            'password' => 'required'
        ]);

        if ($validated->fails()) {
            return response([
                'message' => $validated->errors(),
                'status' => 'error'
            ], 200);
        }


        $user = User::where('user_id', $request->user_id)->first();
        if ($user && Hash::check($request->password, $user->password)) {

            $token = $user->createToken($request->user_id)->plainTextToken;

            return response([
                "user" => $user,
                'token' => $token,
                'message' => 'Login Success',
                'status' => 'success'
            ], 200);
        }
        return response([
            'message' => 'The Provided Credentials are incorrect',
            'status' => 'failed'
        ], 401);
    }

    public function logout()
    {
        try {
            auth()->user()->tokens()->delete();
            return response(
                [
                    "message" => "Logout Success",
                    "status" => "success",
                ],
                200
            );
        } catch (\Exception $e) {

            return response(
                [
                    "message" => $e->getMessage(),
                    "status" => "error",
                ],
                403
            );
        }
    }


}
