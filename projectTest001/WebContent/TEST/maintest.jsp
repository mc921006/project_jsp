<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<link href="maintest.css" rel = "stylesheet">
<!------ Include the above in your HEAD tag ---------->

<div class="container-fluid" style="margin-top:20px;">
<h1 style="text-align:center;color:hotpink;">Portfolio Gallery Filter</h1><br>
<div class="row">


<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="showall-tab" data-toggle="pill" href="#showall" role="tab" aria-controls="showall" aria-selected="true">Show All</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="Cars-tab" data-toggle="pill" href="#Cars" role="tab" aria-controls="Cars" aria-selected="false">Cars</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="City-tab" data-toggle="pill" href="#City" role="tab" aria-controls="City" aria-selected="false">City</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="Forest-tab" data-toggle="pill" href="#Forest" role="tab" aria-controls="Forest" aria-selected="false">Forest</a>
  </li>
</ul>
</div><hr noshade style="margin-top:-20px;">
<div class="container">
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="showall" role="tabpanel" aria-labelledby="showall-tab">
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">Car 1</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">City 1</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">Car 2</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">Forest 1</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">Forest 2</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">City 2</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">Car 3</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">City 3</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">Forest 3</div></div>
    
  </div>
  <div class="tab-pane fade" id="Cars" role="tabpanel" aria-labelledby="Cars-tab">
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">Car 1</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">Car 2</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">Car 3</div></div>
  </div>
  <div class="tab-pane fade" id="City" role="tabpanel" aria-labelledby="City-tab">
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">City 1</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">City 2</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">City 3</div></div>
  </div>
  <div class="tab-pane fade" id="Forest" role="tabpanel" aria-labelledby="Forest-tab">
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">Forest 1</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">Forest 2</div></div>
    <div class="Portfolio"><a href="#!"><img class="card-img" src="http://placehold.it/400x400" alt=""></a><div class="desc">Forest 3</div></div>
  </div>
</div>
</div>

</div>

