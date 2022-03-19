<?php
    session_start();
    require_once("../../connect.php");
    require_once("../../lib_db.php");
    $temp = isset($_POST['name']) ? $_POST['name'] : '';
    if(empty($temp)){
        $name = '';   
    }else
    {
        $name = "where ho_ten like'%{$temp}%'";
    }
    $list = "select * from nhan_vien $name";
    $result = select_list($list);
    $_SESSION['check'] =count($result);

    //echo $item['ho_ten'];
    //var_dump($item);
    //die();
    $output="";
    mysqli_close($conn);
    
    $output.="<table class='table-staff'>";
    $output.="<thead>";
    $output.="    <tr>";
    $output.="        <th>Tên nhân viên</th>";
    $output.="        <th>Mã nhân viên</th>";
    $output.="        <th>SĐT</th>";
    $output.="        <th>Email</th>";
    $output.="        <th>Ngày sinh</th>";
    $output.="        <th>Địa chỉ</th>";
    $output.="        <th>Quyền</th>";
    $output.="        <th>Hành động</th>";
    $output.="    </tr>";
    $output.="</thead>";
    $output.="<tbody>";
    foreach($result as $item) {
    $output.="<tr>";
    $output.="<td>". $item['ho_ten']."</td>";
    $output.="<td>". $item['ma']."</td>";
    $output.="<td>". $item['sdt']."</td>";
    $output.="<td>". $item['email']."</td>";
    $output.="<td>". $item['ngay_sinh']."</td>";
    $output.="<td>". $item['dia_chi']."</td>";
    $output.="<td>";
    if($item['quyen']==1){$output.= "QTV";}else{$output.= "NV";};
    $output.="</td>";
    $output.="<td>";
    $output.="<a href=><i class='bx bx-edit-alt'></i></a>";
    $output.="<a href=><i class='bx bx-trash'></i></a>";
    $output.="</td>";   
    $output.="</tr>";
    }
    $output.="</tbody>";
    $output.="</table>";
    if(empty($result))
    {
        echo "Không có kết quả phù hợp";
    }
    else
    {
        echo $output;
    }

?>
<html>
    
<link rel='stylesheet' href='../../assets/css/staff.css'>
<?php require_once ('../../root/top.php');?>
</html>