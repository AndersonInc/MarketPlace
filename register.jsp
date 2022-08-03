<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="register.css">
    <title>Document</title>
</head>
<body>
    <div class="form">
        
        
         <div class="wrapper">
            <hi>Sign Up</hi>
            <form action="Register" method="post">
                <input type="text" name="email" placeholder="Email" required>
                <input type="text"  name="username" placeholder="Username" required>
                <input type="text"  name="name" placeholder="Name" required>
                <input type="text"  name="pass" placeholder="Password" required>
                <input type="text" placeholder="Re-enter Password" required>
                

            </form>
            <div class="terms">
                <input type="checkbox" id="checkbox">
                <label for="checkbox">Remember me</label>
            </div>
            <button>Sign up</button>
            <div class="member">
                Already a member?<a href="./index.jsp">
                    Login here
                </a>
            </div>
         </div>
    
        
    </div>
</body>
</html>