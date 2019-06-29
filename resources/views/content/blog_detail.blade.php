@extends('layout/home/master')


@section('title', 'Add Content')


@section('content')
	<!-- RIGHTPART -->
		<div class="arlo_tm_rightpart">
			<div class="rightpart_inner">
				<div class="arlo_tm_portfolio_single_wrap">
					<div class="container">
						<div class="images_list" >
							<ul>
								<li>
									<img src="{{$blog[0]->image}}" alt="" />
								</li>
								</li>
							</ul>
						</div>
						<center>
							<h3>{{$blog[0]->title}}</h3>
						</center>
						
						<div class="details_wrap"style="margin-top: 50px">
							<div class="leftbox">
								<div class="name_holder">
									<h3> Details</h3>
								</div>
								<div class="short_list">
									<ul>
										<li>
											<span class="first">Category :</span>
											<span class="second">{{$blog[0]->category}}</span>
										</li>
										<li>
											<span class="first">Created at :</span>
											<span class="second">{{$blog[0]->created_at}}</span>
										</li>
									</ul>
								</div>
							</div>
							<div class="rightbox">
								<p>{{$blog[0]->description}}</p>
							</div>
						</div>
						
					</div>
				</div>
@endsection