<?php
    // enable php debug
    error_reporting(-1);
    ini_set('display_errors', 'On');
?>

<html>
    <head>
        <title>Cloud computing Prac 8</title>
    </head>
    <body>
        <h1>
            <?php
                echo "Sales order information\n";
            ?>
        </h1>

        <?php
            $cluster = Cassandra::cluster()
                ->withContactPoints('cassandra') // cassandra address 
                ->withPort(9042)
                ->build();
            $keyspace = 'cass_db'; // keyspace
            $session = $cluster->connect($keyspace);
            $statement = new Cassandra\SimpleStatement(
                "SELECT * FROM sales_order WHERE student_name = 'Ruben Torres'" // cql sentence
            );
            $future = $session->executeAsync($statement); // fully asynchronous and easy parallel execution
            $result = $future->get(); // wait for the result, with an optional timeout

            echo "<table>";
            foreach ($result as $row) { // results and rows implement Iterator, Countable and ArrayAccess
                    echo "<tr><td>" . implode("|",$row)  .  "</td></tr>";
            }
            echo "</table>";
        ?>
    </body>
</html>
