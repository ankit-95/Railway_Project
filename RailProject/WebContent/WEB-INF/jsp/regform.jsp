<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
	<link href="${pageContext.request.contextPath}/resources/bootstrap.min.css" rel="stylesheet" type="text/css" />
    	<link href="${pageContext.request.contextPath}/resources/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    	<link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
<div class="container">
<div class="col-lg-9">
          <br>
 <br>

  <form:form class="form-horizontal" action="empreg" commandName="empuser" method="post"  id="reg_form" name="reg_form" autocomplete="off">
    <fieldset>
      
      <!-- Form Name -->
      <legend> Personal Information </legend>
    
      <!-- Text input-->
      
      <div class="form-group">
        <label class="col-md-4 control-label">First Name</label>
        <div class="col-md-6  inputGroupContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input path="first_name" id="first_name" placeholder="First Name" cssClass="form-control"/>
          </div>
        </div>
      </div>
      
      <!-- Text input-->
      
      <div class="form-group">
        <label class="col-md-4 control-label" >Last Name</label>
        <div class="col-md-6  inputGroupContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <form:input path="last_name" id="last_name" placeholder="Last Name" class="form-control"  type="text"/>
          </div>
        </div>
      </div>
      
    
      <!-- Text input-->
      
      <div class="form-group">
        <label class="col-md-4 control-label">Phone #</label>
        <div class="col-md-6  inputGroupContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
            <form:input path="phone"  id="phone" placeholder="+91-" class="form-control" type="number"/>
          </div>
        </div>
      </div>

      
      <!-- Text input-->
      
      <div class="form-group">
        <label class="col-md-4 control-label">Address</label>
        <div class="col-md-6  inputGroupContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
            <form:input path="address" placeholder="Address" class="form-control" type="text"/>
          </div>
        </div>
      </div>
      
      <!-- Text input-->
      
      <div class="form-group">
        <label class="col-md-4 control-label">City</label>
        <div class="col-md-6  inputGroupContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
            <form:input path="city" placeholder="city" class="form-control"  type="text"/>
          </div>
        </div>
      </div>
      
      <!-- Select Basic -->
      
      <div class="form-group">
        <label class="col-md-4 control-label">State</label>
        <div class="col-md-6 selectContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
            <form:select path="state" class="form-control selectpicker" >
              <form:option value=" " >Please select your state</form:option>
              <form:option value=" ">Andhra Pradesh</form:option>
              <form:option value=" ">Arunachal Pradesh</form:option>
              <form:option value=" ">Assam</form:option>
              <form:option value=" ">Bihar</form:option>
              <form:option value=" ">Chhattisgarh</form:option>
              <form:option value=" ">Goa</form:option>
              <form:option value=" ">Gujarat</form:option>
              <form:option value=" ">Haryana</form:option>
              <form:option value=" ">Himachal Pradesh </form:option>
              <form:option value=" "> Jammu and Kashmir</form:option>
              <form:option value=" ">Jharkhand</form:option>
              <form:option value=" ">Karnataka</form:option>
              <form:option value=" ">Kerala</form:option>
              <form:option value=" ">Madhya Pradesh</form:option>
              <form:option value=" ">Maharashtra</form:option>
              <form:option value=" ">Manipur</form:option>
              <form:option value=" "> Meghalaya</form:option>
              <form:option value=" ">Mizoram</form:option>
              <form:option value=" ">Nagaland</form:option>
              <form:option value=" ">Odisha</form:option>
              <form:option value=" ">Punjab</form:option>
              <form:option value=" "> Rajasthan</form:option>
              <form:option value=" ">Sikkim</form:option>
              <form:option value=" ">Tamil Nadu</form:option>
              <form:option value=" ">Telangana</form:option>
              <form:option value=" ">Tripura</form:option>
              <form:option value=" ">Uttarakhand </form:option>
              <form:option value=" ">Uttar Pradesh</form:option>
              <form:option value=" ">West Bengal</form:option>
             </form:select>
          </div>
        </div>
      </div>
        
        <!-- Text area -->
      
      <div class="form-group">
        <label class="col-md-4 control-label">About </label>
        <div class="col-md-6  inputGroupContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
            <form:textarea class="form-control" path="comment" placeholder="About "></form:textarea>
          </div>
        </div>
      </div>
      
       </fieldset>
        <legend> Account information </legend>
        <fieldset>
        <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label">E-Mail</label>
        <div class="col-md-6  inputGroupContainer">
          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
            <form:input path="email" placeholder="E-Mail Address" class="form-control"  type="text"/>
          </div>
        </div>
      </div>
      
    
        <div class="form-group has-feedback">
            <label for="password"  class="col-md-4 control-label">
                    Password
                </label>
                <div class="col-md-6  inputGroupContainer">
                <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
            <form:input class="form-control" id="userPw" type="password" placeholder="password" 
                       path="password" data-minLength="5"
                       data-error="some error"/>
                <span class="glyphicon form-control-feedback"></span>
                <span class="help-block with-errors"></span>
                </div>
             </div>
        </div>
     
        <div class="form-group has-feedback">
            <label for="confirmPassword"  class="col-md-4 control-label">
                   Confirm Password
                </label>
                 <div class="col-md-6  inputGroupContainer">
                <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
            <form:input class="form-control {$borderColor}" id="userPw2" type="password" placeholder="Confirm password" 
                       path="confirmPassword" data-match="#confirmPassword" data-minLength="5"
                       data-match-error="some error 2"/>
                <span class="glyphicon form-control-feedback"></span>
                <span class="help-block with-errors"></span>
             </div>
             </div>
        </div>

        <div class="form-group">
        <div class="col-xs-6 col-xs-offset-3">
            <div class="checkbox">
                <label>
                    <input type="checkbox" name="agree" value="agree"
                        data-fv-notempty="true"
                        data-fv-notempty-message="You must agree with the terms and conditions" /> Agree with the terms and conditions
                </label>
            </div>
        </div>
    </div>
     
  
      <!-- Button -->
      <div class="form-group">
        <label class="col-md-4 control-label"></label>
        <div class="col-md-4">
          <button type="submit" class="btn btn-warning" >Send <span class="glyphicon glyphicon-send"></span></button>
        </div>
      </div>
    </fieldset>
  </form:form>
</div>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>


<script type="text/javascript">
 
   $(document).ready(function() {
    $('#reg_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },

        fields: {
            first_name: {
                validators: {
                        stringLength: {
                        min: 3,
                        max: 15,
                        message: 'Firstname must be 3-15 length '
                    },
                        notEmpty: {
                        message: 'Please supply your first name'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z]+$/,
                        message: 'The name can only consist of alphabetical'
                    }

                }
            },
   last_name: {
                validators: {
                        stringLength: {
                        min: 3,
                        max: 15,
                        message: 'Lastname must be 3-15 length '
                    },
                        notEmpty: {
                        message: 'Please supply your first name'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z]+$/,
                        message: 'The name can only consist of alphabetical'
                    }
                }
            },
           
  phone: {
                validators: {
                   stringLength: {
                        min: 10,
                        max: 10,
                        message: 'phone number must be of length 10'
                    },
                    notEmpty: {
                        message: 'Please supply your phone number'
                    },
                     regexp: {
                        regexp: /^[7-9]+[2-8]+[0-9]+$/,
                        message: 'verify the number'
                    }
                    
                }
            },
   address: {
                validators: {
                     stringLength: {
                        min: 8,
                    },
                    notEmpty: {
                        message: 'Please supply your street address'
                    },
                     regexp: {
                        regexp: /^[a-zA-Z0-9-\,\/]+$/,
                        message: 'The address can only consist of alphabetical, number, dot, comma and frontslash'
                    }
                }
            },
   city: {
                validators: {
                     stringLength: {
                        min: 4,
                    },
                    notEmpty: {
                        message: 'Please supply your city'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z]+$/,
                        message: 'The city can only consist of alphabetical'
                    }

                }
            },
    /*state: {
               validators: {
                    notEmpty: {
                        message: 'Please select your state'
                    }
                }
            },
   
       */   
    comment: {
                validators: {
                      stringLength: {
                        min: 10,
                        max: 200,
                        message:'Please enter at least 10 characters and no more than 200'
                    },
                    notEmpty: {
                        message: 'Please supply a description about yourself'
                      },
                      regexp: {
                        regexp: /^[a-zA-Z]+$/,
                        message: 'Please enter alphabetical letters onlys'
                    }
                    }
                 }, 
   email: {
                validators: {
                  stringLength: {
                        min: 16,
                        max: 27,
                        
                        //message:'Please enter at least 16 characters and no more than 200'
                    },
                    notEmpty: {
                        message: 'Please supply your email address'
                    },
                    emailAddress: {
                       message: 'Please supply a <em>valid</em> email address'
                    },
                    regexp: {
                        regexp: /^[a-z]+[a-z]+[a-zA-Z0-9_\,]/,
                        message: 'The email cannot exist'
                    }
                }
            },
          
  password: {
           
            validators: {
                identical: {
                    field: 'confirmPassword',
                   // message: 'Confirm your password below - type same password please'
                },
                different: {
                        field: 'first_name',
                        message: 'The password cannot be the same as name'
                    }
            }
        },
   confirmPassword: {
            validators: {
                identical: {
                    field: 'password',
                    message: 'The password and its confirm are not the same'
                }
            }
         },
    agree: {
                validators: {
                    notEmpty: {
                        message: 'You must agree with the terms and conditions'
                    }
                }
            }
      
            
     }
        })

   .on('change', '[name="countrySelectBox"]', function(e) {
            $('#reg_form').bootstrapValidator('revalidateField', 'zip');
        });
});
 </script>

</body>
</html>
