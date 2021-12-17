<?php
        $con  = mysqli_connect("localhost","root","","tamanna quiz");
        if (!$con) 
        {
            echo "Problem in database connection! Contact administrator!" . mysqli_error();
        }
        else
        {              
                $chart_data="";                            
                $q=mysqli_query($con,"SELECT eid,score FROM history WHERE email='$email' ORDER BY date DESC " )or die('Error197');
                $c=0;
                                                            
                while($row1=mysqli_fetch_array($q) )
                {
                    $eid=$row1['eid'];
                    $sales[]=$row1['score'];   
        //          echo "<pre>";
        //          print_r($sales);
        //          echo "</pre>";  
                    $c++;
                }  
                $q=mysqli_query($con,"SELECT eid,score FROM history WHERE email='$email' ORDER BY date DESC " )or die('Error197');
                $c=0;
                                                            
                while($row1=mysqli_fetch_array($q) )
                {
                    $eid=$row1['eid'];
                    $q23=mysqli_query($con,"SELECT title FROM quiz WHERE  eid='$eid' " )or die('Error208');
            
                    while($row=mysqli_fetch_array($q23) )
                    {
                        $productname[]  = $row['title'];
                        $sales[]= $row1['score'];                                                                                                                        
                    }
                    
                    $c++;
                }
        }
 
?>


<!DOCTYPE html>
<html lang="en"> 
    <head>
    <body style="background-color:powderblue;">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Graph</title> 
    </head>
    <body>
        <div style="width:80%;hieght:30%;text-align:center">
            <h2 class="page-header" >Graphical Representation of marks scored</h2>
            <canvas  id="chartjs_bar"></canvas> 
        </div>    
    </body>
    <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
  <script type="text/javascript">
      var ctx = document.getElementById("chartjs_bar").getContext('2d');
                var myChart = new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels:<?php echo json_encode($productname); ?>,
                        datasets: [{
                            backgroundColor: [
                               "#5969ff",
                                "#ff407b",
                                "#25d5f2",
                                "#ffc750",
                                "#2ec551",
                                "#7040fa",
                                "#ff004e"
                            ],
                            data:<?php echo json_encode($sales); ?>,
                        }]
                    },
                    
                    options: {
                           legend: {
                        display: true,
                        position: '',
                        
 
                        labels: {
                            fontColor: 'blue',
                            fontFamily: 'Circular Std Book',
                            fontSize: 14,
                            title : 'Scores',
                        }
                    },
 
                    
                }
                });
            
        </script>
</html>