<!DOCTYPE html>
    <html>
    <head>
    <style>
    .button {
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    transition-duration: 0.4s;
    cursor: pointer;
    }

    .button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
    }

    .button1:hover {
    background-color: #4CAF50;
    color: white;
    }

    .button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
    }

    .button2:hover {
    background-color: #008CBA;
    color: white;
    }

    </style>
    </head>
    <body>
<center>
    <h1>ABOUT US</h1>
</center>
   <!-- <p>Use the :hover selector to change the style of the button when you move the mouse over it.</p>
    <p><strong>Tip:</strong> Use the transition-duration property to determine the speed of the "hover" effect:</p>

    <button class="button button1">Green</button>
    <button class="button button2">Blue</button>-->

</body>
</html>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>Admin Login | Online Quiz System</title>
		<link rel="stylesheet" href="css/form.css">
        <style type="text/css">
            body {
                    font-family: Arial, Helvetica, sans-serif;
                    margin: 0;
                    }

                    html {
                    box-sizing: border-box;
                    }

                    *, *:before, *:after {
                    box-sizing: inherit;
                    }

                    .column {
                    float: left;
                    width: 33.3%;
                    margin-bottom: 16px;
                    padding: 0 8px;
                    }

                    .card {
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                    margin: 8px;
                    }

                    .about-section {
                    padding: 50px;
                    text-align: center;
                    background-color: #474e5d;
                    color: white;
                    }

                    .container {
                    padding: 0 16px;
                    }

                    .container::after, .row::after {
                    content: "";
                    clear: both;
                    display: table;
                    }

                    .title {
                    color: grey;
                    }

                    .button {
                    border: none;
                    outline: 0;
                    display: inline-block;
                    padding: 8px;
                    color: white;
                    background-color: #000;
                    text-align: center;
                    cursor: pointer;
                    width: 100%;
                    }

                    .button:hover {
                    background-color: #555;
                    }

                    @media screen and (max-width: 650px) {
                    .column {
                        width: 100%;
                        display: block;
                    }
                    }
          </style>
	</head>

	<body>
   
        <div class="about-section">
       
        <h5><p style="text-align:center">Tamanna is an online quiz platform enabling Senior School students to give Aptitude tests on the basis of which their associates  can know about the aptitude of students of classes 9 and 10.
         This test has no pass or fail criteria in order to restrain from labeling weaknesses and is solely meant to identify the capabilities of an individual giving the test.

            This test has various sections designed with the motive of testing multiple dimensions of application of the test takers. Evaluation is done by generating sten scores derived from marks secured by the students in various sections of the quiz.
            These scores offer the students and their parents factual information about the student’s special abilities and application skills, facilitating them to take a joint decision regarding the career paths that can be undertaken and educational/vocational choices that can be made.
            Students, teachers and parents must keep in mind that the aptitude test provides information related to the strengths of students and not demean them by pointing at their weaknesses. The test should be taken voluntarily by interested students and must not be used to impose any subject, courses of study and/or vocations etc. on the students.</h5></p>
        </div>

        <h2 style="text-align:center">OUR TEAM</h2>
        <div class="row">
        <div class="column">
            <div class="card">
            <img src="image/kanika2.jpeg" alt="Jane" style="width:100%">
            <div class="container">
            <h2>Kanika Kanojia</h2>
                <p class="title">Student</p>
                <p>Kanika is a B.Tech student pursuing her degree in CSAI
                from IGDTUW. Her consistent effort has made the successful
                completion of this project possible.</p>
                <p><button class="button" onclick="alert(' Contact me on kanikakj07@gmail.com')">Contact</button></p>
            </div>
            </div>
        </div>

        <div class="column">
            <div class="card">
            <img src="image/supraja.png" alt="Mike" style="width:100%">
            <div class="container">
            <h2>Supraja K Kumar</h2>
                <p class="title">Student</p>
                <p>Supraja is a B.Tech student pursuing her degree in CSAI
                from IGDTUW. Her contributions to this project have 
                been crucial.</p>
                <p><button class="button" onclick="alert(' Contact me on kkumarsupraja@gmail.com')">Contact</button></p>
            </div>
            </div>
        </div>

        <div class="column">
            <div class="card">
            <img src="image/sia.jpeg" alt="John" style="width:100%">
            <div class="container">
            <h2>Sia Gupta</h2>
                <p class="title">Student</p>
                <p>Sia is a B.Tech student pursuing her degree in CSAI
                from IGDTUW. She has played a significant role in 
                bringing about upgradations in this project.</p>
                <p><button class="button" onclick="alert(' Contact me on siagupta@gmail.com')">Contact</button></p>
            </div>
            </div>
        </div>
        <center>
            <a href="index.php" class="button button1" onclick="alert(' You want to go back ? ')">Go Back</a>
        </center>
        </div>
    </body>
</html>