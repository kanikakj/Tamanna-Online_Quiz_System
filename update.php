<?php
$j=0;
  include_once 'database.php';
  session_start();
  $email=$_SESSION['email'];

  if(isset($_SESSION['key']))
  {
    if(@$_GET['email'] )//&& $_SESSION['key']=='') 
    {
      $demail=@$_GET['email'];
      $r1 = mysqli_query($con,"DELETE FROM rank WHERE email='$demail' ") or die('Error11');
      $r2 = mysqli_query($con,"DELETE FROM history WHERE email='$demail' ") or die('Error12');
      $result = mysqli_query($con,"DELETE FROM user WHERE email='$demail' ") or die('Error13');
      header("location:dashboard.php?q=1");
    }
  }

  if(isset($_SESSION['key']))
  {
    if(@$_GET['q']== 'rmquiz' )//&& $_SESSION['key']=='') 
    {
      $eid=@$_GET['eid'];
      $result = mysqli_query($con,"SELECT * FROM questions WHERE eid='$eid' ") or die('Error23');
      while($row = mysqli_fetch_array($result)) 
      {
        $qid = $row['qid'];
        echo "<h3>'$qid'</h3>";
        $r2 = mysqli_query($con,"DELETE FROM answer WHERE qid='$qid' ") or die('Error28');
        $r1 = mysqli_query($con,"DELETE FROM options WHERE qid='$qid'") or die('Error27');
        }
        $r4 = mysqli_query($con,"DELETE FROM history WHERE eid='$eid' ") or die('Error32');
        $r3 = mysqli_query($con,"DELETE FROM questions WHERE eid='$eid' ") or die('Error30');
      $r4 = mysqli_query($con,"DELETE FROM quiz WHERE eid='$eid' ") or die('Error31');
      
      header("location:dashboard.php?q=5");
    }
  }

  if(isset($_SESSION['key']))
  {
    if(@$_GET['q']== 'addquiz' )//&& $_SESSION['key']=='') 
    {
      $name = $_POST['title'];
      $name= ucwords(strtolower($name));
      $total = $_POST['total'];
      $right_answer_score = $_POST['right_answer_score'];
      $wrong = $_POST['wrong'];
      $eid=mt_rand(2,1000);
      $q3=mysqli_query($con,"INSERT INTO quiz VALUES  ('$eid','$name' , '$right_answer_score' , '$wrong','$total', NOW())");
      header("location:dashboard.php?q=4&step=2&eid=$eid&n=$total");
    }
  }

  if(isset($_SESSION['key']))
  {
    if(@$_GET['q']== 'addqns')// && $_SESSION['key']=='suryapinky') 
    {
      $n=@$_GET['n'];
      $eid=@$_GET['eid'];
      $ch=@$_GET['ch'];
      $x=1;
      for($i=1;$i<=$n;$i++)
      {
        $qid=$x+1;
        $qns=$_POST['qns'.$i];
       // echo "<h3>'$eid','$qid,'$qns' , '$ch' , '$i'</h3>";
        //'89','2,'nameee?' , '4' , '1'
        $q3=mysqli_query($con,"INSERT INTO questions VALUES  ('$eid','','$qns' , '$ch' , '$i')") or die('question table');
        $fet = mysqli_query($con,"SELECT * FROM questions WHERE eid=$eid AND sn=$i"); 
        $row=mysqli_fetch_array($fet); 
        $qid=$row['qid'];
        $a=$_POST[$i.'1'];
        $b=$_POST[$i.'2'];
        $c=$_POST[$i.'3'];
        $d=$_POST[$i.'4'];
        
        $j=$j+100;
        $qa=mysqli_query($con,"INSERT INTO options VALUES  ('$qid','$a','')") or die('Error61');
        $qb=mysqli_query($con,"INSERT INTO options VALUES  ('$qid','$b','')") or die('Error62');
        $qc=mysqli_query($con,"INSERT INTO options VALUES  ('$qid','$c','')") or die('Error63');
        $qd=mysqli_query($con,"INSERT INTO options VALUES  ('$qid','$d','')") or die('Error64');
       
        $e=$_POST['ans'.$i];
        echo"<h1>'e= $e'</h1>";
        


          $op=mysqli_query($con,"SELECT * FROM options WHERE option='$a' and qid='$qid'");
          $row=mysqli_fetch_array($op);
          $oaid=$row['optionid'];
          echo"<h1>'a= $oaid'</h1>";
          $op=mysqli_query($con,"SELECT * FROM options WHERE option='$b' and qid='$qid'");
          $row=mysqli_fetch_array($op);
          $obid=$row['optionid'];
          echo"<h1>'b= $obid'</h1>";
          $op=mysqli_query($con,"SELECT * FROM options WHERE option='$c' and qid='$qid'");
          $row=mysqli_fetch_array($op);
          $ocid=$row['optionid'];
          echo"<h1>'c = $ocid'</h1>";
          $op=mysqli_query($con,"SELECT * FROM options WHERE option='$d' and qid='$qid'");
          $row=mysqli_fetch_array($op);
          $odid=$row['optionid'];
          echo"<h1>'odid= $odid'</h1>";
         
        switch($e)
        {
          case 'a': $ansid=$oaid; break;
          case 'b': $ansid=$obid; break;
          case 'c': $ansid=$ocid; break;
          case 'd': $ansid=$odid; break;
          default: $ansid=$oaid;
        }

        $qans=mysqli_query($con,"INSERT INTO answer VALUES  ('$qid','$ansid')");
      
      }
      header("location:dashboard.php?q=0");
    }
  }

  if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) 
  {
    $eid=@$_GET['eid'];
    $sn=@$_GET['n'];
    $total=@$_GET['t'];
    $ans=$_POST['ans'];
    $qid=@$_GET['qid'];
    echo "<h1>hiii</h1>";
    $q=mysqli_query($con,"SELECT * FROM answer WHERE qid='$qid' " );
    while($row=mysqli_fetch_array($q) )
    {  $ansid=$row['ansid']; }
    if($ans == $ansid)
    {
      $q=mysqli_query($con,"SELECT * FROM quiz WHERE eid='$eid' " );
      while($row=mysqli_fetch_array($q) )
      {
        $right_answer_score=$row['right_answer_score'];
      }
      if($sn == 1)
      {
        $q=mysqli_query($con,"INSERT INTO history VALUES('$email','$eid','0' ,'0','0','0','0',NOW())")or die('Error110');
      }
      $q=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' AND email='$email' ")or die('Error115');
      while($row=mysqli_fetch_array($q) )
      {
        $s=$row['score'];
        $r=$row['right_answer_score'];
        $sten=$row['sten_score'];   //check
      }
      $r++;
      $s=$s+$right_answer_score;
      $q=mysqli_query($con,"UPDATE `history` SET `score`=$s,`level`=$sn,`right_answer_score`=$r, date= NOW()  WHERE  email = '$email' AND eid = '$eid'")or die('Error124');
    } 
    else
    {
      $q=mysqli_query($con,"SELECT * FROM quiz WHERE eid='$eid' " )or die('Error129');
      while($row=mysqli_fetch_array($q) )
      {
        $wrong=$row['wrong'];
      }
      if($sn == 1)
      {
        $q=mysqli_query($con,"INSERT INTO history VALUES('$email','$eid','0' ,'0','0','0','0',NOW() )")or die('Error137');
      }
      $q=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' AND email='$email' " )or die('Error139');
      while($row=mysqli_fetch_array($q) )
      {
        $s=$row['score'];
        $w=$row['wrong'];
      }
      $w++;
      $s=$s-$wrong;
      $q=mysqli_query($con,"UPDATE `history` SET `score`=$s,`level`=$sn,`wrong`=$w, date=NOW() WHERE  email = '$email' AND eid = '$eid'")or die('Error147');
    }
    if($sn != $total)
    {
      $sn++;
      header("location:welcome.php?q=quiz&step=2&eid=$eid&n=$sn&t=$total")or die('Error152');
    }
    else if( $_SESSION['key']!='suryapinky')
    {
      $q=mysqli_query($con,"SELECT score FROM history WHERE eid='$eid' AND email='$email'" )or die('Error156');
      while($row=mysqli_fetch_array($q) )
      {
        $s=$row['score'];
      }
      $q=mysqli_query($con,"SELECT * FROM rank WHERE email='$email'" )or die('Error161');
      $rowcount=mysqli_num_rows($q);
      if($rowcount == 0)
      {
        $q2=mysqli_query($con,"INSERT INTO rank VALUES('$email','$s',NOW())")or die('Error165');
      }
      else
      {
        while($row=mysqli_fetch_array($q) )
        {
          $sun=$row['score'];
        }
        $sun=$s+$sun;
        $q=mysqli_query($con,"UPDATE `rank` SET `score`=$sun ,time=NOW() WHERE email= '$email'")or die('Error174');
      }
      header("location:welcome.php?q=result&eid=$eid");
    }
    else
    {
      header("location:welcome.php?q=result&eid=$eid");
    }
  }

  if(@$_GET['q']== 'quizre' && @$_GET['step']== 25 ) 
  {
    $eid=@$_GET['eid'];
    $n=@$_GET['n'];
    $t=@$_GET['t'];
    $q=mysqli_query($con,"SELECT score FROM history WHERE eid='$eid' AND email='$email'" )or die('Error156');
    while($row=mysqli_fetch_array($q) )
    {
      $s=$row['score'];
    }
    $q=mysqli_query($con,"DELETE FROM `history` WHERE eid='$eid' AND email='$email' " )or die('Error184');
    $q=mysqli_query($con,"SELECT * FROM rank WHERE email='$email'" )or die('Error161');
    while($row=mysqli_fetch_array($q) )
    {
      $sun=$row['score'];
    }
    $sun=$sun-$s;
    $q=mysqli_query($con,"UPDATE `rank` SET `score`=$sun ,time=NOW() WHERE email= '$email'")or die('Error174');
    header("location:welcome.php?q=quiz&step=2&eid=$eid&n=1&t=$t");
  }
?>



