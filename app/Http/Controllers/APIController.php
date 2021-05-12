<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Validator;
class APIController extends Controller
{
    public function getUsers($id=null){
        if(empty($id)){
            $users = User::get();
            return response()->json(["users"=>$users,200]);
        }else{

        }
        $users = User::find($id);
        return response()->json(["users"=>$users,200]);
    }

    public function addUsers(Request $request){
        if ($request->isMethod('post')) {
            $userData = $request->input();
            //echo"<pre>"; print_r($userData);die;

            //Simple post API validation

            /*//check user details
            if (empty($userData['name'])||empty($userData['email'])||empty($userData['password'])) {
                $error_message = "Please Enter Complete user Name";
            }
            //check if email valid or not
            if (!filter_var($userData['email'], FILTER_VALIDATE_EMAIL)) {
                $error_message = "Please Enter Vlid Email";
              }

            //check email already exits
            $userCount = User::where('email',$userData['email'])->count();
            if ($userCount>0) {
                $error_message = "Email already Exits";
            }
            if (isset($error_message)&&!empty($error_message)) {
                return response()->json(["status"=>false,"message"=>$error_message],422);
            }*/

            //advance validator Class for single posting data

            $rules = [
                "name" => "required|regex:/^[\pL\s\-]+$/u",
                "email" => "required|email|unique:users",
                "password"=>"required"
            ];

            $customMessages = [
                'name.required' =>'Name is required',
                'email.required'=>'Email is Required',
                'email.email'=>'Valid Email is required',
                'email.unique'=>'Email Alrady Exits',
                'password.required'=>'password is required'
            ];
            //advance validator Class for single posting data

            $validator = Validator::make($userData,$rules,$customMessages);
            if ($validator->fails()) {
                return response()->json($validator->errors(),422);
            }

            
            $user = new User;
            $user->name = $userData['name'];
            $user->email = $userData['email'];
            $user->password = bcrypt($userData['password']);
            $user->save();
            return response()->json(['message'=>'User added successfully!'],201);
        }
    }

    public function multipalUsers(Request $request){
        if ($request->isMethod('post')) {
            $userData = $request->input();
            //echo"<pre>"; print_r($userData);die;

            //validtor for multipal data posting

            $rules = [
                "users.*.name"=>"required|regex:/^[\pL\s\-]+$/u",
                "users.*.email"=>"required|unique:users",
                "users.*.password"=>"required",

            ];

            $customMessages = [
                '"users.*.name.required' =>'Name is required',
                '"users.*.email.required'=>'Email is Required',
                '"users.*.email.email'=>'Valid Email is required',
                '"users.*.email.unique'=>'Email Alrady Exits',
                '"users.*.password.required'=>'password is required'
            ];

            $validator = Validator::make($userData,$rules,$customMessages);
            if ($validator->fails()) {
                return response()->json($validator->errors(),422);
            }

            foreach ($userData['users'] as $key => $value) {
                $user = new User;
                $user->name = $value['name'];
                $user->email = $value['email'];
                $user->password = bcrypt($value['password']);
                $user->save();
            }
            return response()->json(['message'=>'User added successfully!'],201);
        }
    }

    public function updateUsersDetails(Request $request,$id){
        if ($request->isMethod('put')) {
           $userData = $request->input();
          // echo"<pre>"; print_r($userData);die;
          
          $rules = [
            "name" => "required|regex:/^[\pL\s\-]+$/u",
            "email" => "required|email|unique:users",
            "password"=>"required"
        ];

        $customMessages = [
            'name.required' =>'Name is required',
            'email.required'=>'Email is Required',
            'password.required'=>'password is required'
        ];
        //advance validator Class for single posting data

        $validator = Validator::make($userData,$rules,$customMessages);
        if ($validator->fails()) {
            return response()->json($validator->errors(),422);
        }

           User::where('id',$id)->update(['name'=>$userData['name']
            ,'password'=>bcrypt($userData['password'])]);
            return response()->json(['message'=>'User updated successfully!'],202);
        }
    }

    public function updateUsersName(Request $request,$id){
        if ($request->isMethod('patch')) {
            $userData = $request->input();
            //echo"<pre>"; print_r($userData);die;

            //validator
            $rules = [
                "name" => "required|regex:/^[\pL\s\-]+$/u",   
            ];
    
            $customMessages = [
                'name.required' =>'Name is required',
            ];
            //advance validator Class for single posting data
            $validator = Validator::make($userData,$rules,$customMessages);
            if ($validator->fails()) {
                return response()->json($validator->errors(),422);
            }
            User::where('id',$id)->update(['name'=>$userData['name']]);
            return response()->json(['message'=>'User updated successfully!'],202);
        }
    }

    public function deleteUser($id){
        User::where('id',$id)->delete();
        return response()->json(['message'=>'User deleted successfully!'],202);
    }

    public function deleteUserWithJson(Request $request){
        if ($request->isMethod('delete')) {
            $userData = $request->all();
            //echo"<pre>"; print_r($userData);die;
            User::where('id',$userData['id'])->delete();
            return response()->json(['message'=>'User deleted successfully!'],200);
        }
    }

    public function deleteMultipalUsers($ids){
        $ids = explode(",",$ids);
        User::whereIn('id',$ids)->delete();
        return response()->json(['message'=>'Users deleted successfully!'],202);
    }

    public function deleteMultipalUsersJson(Request $request){
        if ($request->isMethod('delete')) {
            $userData = $request->all();
            User::whereIn('id',$userData['ids'])->delete();
            return response()->json(['message'=>'Users deleted successfully!'],202);
          }
        }
    }
