<?php 
	include 'db.php';
	session_start(); 
	//Set Question Number
	$number = $_GET['n'];

	//Query for the Question
	$query = "SELECT * FROM questions WHERE question_number = $number";

	// Get the question
	$result = mysqli_query($connection,$query);
	$question = mysqli_fetch_assoc($result); 

	//Get Choices
	$query = "SELECT * FROM options WHERE question_number = $number";
	$choices = mysqli_query($connection,$query);
	// Get Total questions
	$query = "SELECT * FROM questions";
	$total_questions = mysqli_num_rows(mysqli_query($connection,$query));
 	
	
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>AAS</title>

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="./css/all.css">


    <!-- --------- Owl-Carousel ------------------->
    <link rel="stylesheet" href="./css/owl.carousel.min.css">
    <link rel="stylesheet" href="./css/owl.theme.default.min.css">

    <!-- ------------ AOS Library ------------------------- -->
    <link rel="stylesheet" href="./css/aos.css">

    <!-- Custom Style   -->
     <!--       <link rel="stylesheet" href="css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="./css/Style.css">

</head>

<body>

    <!-- ----------------------------  Navigation ---------------------------------------------- -->

    <nav class="nav">
        <div class="nav-menu flex-row">
            <div class="nav-brand">
                <a href="index.html" class="text-gray">AAS</a>

            </div>
            <div class="toggle-collapse">
                <div class="toggle-icons">
                    <i class="fas fa-bars"></i>
                </div>
            </div>
            <div>
                <ul class="nav-items">
                    <li class="nav-link">
                        <a href="index.html">Home</a>
                    </li>
                    <li class="nav-link">
                        <a href="#platforms">Platforms</a>
                    </li>
                    <li class="nav-link">
                        <a href="about.html">About Us</a>
                    </li>
                    <li class="nav-link">
                        <a href="sign.html">Sign Up</a>
                    </li>
                    <li class="nav-link">
                        <a href="contact/index.php">Contact Us</a>
                    </li>
                </ul>
            </div>
            <div class="social text-gray">
                <a href="http://www.facebook.com"><i class="fab fa-facebook-f"></i></a>
                <a href="http://www.instagram.com"><i class="fab fa-instagram"></i></a>
                <a href="http://www.twitter.com"><i class="fab fa-twitter"></i></a>
                <a href="http://www.youtube.com"><i class="fab fa-youtube"></i></a>
            </div>
        </div>
    </nav>

	<main>
    <section class="site-title">
            <div class="site-background" data-aos="fade-up" data-aos-delay="100">
               
                <h1>WELCOME TO AAS!</h1>
                 <h3>Aam Aadmi Seva</h3>
                  <p><h4> " जहाँ आस है, वहाँ विश्वास है "</h4></p>
                
                <img src="./assets/images/logo.png" alt="logo">
            </div>
        </section>
			<div class="container">
				<div class="current">Question <?php echo $number; ?> of <?php echo $total_questions; ?> </div>
				<p class="question"><?php echo $question['question_text']; ?> </p>
				<form method="POST" action="process.php">
					<ul class="choicess">
						<?php while($row=mysqli_fetch_assoc($choices)){ ?>
						<li><input type="radio" name="choice" value="<?php echo $row['id']; ?>"><?php echo $row['coption']; ?></li>
						<?php } ?>
						
						
					</ul>
					<input type="hidden" name="number" value="<?php echo $number; ?>">
					<input type="submit" name="submit" value="Submit">
          <br>
          <br>
          


				</form>
				

			</div>

	</main>


	<footer class="footer">
        <div class="container">
            <div class="about-us" data-aos="fade-right" data-aos-delay="200">
                <h2>Address</h2>
                <p>Meerut,250401</p>
            </div>
            
            <div class="newsletter" data-aos="fade-right" data-aos-delay="200">
                <a name="contact"></a>
                <h2>Contact details</h2>
                <p>Midhat Fatima<br>
                    Email- Id: midhatfatima711@gmail.com</p>
                 <p>Varnika Jain<br>
                 Email-Id: varnikajain571@gmail.com</p>
                
                            
            </div>
            <br>
            <div class="follow" data-aos="fade-left" data-aos-delay="200">
                <h2>Follow us</h2>
                <p>Let us be Social</p>
                <div>
                    <i class="fab fa-facebook-f"></i>
                    <i class="fab fa-twitter"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-youtube"></i>
                </div>
            </div>
        </div>
        <div class="rights flex-row">
            <h4 class="text-gray"></h4>
              
                    
        </div>
        <div class="move-up">
            <span><i class="fas fa-arrow-circle-up fa-2x"></i></span>
        </div>
    </footer>



    <!-- -------------x------------- Footer --------------------x------------------- -->

    <!-- Jquery Library file -->
    <script src="./js/Jquery3.4.1.min.js"></script>

    <!-- --------- Owl-Carousel js ------------------->
    <script src="./js/owl.carousel.min.js"></script>

    <!-- ------------ AOS js Library  ------------------------- -->
    <script src="./js/aos.js"></script>

    <!-- Custom Javascript file -->
   <!-- <script src="js/bootstrap.min.js"></script>-->
    <script src="./js/main.js"></script>
</body>

</html>
                                
                         
                           

  
