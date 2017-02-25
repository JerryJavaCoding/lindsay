<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>order订单发布时的界面</title>
</head>
<body style="background-color:#D9F0EF;">
<h1>Order
<form class="form-horizontal">

  <div class="form-group">
    <label for="inputdate" class="col-sm-2 control-label">Date</label>
    <div class="col-sm-10">
      <input type="date" class="form-control" id="date" placeholder="date">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputwork" class="col-sm-2 control-label">Work</label>
    <div class="col-sm-10">
      <input type="work" class="form-control" id="work" placeholder="work">
    </div>
  </div>
  
   <div class="form-group">
    <label for="inputdescription" class="col-sm-2 control-label">Description</label>
    <div class="col-sm-10">
      <input type="description" class="form-control" id="description" placeholder="description">
    </div>
  </div>
   
   <div class="form-group">
    <label for="inputrequest" class="col-sm-2 control-label">Request</label>
    <div class="col-sm-10">
      <input type="request" class="form-control" id="request" placeholder="request">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputlanguage" class="col-sm-2 control-label">Language</label>
    <div class="col-sm-10">
      <input type="language" class="form-control" id="language" placeholder="language">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputsalary" class="col-sm-2 control-label">Salary</label>
    <div class="col-sm-10">
      <input type="salary" class="form-control" id="salary" placeholder="salary">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputstatus" class="col-sm-2 control-label">Status</label>
    <div class="col-sm-10">
      <input type="status" class="form-control" id="status" placeholder="status">
    </div>
  </div>
   <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
<body>
</body>
</html>