<?php
    include('connect.php');
    $sql = "SELECT * FROM loai_hang";
    $data = $conn->query($sql);
    $user = $data->fetchAll();

    if(isset($_POST['add'])){ 
        $folder = "img/"; //var_dump($folder);exit;
        $file = $folder . basename($_FILES["upload"]["name"]); 
        move_uploaded_file($_FILES["upload"]["tmp_name"], $file); 
        $ten_hang = $_POST['ten_hang'];
        $gia_nhap = $_POST['gia_nhap'];
        $gia_ban = $_POST['gia_ban'];
        $so_luong_da_ban = $_POST['so_luong_da_ban'];
        $so_luong_ton = $_POST['so_luong_ton'];
        $ma_nha_cung_cap = $_POST['ma_nha_cung_cap'];
        // $ma_loai_hang = $_POST['ma_loai_hang'];
        $cars = $_POST['cars'];
        $data = [
            'ten_hang' => $ten_hang,
            'gia_nhap' => $gia_nhap,
            'gia_ban' => $gia_ban,
            'img'=> $file,
            'so_luong_da_ban'=> $so_luong_da_ban,
            'so_luong_ton' => $so_luong_ton,
            'ma_nha_cung_cap' => $ma_nha_cung_cap,
            'cars' => $cars
        ]; //var_dump($data);exit;
        $sql = "INSERT INTO hang_hoa ( ten_hang, gia_nhap, gia_ban,img_link, so_luong_da_ban, so_luong_ton, ma_nha_cung_cap,ma_loai_hang) 
        VALUES (:ten_hang,:gia_nhap,:gia_ban,:img,:so_luong_da_ban,:so_luong_ton,:ma_nha_cung_cap,:cars)";
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
    <div class="wrapper">
        <form method="POST" action="addproduct2.php"  enctype="multipart/form-data">
            <legend class="">Thêm hàng hóa</legend>

            
            <div class="form-group mt-4">
                <label>Tên hàng</label>
                <input name="ten_hang" placeholder="Nhập tên hàng" class="form-control" rules="required"/>
                <span class="form-message"></span>
            </div>
            
            <div class="form-group mt-4">
                <label>Giá nhập</label>
                <input name="gia_nhap" placeholder="Nhập giá nhập hàng" class="form-control" rules="required"/>
                <span class="form-message"></span>
            </div>
            
            <div class="form-group mt-4">
                <label>Giá bán</label>
                <input name="gia_ban" placeholder="Nhập giá bán" class="form-control" rules="required"/>
                <span class="form-message"></span>
            </div>
            <div class="form-group mt-4">
                <input type="file" name="upload" id="fileToUpload"><br>
            </div>
            
            <div class="form-group mt-4">
                <label>Số lượng đã bán</label>
                <input name="so_luong_da_ban" placeholder="Nhập số lượng đã bán" class="form-control" rules="required"/>
                <span class="form-message"></span>
            </div>
            <div class="form-group mt-4">
                <label>Số lượng tồn kho</label>
                <input name="so_luong_ton" placeholder="Nhập số lượng tồn kho" class="form-control" rules="required"/>
                <span class="form-message"></span>
            </div>

            <div class="form-group mt-4">
                <label>Mã nhà cung cấp</label>
                <input name="ma_nha_cung_cap" placeholder="Nhập mã nhà cung cấp" class="form-control" rules="required"/>
                <span class="form-message"></span>
            </div>

            <div class="form-group mt-4">
                <select name="cars" id="cars">
                        <?php 
                            foreach($user as $list):                   
                        ?>
                            <option value="<?php echo $list['ma'];?>"><?php echo $list['ten_loai_hang']?></option>
                        <?php endforeach;?>    
                </select>  
            </div>

            <button class="btn btn-primary mt-4" type="submit" name="add" >Thêm hàng hóa</button>
            
        </form> 

    </div> 
    <?php require_once ('../root/footer.php')?>
    <script src = "../assets/js/toast_msg.js"></script>
    <?php require_once ('../root/show_toast.php')?>

    <script type="module">
        import Validator from "../assets/js/validator.js"
        const formAdd = new Validator('#form-add')
    </script>
</body>
</html>