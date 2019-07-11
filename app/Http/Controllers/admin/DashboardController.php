<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Project;
use App\Images;
use App\Logs;
use File;
use Session;
class DashboardController extends Controller
{

    public function __construct()
    {
        // $this->middleware(['auth','verified']); << only verified email who can access
        $this->middleware('auth');
    }

    public function index(){
        $data['title'] = "Project";
        $data['list'] = Project::all();
        $data['viewer_homepage'] = Logs::whereLocation('homepage')->count();
        $data['viewer_project'] = Logs::whereLocation('project')->count();
        return view('content/admin/dashboard',$data);
    }

}
