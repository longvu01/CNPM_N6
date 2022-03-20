<?php
    session_start();

    include('connect2.php');
    $message = "";
    if(isset($_POST['login'])){
        if(empty($_POST['user_name']) && empty($_POST['password']))
        {
            $message = 'Yêu cầu nhập tài khoản và mật khẩu';
        }
        else
        {
            $query = "SELECT * FROM tai_khoan WHERE user_name = :user_name AND password = :password";
            $user = $conn->prepare($query);
            $user->execute(
                array(
                    'user_name' => $_POST['user_name'],
                    'password' => $_POST['password']

                )
            );
            $count = $user->rowCount(); //var_dump($count);exit;
            if($count > 0)
            {
                $_SESSION['user_name'] = $_POST['user_name'];
                $sql2 = "SELECT * from tai_khoan where user_name=:user_name";
                $user2 = $conn->prepare($sql2);
                $user2->execute(
                    array(
                        'quyen' => $_GET['quyen']
                    )
                );
                header("location:search.php");
            }
            else{
                $message = '<label>Bạn chưa nhập tài khoản hoặc mật khẩu</label>';
            }
        }
    }


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./assets/css/login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
</head>
<body>

    
    <form action="" method="POST">
        <div class="login-page">
            <div class="form">             
                <input type="text" name="user_name" placeholder="Username"/>
                <input type="password" name="password" placeholder="Password"/>
                <?php
                    if(isset($message))
                    {
                    echo '<label>'.$message.'</label>';
                    }
                ?>
                <input type="submit" name="login" value="ĐĂNG NHẬP" style="background-color: tomato;font-size: 1.2rem;">
                <p class="message">Not registered? <a href="#">Create an account</a></p>
            </div>
        </div> 
    </form>
    
</body>
</html>