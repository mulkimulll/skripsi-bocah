<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!------ Include the above in your HEAD tag ---------->

  <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
    integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <style>
    body {
      padding-top: 4.2rem;
      padding-bottom: 4.2rem;
      background: rgba(0, 0, 0, 0.76);
    }

    a {
      text-decoration: none !important;
    }

    h1,
    h2,
    h3 {
      font-family: 'Kaushan Script', cursive;
    }

    .myform {
      position: relative;
      display: -ms-flexbox;
      display: flex;
      padding: 1rem;
      -ms-flex-direction: column;
      flex-direction: column;
      width: 100%;
      pointer-events: auto;
      background-color: #fff;
      background-clip: padding-box;
      border: 1px solid rgba(0, 0, 0, .2);
      border-radius: 1.1rem;
      outline: 0;
      max-width: 500px;
    }

    .tx-tfm {
      text-transform: uppercase;
    }

    .mybtn {
      border-radius: 50px;
    }

    .login-or {
      position: relative;
      color: #aaa;
      margin-top: 10px;
      margin-bottom: 10px;
      padding-top: 10px;
      padding-bottom: 10px;
    }

    .span-or {
      display: block;
      position: absolute;
      left: 50%;
      top: -2px;
      margin-left: -25px;
      background-color: #fff;
      width: 50px;
      text-align: center;
    }

    .hr-or {
      height: 1px;
      margin-top: 0px !important;
      margin-bottom: 0px !important;
    }

    .google {
      color: #666;
      width: 100%;
      height: 40px;
      text-align: center;
      outline: none;
      border: 1px solid lightgrey;
    }

    form .error {
      color: #ff0000;
    }

    #second {
      display: none;
    }
  </style>
</head>

<body style="background-image: url(../assets/image/back.jpeg)">
  <div class="container">
    <div class="row">
      <div class="col-md-5 mx-auto">
        <div id="first">
          <div class="myform form" style="background-color: rgba(255, 255, 255, 0.5);">
            <div class="logo mb-3">
              <div class="col-md-12 text-center">
                <h1>Login</h1>
              </div>
            </div>
            <form method="post" action="koneksi/proses.php?id=login">
              <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="user" class="form-control" id="username" aria-describedby="emailHelp"
                  placeholder="masukkan username">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Password</label>
                <input type="password" name="pass" id="password" class="form-control" aria-describedby="emailHelp"
                  placeholder="masukkan password">
              </div>
              <div class="col-md-12 text-center ">
                <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
              </div>
              <div class="col-md-12 ">
                <div class="login-or">
                  <hr class="hr-or">
                  <span class="span-or">atau</span>
                </div>
              </div>
              <div class="form-group">
                <p class="text-center"><a href="daftar.php" id="signup">Daftar</a></p>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>

</body>

</html>