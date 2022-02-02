<?php  

  session_start();
  if(!isset($_SESSION['Cin'])){
    header("Location:login_client.php");
  }  


?>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
     
    
     
      legend {
      padding: 10px;      
      font-family: Roboto, Arial, sans-serif;
      font-size: 18px;
      color: #fff;
      background-color: #1c87c9;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 8px #006622; 
      }
      .banner {
      position: relative;
      height: 250px;
      background-image: url("/uploads/media/default/0001/02/cc6bc584f236c7234947015b89151ab6d04c4cbf.jpeg");  
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.4); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      input[type="date"] {
      padding: 4px 5px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color:  #006622;
      }
      .checkbox input[type=checkbox] {
      display:inline-block;
      height:15px;
      width:15px;
      margin-right:5px;
      vertical-align:text-top;
      }
      .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 3px 0  #006622;
      color: #006622;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      .item span {
      color: red;
      }
      .week {
      display:flex;
      justify-content: space-between;
      
      }
      .colums {
      display:flex;
      justify-content:space-between;
      flex-direction:row;
      flex-wrap:wrap;
      }
      .colums div {
      width:48%;
      }
      input[type=radio], input[type=checkbox]  {
      display: none;
      }
      label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 15px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      .question-answer label {
      display: block;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      input[type=radio]:checked + label:before, label.radio:hover:before {
      border: 2px solid  #006622;
      }
      label.radio:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 5px;
      width: 8px;
      height: 4px;
      border: 3px solid  #006622;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .flax {
      display:flex;
      justify-content:space-around;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background:  #1c87c9;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background:  #0692e8;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .name-item div {
      width: calc(50% - 20px);
      }
      .name-item div input {
      width:97%;}
      .name-item div label {
      display:block;
      padding-bottom:5px;
      }
      }
    </style>
  </head>
  <body>

  <?php
      include 'nav.php';
    ?>
    <div class="testbox">
    <form>
      
      <br/>
      <fieldset>
        <legend>Service Request Form</legend>
        <div class="colums">
          <div class="item">
            <label for="fname">First Name<span>*</span></label>
            <input id="fname" type="text" name="fname" />
          </div>
          <div class="item">
            <label for="lname"> Last Name<span>*</span></label>
            <input id="lname" type="text" name="lname" />
          </div>
          <div class="item">
            <label for="address">Email Address<span>*</span></label>
            <input id="address" type="text"   name="address" />
          </div>
          <div class="item">
            <label for="phone">Phone Number</label>
            <input id="phone" type="tel"   name="phone"/>
          </div>
          <div class="item">
            <label for="saddress">Street Address</label>
            <input id="saddress" type="text"   name="city" />
          </div>
          <div class="item">
            <label for="city">City</label>
            <input id="city" type="text"   name="city" />
          </div>
          <div class="item">
            <label for="zip">Zip/Postal Code</label>
            <input id="zip" type="text"   name="zip" />
          </div>
          <div class="item">
            <label for="country">Country</label>
            <input id="country" type="text"   name="text" />
          </div>
      </fieldset>
      <br/>
      <fieldset>
      <legend>Donation Details</legend>
      <div class="colums">
      </div>
      <div class="checkbox">
      <p>May we thank you publicly?</p>
      <label><input type="checkbox"/>No, please keep my information anonymous
      </label>
      </div>
      <div class="item">
      <label for="amount">Donation Amount<span>*</span></label>
      <input id="amount" type="number"   name="amount" />
      </div>
      <div class="item">
      <label for="donation">Donation Comments</label>
      <textarea id="donation" rows="3"></textarea>
      </div>
      </fieldset>
      <div class="btn-block">
      <button type="order" href="/">Confirm Order</button>
      </div>
    </form>
    </div>

    <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
  </body>
</html>