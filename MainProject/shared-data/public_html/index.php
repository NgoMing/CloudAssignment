<?php
    // enable php debug
    error_reporting(-1);
    ini_set('display_errors', 'On');
?>

<html>
    <head>
        <title>Educational Programming</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <!-- Add icon library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
      <header>
        <div class="jumbotron text-center" style="margin-bottom:0">
          <h1>Educational Programming</h1>
        </div>

        <ul class="nav nav-pills">
          <li class="nav-item">
            <a class="nav-link active" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Sign up</a>
          </li>
        </ul>

        <img src="images/banner.jpg" class="img-thumbnail" alt="Banner image">
      </header>

      <main class="m-2" class="p-2">

        <?php
            // Connect to the cluster and keyspace
            $cluster = Cassandra::cluster()
                ->withContactPoints('cassandra') // cassandra address 
                ->withPort(9042)
                ->build();
            $keyspace = 'cass_db'; // keyspace
            $session = $cluster->connect($keyspace);

            // Read datas from database
            $statement_course = new Cassandra\SimpleStatement(
                "SELECT * FROM course" // cql sentence
            );
            $future = $session->executeAsync($statement_course); // fully asynchronous and easy parallel execution
            $result = $future->get(); // wait for the result, with an optional timeout

            $course_rows = array();
            foreach ($result as $row) {
              $course_rows [$row["course_name"]]= $row;
            }

            // echo $course_rows["Java Programming"]["average_rate"];

            // foreach ($course_rows as $row) { // results and rows implement Iterator, Countable and ArrayAccess
            //         echo $row;
            // }

            // echo "<table>";
            // foreach ($result as $row) { // results and rows implement Iterator, Countable and ArrayAccess
            //         // echo "<tr><td>" . implode("|",$row)  .  "</td></tr>";
            //   echo implode("|",$row);
            // }
            // echo "</table>";
        ?>
        <?php
        ?>
        
        <a class="m-2" class="p-2" href="#">Popular courses</a>

        <div class="m-5" class="p-5" class="container">

            <div class="row justify-content-around">
            <!-- Java Programming  -->
              <div class="col">

                <img src="images/java.jpg" class="img-thumbnail" alt="java image">
                <h4><a href="#">Java Programming</a></h4>

                <div class="row justify-content-between">

                  <div class="col">
                    <?php
                      echo "<p>" . ($course_rows["Java Programming"]["teacher_name"]) . "</p>"
                    ?>
                  </div>

                  <div class="col">
                    <?php
                      echo "<p class='text-right' class='font-weight-bold'>" . ($course_rows["Java Programming"]["average_rate"]) . "<span class='fa fa-star checked'></span></p>"
                    ?>
                  </div>
                  
                </div>

                <div class="row justify-content-between">
                  <div class="col">
                  </div>
                  <div class="col" class="text-right">
                    <?php
                      echo "<p class='text-right'>$ " . ($course_rows["Java Programming"]["price"]) . "</p>"
                    ?>
                  </div>
                </div>
                
              </div>
            <!-- End Java Programming -->
              <div class="col-1">
              </div>
            <!-- Python Programming  -->
              <div class="col">

                <img src="images/python.jpg" class="img-thumbnail" alt="python image">
                <h4><a href="#">Python Programming</a></h4>

                <div class="row justify-content-between">

                  <div class="col">
                    <?php
                      echo "<p>" . ($course_rows["Python Programming"]["teacher_name"]) . "</p>"
                    ?>
                  </div>
                  <div class="col">
                    <?php
                      echo "<p class='text-right' class='font-weight-bold'>" . ($course_rows["Python Programming"]["average_rate"]) . "<span class='fa fa-star checked'></span></p>"
                    ?>
                  </div>
                  
                </div>

                <div class="row justify-content-between">
                  <div class="col-8">
                  </div>
                  <div class="col">
                    <?php
                      echo "<p class='text-right'>$ " . ($course_rows["Python Programming"]["price"]) . "</p>"
                    ?>
                  </div>
                </div>
                
              </div>
            <!-- End Python Programming -->
              <div class="col-1">
              </div>
            <!-- JavaScript Programming  -->
              <div class="col">

                <img src="images/javascript.jpg" class="img-thumbnail" alt="javascript image">
                <h4><a href="#">JS Programming</a></h4>

                <div class="row justify-content-between">

                  <div class="col">
                    <?php
                      echo "<p>" . ($course_rows["JavaScript Programming"]["teacher_name"]) . "</p>"
                    ?>
                  </div>
                  <div class="col">
                    <?php
                      echo "<p class='text-right' class='font-weight-bold'>" . ($course_rows["JavaScript Programming"]["average_rate"]) . "<span class='fa fa-star checked'></span></p>"
                    ?>
                  </div>
                  
                </div>

                <div class="row justify-content-between">
                  <div class="col-8">
                  </div>
                  <div class="col">
                    <?php
                      echo "<p class='text-right'>$ " . ($course_rows["JavaScript Programming"]["price"]) . "</p>"
                    ?>
                  </div>
                </div>
                
              </div>
            <!-- End JavaScript Programming -->

        </div>
      </main>

      <footer>
        <div class="jumbotron text-center" style="margin-bottom:0">

          <div class="row justify-content-start">
            <div class="col-4">
              <p class='text-left'>Follows us</p>

              <div class="row justify-content-start">
                <div class="col-2">
                  <a href="#"><img src="images/facebook.png" class="img-fluid" alt="facebook icon"></a>
                </div>
                <div class="col-2">
                  <a href="#"><img src="images/twitter.png" class="img-fluid" alt="twitter icon"></a>
                </div>
                <div class="col-2">
                  <a href="#"><img src="images/instagram.png" class="img-fluid" alt="instagram icon"></a> 
                </div>
              </div>
            
            </div>
          </div>

        </div>
      </footer>
      

      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
