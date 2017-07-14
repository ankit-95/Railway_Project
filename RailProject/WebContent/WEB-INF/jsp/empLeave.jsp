<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="en">
<!--<![ENDif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Leave Form</title>
<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="screen" href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">-->
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

<link href="${pageContext.request.contextPath}/resources/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
<style type="text/css">
   body { background: bisque !important; } /* Adding !important forces the browser to overwrite the default style applied by Bootstrap */
   h1{
    padding-left: 40%;
    color: darkred;
   }
</style>

</head>
  <body>
  <div class="container">
<div class="col-lg-9">
  <center>
<h1><b>Leave Module</b></h1>
</center>

<br><br>
    <form class="form-horizontal" action=" " method="post"  id="leave_module">
    <fieldset>

<legend> Fill up the following form </legend>

      
       <div class="form-group">
        <label class="col-md-4 control-label"><b>Type of leave</b></label>
        <div class="col-md-6 selectContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
            <select name="leave" class="form-control selectpicker" >
              <option value=" ">Select the type of leave</option>
              <option>sick leave</option>
              <option>Family Responsibility Leave</option>
              <option >Leave for religious holidays</option>
              <option >Maternity Leave.</option>
              <option >Study Leave</option>
      
      </select>
      </div>
      </div>
      </div>

<!--<legend> Starting Date</legend>-->



<div class="form-group">
    <div id="datetimepicker" class="input-append date">
    <label class="col-md-4 control-label"><b>Starting Date</b></label>
      <div class="col-md-6 selectContainer">
      <input type="text" class="form-control"  name="start" />
      <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
      </span>
    

      </div>
    </div>

    <script type="text/javascript"
     src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js">
    </script> 
    <script type="text/javascript"
     src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js">
    </script>
    <script type="text/javascript"
     src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js">
    </script>
    <script type="text/javascript"
     src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.pt-IN.js">
    </script>
    
    <script type="text/javascript">
      $('#datetimepicker').datetimepicker({
        format: 'dd/MM/yyyy',
        language: 'pt-IN',
        autoclose: true,
      });
      var currentDate = new Date();
      $("#datetimepicker").datetimepicker("setDate",currentDate);
      
      </script>



    </div>

 <!--<legend> Ending Date</legend>-->


<div class="form-group">
    <div id="datetimepicker1" class="input-append date">

    <label class="col-md-4 control-label"><b>Ending Date</b></label>
      <div class="col-md-6 selectContainer">
      <input type="text" class="form-control" name="end"></input>
      <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
      </span>

      </div>
      </div>
    
   <script type="text/javascript"
     src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js">
    </script> 
    <script type="text/javascript"
     src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js">
    </script>
    <script type="text/javascript"
     src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js">
    </script>
    <script type="text/javascript"
     src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.pt-IN.js">
    </script>
    <script type="text/javascript">
      $('#datetimepicker1').datetimepicker({
        format: 'dd/MM/yyyy',
        language: 'pt-IN',
        autoclose: true,
        
      });
    </script>

</div>
    <div class="form-group">
        <label class="col-md-4 control-label">Reason </label>
        <div class="col-md-6  inputGroupContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
            <textarea class="form-control" name="comment" placeholder="About "></textarea>
          </div>
        </div>
      </div>

 <div class="form-group">
        <label class="col-md-4 control-label"><b>Project working On</b></label>
        <div class="col-md-6 selectContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
            <select name="project" class="form-control selectpicker" >
              <option value=" ">Project working On</option>
              <option>Construction projects</option>
              <option>Research projects</option>
              <option>Reengineering projects</option>
              <option>Procurement projects</option>
              <option>Business implementation projects</option>
      
      </select>
      </div>
      </div>
      </div>



      <div class="form-group">
        <label class="col-md-4 control-label"><b>Project Manager</b></label>
        <div class="col-md-6 selectContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
            <select name="pm" class="form-control selectpicker" >
              <option value=" ">Project Manager</option>
              <option>Mr A.K. Singh</option>
              <option>Mr MAHESH KUMAR</option>
              <option>Mr JAG PAL SINGH </option>
              <option>Mr DEV KARAN </option>
              <option>Mr ANIL KUMAR</option>
      
      </select>
      </div>
      </div>
      </div>


<div class="form-group">
<label class="col-md-4 control-label"></label>
        <div class="col-md-6 selectContainer">
            <button type="submit" class="btn btn-warning">Validate</button>
        </div>
    </div>

    </fieldset>
    <br>
    <br>

<fieldset>
  <legend>Your Record</legend>
 <div class="table-responsive">
    <table class="table table-bordered table-striped table-highlight">
      <thead>
        <th>No. of Leaves Taken</th>
        <th>Starting Date</th>
        <th>Ending Date</th>
        <th>Type of leave</th>
        <th>Reason</th>
        <th>Project Working On</th>
        <th>Project Manager</th>
      </thead>
      
      <tbody>
        <tr>
          <td><input type="number" class="form-control" value="number" /></td>
          <td><input type="text" class="form-control" value="13-Jul-2015" /></td>
          <td><input type="text" class="form-control" value="17-Jul-2015" /></td>
          <td><input type="text" class="form-control" value="Type" /></td>
          <td><input type="text" class="form-control" value="Reason" /></td>
          <td><input type="text" class="form-control" value="Project" /></td>
          <td><input type="text" class="form-control" value="Project Manager" /></td>
        </tr>
      </tbody>
    </table>
  </div>


</fieldset>

    </form>
</div>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>

<script type="text/javascript">
 
   $(document).ready(function() {
    $('#leave_module').bootstrapValidator({
    
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
         fields: {
           leave: {
               validators: {
                    notEmpty: {
                        message: 'Please select your leave'
                    }
                }
            },
 start: {
               validators: {
                    notEmpty: {
                        message: 'Please fill your start date'
                    },
                }
            },
 end: {
               validators: {
                    notEmpty: {
                        message: 'Please fill your end date'
                    },
                }
            },
 comment: {
               validators: {
                    notEmpty: {
                        message: 'empty box could not be accepted'
                    }
                }
            },
 project: {
               validators: {
                    notEmpty: {
                        message: 'Please select your project'
                    }
                }
            },
 pm: {
               validators: {
                    notEmpty: {
                        message: 'Please select your corresponding Project Manager'
                    }
                }
            },
         }
})
});
 </script>
  </body>
<html>
