@extends('layouts.noNav')
@section('title')
  Unair Sosialisasi
@endsection
@section('headerwrap')
 <h3>Sistem Informasi Sosialisasi Kampus Universitas Airlangga</h3>
   <div class="hline"></div>
     <h1>Sosialisasi Universitas Airlangga</h1>

<br>
     <div class="col-lg-4 col-lg-offset-2">

     </div>

     <div class="col-lg-4">
       <div id="portfoliowrap">
            <div class="portfolio-centered">
                <div class="recentitems portfolio">
    				<div class="portfolio-item graphic-design">
    					<div class="he-wrap tpl6">
    					<img src="assets/img/portfolio/portfolio_09.jpg" alt="">
    						<div class="he-view">
    							<div class="bg a0" data-animate="fadeIn">
                                    <h3 class="a1" data-animate="fadeInDown">A Graphic Design Item</h3>
                                    <a data-rel="prettyPhoto" href="{{ asset('img/portfolio/portfolio_09.jpg') }}" class="dmbutton a2" data-animate="fadeInUp"><i class="fa fa-search"></i></a>
                                    <a href="single-project.html" class="dmbutton a2" data-animate="fadeInUp"><i class="fa fa-link"></i></a>
                            	</div><!-- he bg -->
    						</div><!-- he view -->
    					</div><!-- he wrap -->
    				</div><!-- end col-12 -->

                </div><!-- portfolio -->
            </div><!-- portfolio container -->
    	 </div><!--/Portfoliowrap -->
     </div>
@endsection
@section('content')



@endsection
