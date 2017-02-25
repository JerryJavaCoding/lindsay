<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>fRegister</title>
</head>



<body style="background-color:#D9F0EF;">
<h1>Foreigner's Registion
<form class="form-horizontal">

  <div class="form-group">
    <label for="inputfname" class="col-sm-2 control-label">Username</label>
    <div class="col-sm-10">
      <input type="fname" class="form-control" id="fname" placeholder="fname">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputfpwd" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="fpwd" class="form-control" id="fpwd" placeholder="fpwd">
    </div>
  </div>
  
   <div class="form-group">
    <label for="inputfpassportid" class="col-sm-2 control-label">Passport ID.</label>
    <div class="col-sm-10">
      <input type="fpassportid" class="form-control" id="fpassportid" placeholder="fpassportid">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputfsex" class="col-sm-2 control-label">Gender</label>
    <div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
   Female 
  </label>
  <input type="radio" name="optionsRadios1" id="optionsRadios2" value="option2" checked>
   Male
   </div>
   </div>
   
   <div class="form-group">
    <label for="inputfage" class="col-sm-2 control-label">Age</label>
    <div class="col-sm-10">
      <input type="fage" class="form-control" id="fage" placeholder="fage">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputfcountry" class="col-sm-2 control-label">Country</label>
    <div class="col-sm-10">
      <input type="fcountry" class="form-control" id="fcountry" placeholder="fcountry">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputftel" class="col-sm-2 control-label">Tel.</label>
    <div class="col-sm-10">
      <input type="ftel" class="form-control" id="ftel" placeholder="ftel">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputfemail" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="femail" class="form-control" id="femail" placeholder="femail">
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