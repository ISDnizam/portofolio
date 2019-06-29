
@extends('layout/home/master')

@section('title', 'Homepage')


@section('content')
		
		<!-- RIGHTPART -->
		<div class="arlo_tm_rightpart">
			<div class="rightpart_inner">
				<div class="arlo_tm_section" id="home">
					<div class="arlo_tm_hero_header_wrap">
						<div class="arlo_tm_universal_box_wrap particle jarallax" data-speed="0.1">
							<div id="particles-js"></div> 
							<div class="particle_overlay"></div>
							<div class="inner_content">
								<div class="image_wrap">
									<img src="{{$profile->profile_picture}}" alt="" />
								</div>
								<div class="name_holder">
									<h3>I'm <span>{{$profile->name}}</span></h3>
								</div>
								<div class="text_typing">
									<p>as a <span class="arlo_tm_animation_text_word"></span></p>
								</div>
							</div>
							<div class="arlo_tm_arrow_wrap bounce anchor">
								<a href="#about"><i class="fa fa-angle-double-down"></i></a>
							</div>
						</div>
					</div>
				</div>
				
				<!-- ABOUT -->
				<div class="arlo_tm_section relative" id="about">
					<div class="arlo_tm_about_wrapper_all">
						<div class="container">
							<div class="arlo_tm_title_holder">
								<h3>About Me</h3>
								<span>Main informations about me</span>
							</div>
							<div class="arlo_tm_about_wrap">
								<div class="author_wrap">
									<div class="leftbox">
										<div class="about_image_wrap parallax" data-relative-input="true">
											<div class="image layer" data-depth="0.1">
												<img src="http://frenify.com/envato/marketify/html/arlo/1/img/about/550x640.jpg" alt="" />
												<div class="inner" data-img-url="{{$profile->about_me_picture}}"></div>
											</div>
											<div class="border layer" data-depth="0.2">
												<img src="http://frenify.com/envato/marketify/html/arlo/1/img/about/550x640.jpg" alt="" />
												<div class="inner"></div>
											</div>
										</div>
									</div>
									<div class="rightbox">
										<div class="arlo_tm_mini_title_holder">
											<h4>I'm {{$profile->name}} as a <span class="arlo_tm_animation_text_word"></span></h4>
										</div>
										<div class="definition">
											<p> {{$profile->about}}</p>
										</div>
										<div class="about_short_contact_wrap">
											<ul>
												<li>
													<span><label>Birthday:</label> {{$profile->birthday}}</span>
												</li>
												<li>
													<span><label>City:</label> {{$profile->city}}</span>
												</li>
												<li>
													<span><label>Study:</label> {{$profile->study}}</span>
												</li>
												<li>
													<span><label>Website:</label> <a href="{{$profile->website}}">{{$profile->website}}</a></span>
												</li>
												<li>
													<span><label>Mail:</label> <a href="{{$profile->email}}">{{$profile->email}}</a></span>
												</li>
												<li>
													<span><label>Phone:</label> <a href="{{$profile->phone}}">{{$profile->phone}}</a></span>
												</li>
											</ul>
										</div>
										<div class="buttons_wrap">
											<ul>
												<li>
													<a href="/assets/doc/CV-Abul-Nizam-Faisal.pdf" target="_blank"><span>Download CV</span></a>
												</li>
												<li class="anchor">
													<a href="#contact"><span>Send Message</span></a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /ABOUT -->
				
				<!-- SKILLS -->
				<div class="arlo_tm_section">
					<div class="arlo_tm_skills_wrap">
						<div class="container">
							<div class="inner_wrap">
									<div class="arlo_tm_mini_title_holder">
										<h4>Some About my Abilities</h4>
									</div>
											<div class="progress_bar_wrap_total" style="margin-left: 10px">
													<div class="arlo_tm_progress_wrap" data-size="small" data-round="c" data-strip="off">
									
											@foreach ($skills as $s)
											<div class="arlo_tm_progress" data-value="{{ $s->ability }}" data-color="#000">
												<span><span class="label">{{ $s->name }} - <span class="experience"></span></span><span class="number"></span></span>
												<div class="arlo_tm_bar_bg"><div class="arlo_tm_bar_wrap"><div class="arlo_tm_bar"></div></div></div>
											</div>
											@endforeach
											</div>

											</div>

												<div class="progress_bar_wrap_total" style="margin-left: 10px">
													<div class="arlo_tm_progress_wrap" data-size="small" data-round="c" data-strip="off">
									
											@foreach ($other_skills as $s)
											<div class="arlo_tm_progress" data-value="{{ $s->ability }}" data-color="#000">
												<span><span class="label">{{ $s->name }} - <span class="experience"></span></span><span class="number"></span></span>
												<div class="arlo_tm_bar_bg"><div class="arlo_tm_bar_wrap"><div class="arlo_tm_bar"></div></div></div>
											</div>
											@endforeach
											</div>

											</div>
										
								
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /SKILLS -->
				
			
				
				<!-- PORTFOLIO -->
				<div class="arlo_tm_section relative" id="portofolio">
					<div class="arlo_tm_portfolio_wrapper_all">

						<!-- PORTFOLIO FILTER -->
						<div class="arlo_tm_second_portfolio">
						<div class="container">
							<div class="arlo_tm_portfolio_wrap">
								<div class="arlo_tm_title_holder portfolio">
									<h3>Creative Works</h3>
									<span>Check out our latest creative works</span>
								</div>
								<div class="arlo_tm_portfolio_titles"></div>
								<ul class="arlo_tm_portfolio_filter">
									<li><a href="#" class="current" data-filter="*">All</a></li>
									<li><a href="#" data-filter=".design">Design</a></li>
									<li><a href="#" data-filter=".development">Development</a></li>
								</ul>
								<ul class="arlo_tm_portfolio_list gallery_zoom">
									@foreach ($project as $p)
									<li class="{{$p->category}}">
										<div class="entry arlo_tm_portfolio_animation_wrap" data-title="{{$p->title}}" data-category="{{$p->category}}">
											<a href="/project/detail/{{$p->id_project}}">
												<img src="http://frenify.com/envato/marketify/html/arlo/1/img/portfolio/600x600.jpg" alt="" />
												<div class="arlo_tm_portfolio_image_main" data-img-url="{{$p->image}}"></div>
											</a>
										</div>
									</li>
									@endforeach
								</ul>
							</div>
						</div>
					</div>
					<!-- /PORTFOLIO FILTER -->

					</div>
				</div>
				<!-- /PORTFOLIO -->
				
				<!-- TESTIMONIALS -->
				<div class="arlo_tm_section hidden-md" id="testimonials">
					<div class="arlo_tm_testimonials_wrapper_all">
						<div class="arlo_tm_universal_box_wrap">
							<div class="bg_wrap">
								<div class="overlay_image testimonial jarallax" data-speed="0"></div>
								<div class="overlay_color testimonial"></div>
							</div>
							<div class="content testimonial">
								<div class="arlo_tm_testimonial_wrap">
									<div class="container">
										<div class="arlo_tm_counter_wrap" data-col="4" data-delay="300">
											<ul class="arlo_tm_counter_list arlo_tm_miniboxes" style="margin-left:100px; color:white">
												<li>
													<div class="inner arlo_tm_minibox">
														<h3  style="color:white"><span><span class="arlo_tm_counter" data-from="0" data-to="21" data-speed="5000">21</span></span></h3>
														<span  style="color:white">Projects Completed</span>
													</div>
												</li>
												<li>
													<div class="inner arlo_tm_minibox">
														<h3 style="color:white"><span><span class="arlo_tm_counter" data-from="0" data-to="999" data-speed="3000">0</span>K+</span></h3>
														<span style="color:white">Lines of Code</span>
													</div>
												</li>
												<li>
													<div class="inner arlo_tm_minibox">
														<h3 style="color:white"><span><span class="arlo_tm_counter" data-from="0" data-to="19" data-speed="5000">13</span></span></h3>
														<span style="color:white"> Clients</span>
													</div>
												</li>
												
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /TESTIMONIALS -->
				
				<!-- NEWS -->
		<!-- 		<div class="arlo_tm_section" id="news">
					<div class="arlo_tm_news_wrap">
						<div class="container">
							<div class="arlo_tm_title_holder news">
								<h3>Latest News</h3>
								<span>Check out our latest News</span>
							</div>
							<div class="arlo_tm_list_wrap ">
								<ul class="total">
									@foreach ($blog as $b)
									<li class="wow fadeInUp" data-wow-duration="1.2s">
										<div class="inner_list">
											<div class="image_wrap">
												<img class="small" src="{{$b->image}}" alt="" />
												<img class="big" src="{{$b->image}}" alt="" />
												<div class="news_image" data-url="{{$b->image}}"></div>
												<a class="link_news" href="/blog/detail/{{$b->id_blog}}"></a>
											</div>
											<div class="definitions_wrap">
												<div class="date_wrap">
													<p>{{$b->created_at}}<a href="index.html">{{$b->category}}</a></p>
												</div>
												<div class="title_holder">
													<h3><a href="/blog/detail/{{$b->id_blog}}">{{$b->title}}</a></h3>
												</div>
												<div class="definition">
													<p>{{$b->description}}</p>
												</div>
												<div class="read_more">
													<a href="/blog/detail/{{$b->id_blog}}"><span>Read More</span></a>
												</div>
											</div>
										</div>
									</li>
									@endforeach
							
								</ul>
							</div>
						</div>
					</div>
				</div> -->
				<!-- /NEWS -->

		<div class="arlo_tm_section" id="contact" style="margin-top: 60px">
          <div class="container">
            <div class="arlo_tm_title_holder contact">
              <h3>Contact Me</h3>
              <span>Get in touch with me</span>
            </div>
          </div>
          <div class="arlo_tm_footer_contact_wrapper_all">
            <div class="arlo_tm_contact_wrap_all">
              <div class="container">
                <div class="leftbox">
                  <div class="arlo_tm_mini_title_holder contact">
                    <h4>Get in Touch</h4>
                  </div>
                  <div class="short_info_wrap">
                    <ul>
                      <li><p><label>Address:</label><span>{{$profile->address}}</span></p></li>
                      <li><p><label>Email:</label><span><a href="mailto:{{$profile->email}}">{{$profile->email}}</a></span></p></li>
                      <li><p><label>Phone:</label><span>{{$profile->phone}}</span></p></li>
                      <li><p><label>Instagram:</label><span><a href="https://instagram.com/{{$profile->instagram}}">@ {{$profile->instagram}}</a></span></p></li>
                    </ul>
                  </div>
                </div>
                <div class="rightbox">
                  <div class="arlo_tm_contact_wrap">
                    <div class="main_input_wrap">
                    	<div id="returnmessage"></div>
                      <form action="" method="post" class="" id="form_message">
                        <div class="empty_notice"><span>Please Fill Required Fields</span></div>
                        <div class="wrap">
		                  <input type = "hidden" name = "_token" value = "<?php echo csrf_token() ?>">
                          <input id="name" type="text" placeholder="Your Name" name="form[name]">
                        </div>
                        <div class="wrap">
                          <input id="email" type="email" placeholder="Your Email" name="form[email]">
                        </div>
                        <div class="wrap">
                          <textarea id="message" placeholder="Your Message" name="form[messages]"></textarea>
                        </div>
                        <div class="arlo_tm_button">
                          <a id="send_message"  onclick="send_message()" style="cursor: pointer"><span>Send Message</span></a>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
<script type="text/javascript">
function send_message(){
   dataString = $("#form_message").serialize();
   var url1 ="/send_message";
   var name = $('#name').val();
   var email = $('#email').val();
   if(name==''){
	  $('#returnmessage').html('<div class="alert alert-danger alert-dismissable"><strong>Failed!</strong> Name is empty</div>');
   }else if(email==''){
	  $('#returnmessage').html('<div class="alert alert-danger alert-dismissable"><strong>Failed!</strong> Email is empty</div>');

   }else{
  $.ajax({
    url : url1,
    type : 'POST',
    data : dataString,
    beforeSend: function() {
         $('#send_message').html('Waiting');
    },
    success : function(data) {
      	console.log(data);
       	var objTo = document.getElementById('returnmessage');
    	var divtest = document.createElement("div");

	    if(data=='success'){
			divtest.innerHTML = '<div class="alert alert-success alert-dismissable"><strong>Success!</strong> Your message has been received, We will contact you soon.</div>';
	    }else{
			divtest.innerHTML = '<div class="alert alert-danger alert-dismissable"><strong>Failed!</strong> Please try again</div>';
	    }
	    $('#returnmessage').html(divtest);
	    $('#name').val('');
	    $('#email').val('');
	    $('#message').val('');
    },
    error: function(xhr) { // if error occured
	  $('#returnmessage').html('<div class="alert alert-danger alert-dismissable"><strong>Failed!</strong> Error occured.please try again</div>');

    },
    complete: function() {
         $('#send_message').html('Send Again');
    },
  });
   return false;
	}
};
</script>
@endsection
