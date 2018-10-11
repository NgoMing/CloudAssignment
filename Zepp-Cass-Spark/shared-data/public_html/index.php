<?php
    // enable php debug
    error_reporting(-1);
    ini_set('display_errors', 'On');
?>

<html>
    <head>
        <title>Educational Programming</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
        .fakeimg {
            height: 200px;
            background: #aaa;
        }
        </style>
    </head>
    <body>
        <div class="jumbotron text-center" style="margin-bottom:0">
          <h1>Educational Programming</h1>
        </div>

        <nav class="navbar navbar-inverse">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
              </button>
              <a class="navbar-brand" href="#">Studying</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Login</a></li>
                <li><a href="#">Sign up</a></li>
              </ul>
            </div>
          </div>
        </nav>

        <?php
            // Connect to the cluster and keyspace
            $cluster = Cassandra::cluster()
                ->withContactPoints('cassandra') // cassandra address 
                ->withPort(9042)
                ->build();
            $keyspace = 'cass_db'; // keyspace
            $session = $cluster->connect($keyspace);

            // Write a row to database
            $statement = $session->execute(new Cassandra\SimpleStatement(
                "insert into sales_join_price (student_name,course_name,date,rate,price) 
                values ('Minhnln','C Programming','2018-03-22',2,126.89);"));

            // Read datas from database
            $statement = new Cassandra\SimpleStatement(
                "SELECT * FROM sales_join_price WHERE student_name = 'Minhnln'" // cql sentence
            );
            $future = $session->executeAsync($statement); // fully asynchronous and easy parallel execution
            $result = $future->get(); // wait for the result, with an optional timeout

            echo "<table>";
            foreach ($result as $row) { // results and rows implement Iterator, Countable and ArrayAccess
                    echo "<tr><td>" . implode("|",$row)  .  "</td></tr>";
            }
            echo "</table>";
        ?>

        <div class="container">
          <div class="row">
            <div class="col-sm-8">
              <h2>About Me</h2>
              <h5>Photo of me:</h5>
              <div class="fakeimg">Fake Image</div>
              <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
              <h3>Some Links</h3>
              <p>Lorem ipsum dolor sit ame.</p>
              <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#">Link 1</a></li>
                <li><a href="#">Link 2</a></li>
                <li><a href="#">Link 3</a></li>
              </ul>
              <hr class="hidden-sm hidden-md hidden-lg">
            </div>
            <div class="col-sm-8">
              <h2>TITLE HEADING</h2>
              <h5>Title description, Dec 7, 2017</h5>
              <div class="fakeimg">Fake Image</div>
              <p>Some text..</p>
              <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
              <br>
              <h2>TITLE HEADING</h2>
              <h5>Title description, Sep 2, 2017</h5>
              <div class="fakeimg">Fake Image</div>
              <p>Some text..</p>
              <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
            </div>
          </div>
        </div>

        <div class="jumbotron text-center" style="margin-bottom:0">
          <p>Footer</p>
        </div>
    </body>
</html>
