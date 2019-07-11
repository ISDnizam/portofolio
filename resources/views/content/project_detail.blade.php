@extends('layout/home/master')

@section('title', 'Homepage')

@section('content')
		
		<!-- RIGHTPART -->
		<div class="arlo_tm_rightpart">
			<div class="rightpart_inner">
				<div class="arlo_tm_portfolio_single_wrap">
					<div class="container">
						<div class="title_holder">
							<h3> {{$project->title}}</h3>
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
											<span class="second">{{$project->category}}</span>
										</li>
										<li>
											<span class="first">Client :</span>
											<span class="second">{{$project->client}}</span>
										</li>
										@if($project->url!='')
										<li>
											<span class="first">Url :</span>
											<span class="second">{{$project->url}}</span>
										</li>
										@endif
										@if(!$images->isEmpty())
										<li>
											<img src="{{$project->image}}" alt="" />
										</li>
										@endif
									</ul>
								</div>
							</div>
							<div class="rightbox">
								<p>{{$project->description}}</p>
								<br>
									@if($images->isEmpty())
									<div class="images_list">
										<ul>
											<li>
											<img src="{{$project->image}}" alt="" />
											</li>
										</ul>
									</div>
									@endif
									<div class="images_list">
										<ul>
											@foreach($images as $s)
											<li>
												<img src="{{$s->full_path}}" alt="" />
											</li>
											@endforeach
										</ul>
									</div>
							</div>
						</div>

					</div>
				</div>
@endsection
