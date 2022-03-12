<?php
    include('connect.php');
    if(isset($_POST['submit'])){    
        $id= $_POST['id'];//var_dump($add);exit; 
        $name = $_POST['name'];
        $iprice = $_POST['iprice'];
        $price = $_POST['price'];
        $quantity = $_POST['quantity'];
        $data = [
            'id' => $id,
            'name' => $name,
            'iprice' => $iprice,
            'price' => $price,
            'quantity'=> $quantity
        ]; //var_dump($data);exit;
        $sql = "INSERT INTO product2 (id,name,iprice,price,quantity) VALUES (:id,:name,:iprice,:price,:quantity)";
        $stmt= $conn->prepare($sql);   
        $stmt->execute($data);
    }
        
?>

    <?php require_once ('../root/top.php')?>
    <?php top('Thêm hàng hóa') ?>
</head>
<body>
<div id="toast"></div>
    <?php require_once ('../root/menu.php')?>
    <?php require_once ('../root/header.php')?>
    <div class="hello-user">
            <h2>Xin chào,</h2>
            <h2>USER NAME</h2>
        </div>
        <div class="button-add">
            <button type="button">
                + Thêm hàng hoá
            </button>
        </div>
    <div>
        <h2>Thêm hàng hóa</h2>
    </div>
    <form method="POST" action="" enctype="multipart/form-data">
        <div class="grid wide">
            <div class="row">
                <div class="col l-12">                 
                    <label class="addproduct-content-setting">Mã hàng :</label>                  
                    <input type="text" name="id" class="addproduct-input"><br>
                </div>
                <div class="col l-12">                 
                    <label class="addproduct-content-setting">Tên hàng :</label>                  
                    <input type="text" name="name" class="addproduct-input"><br>
                </div>
                <div class="col l-12">                 
                    <label class="addproduct-content-setting">Giá nhập :</label>                  
                    <input type="text" name="iprice" class="addproduct-input"><br>
                </div>
                <div class="col l-12">                 
                    <label class="addproduct-content-setting">Giá bán :</label>                  
                    <input type="text" name="price" class="addproduct-input"><br>
                </div>
                <div class="col l-12">                 
                    <label class="addproduct-content-setting">Số lượng :</label>                  
                    <input type="number" name="quantity" class="addproduct-input"><br>
                </div>
                <div class="addproduct-footer-input">
                    <button type="submit" name="submit" id="btn" class="addproduct-footer-input-setting">Thêm hàng hóa</button>
                </div>
            </div>
        </div>
    </form>    
    <?php require_once ('../root/footer.php')?>
    <script src = "../assets/js/toast_msg.js"></script>
    <?php require_once ('../root/show_toast.php')?>

    <script type="module">
        import Validator from "../assets/js/validator.js"
        const formAdd = new Validator('#form-add')
    </script>  
</body>
</html>