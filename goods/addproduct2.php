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
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/addproduct2.css">
    <link rel="stylesheet" href="css/grid.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm hàng hóa</title>
</head>
<body>
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
                    <button type="submit" name="submit"  class="addproduct-footer-input-setting">Thêm hàng hóa</button>
                        <script language="javascript">
                            var button = document.getElementById("btn");
                            button.onclick = function(){
                            alert("Đã thêm hàng hóa mới thành công!");
                            }     
                        </script>     
                </div>
            </div>
        </div>
    </form>    
</body>
</html>