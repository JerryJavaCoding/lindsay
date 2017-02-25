<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>tRegister</title>
</head>
<HTML>
<body style="background-color:#D9F0EF;">
<h1>Interpreter's Registion


<form class="form-horizontal">

  <div class="form-group">
    <label for="inputtname" class="col-sm-2 control-label">Username</label>
    <div class="col-sm-10">
      <input type="tname" class="form-control" id="tname" placeholder="tname">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputtpwd" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="tpwd" class="form-control" id="tpwd" placeholder="Password">
    </div>
  </div>
  
 <div class="form-group">
    <label for="inputtidno" class="col-sm-2 control-label">IDNo.</label>
    <div class="col-sm-10">
      <input type="tidno" class="form-control" id="tidno" placeholder="tidno">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputtsex" class="col-sm-2 control-label">Gender</label>
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
    <label for="inputtage" class="col-sm-2 control-label">Age</label>
    <div class="col-sm-10">
      <input type="tage" class="form-control" id="tage" placeholder="tage">
    </div>
  </div>
   
   <div class="form-group">
    <label for="inputtel" class="col-sm-2 control-label">Tel.</label>
    <div class="col-sm-10">
      <input type="tel" class="form-control" id="tel" placeholder="tel">
    </div>
  </div>
  
   <div class="form-group">
    <label for="inputtemail" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="temail" class="form-control" id="temail" placeholder="tmail">
    </div>
  </div>
 
 <div class="form-group">
    <label for="inputtlanguage" class="col-sm-2 control-label">Language</label>
    <div class="col-sm-10">
      <input type="tlanguage" class="form-control" id="tlanguage" placeholder="tlanguage">
    </div>
  </div>
  
   <div class="form-group">
    <label for="inputcname" class="col-sm-2 control-label">Certificate Name</label>
    <div class="col-sm-10">
      <input type="cname" class="form-control" id="cname" placeholder="cname">
    </div>
  </div>

   <div class="form-group">
    <label for="inputcpic" class="col-sm-2 control-label">Certificate Image</label>
    <div class="form-group">
    <label for="exampleInputFile">File input
    </label>
    <input type="file" id="exampleInputFile">
 </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form>
<body>

</body>
</html>