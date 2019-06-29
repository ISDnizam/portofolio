@extends('layout/home/master')

@section('title', 'Homepage')

@section('content')
		
		<!-- RIGHTPART -->
		<div class="arlo_tm_rightpart">
			<div class="rightpart_inner">
				<div class="arlo_tm_portfolio_single_wrap">
					<div class="container">
						<div class="title_holder">
							<h3> {{$project[0]->title}}</h3>
						</div>
						<div class="details_wrap">
							<div class="leftbox">
								<div class="name_holder">
									<h3>Project Details</h3>
								</div>
								<div class="short_list">
									<ul>
										<li>
											<span class="first">Category :</span>
											<span class="second">{{$project[0]->category}}</span>
										</li>
										<li>
											<span class="first">Client :</span>
											<span class="second">{{$project[0]->client}}</span>
										</li>
									</ul>
								</div>
							</div>
							<div class="rightbox">
								<p>{{$project[0]->description}}</p>
							</div>
						</div>
						<div class="images_list">
							<ul>
								<li>
									<img src="{{$project[0]->image}}" alt="" />
								</li>
							</ul>
						</div>
						<div class="pagination_wrap">
							<div class="prev">
								<a href="#">Prev</a>
							</div>
							<div class="next">
								<a href="#">Next</a>
							</div>
						</div>
					</div>
				</div>
@endsection
