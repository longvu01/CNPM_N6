<?php

require_once './db.php';

class Convert
{
  private $limit;

  public function init()
  {
    if (
      !isset($_POST['limit'])
    ) {
      return false;
    } else {
      $this->limit = $_POST['limit'];

      return true;
    }
  }

  public function select()
  {

    $db = new Connect;
    $output = '';
    $sql = 'SELECT * FROM hang_hoa limit ' . $this->limit;
    $data = $db->query($sql);
    $ten_hang = mb_convert_encoding("Tên hàng", "HTML-ENTITIES", "UTF-8");
    $sl_da_ban = mb_convert_encoding("Số lượng đã bán", "HTML-ENTITIES", "UTF-8");
    $sl_ton_kho = mb_convert_encoding("Số lượng tồn kho", "HTML-ENTITIES", "UTF-8");
    if ($data) {
      $output .= "<table>
							<tr>
								<td>$ten_hang</td>
								<td>$sl_da_ban</td>
								<td>$sl_ton_kho</td>
							</tr>
								";
      while ($row = $data->fetch()) {

        $output .= '<tr>
								<td>' . mb_convert_encoding($row['ten_hang'], "HTML-ENTITIES", "UTF-8") . '</td>
								<td>' . mb_convert_encoding($row['so_luong_da_ban'], "HTML-ENTITIES", "UTF-8") . '</td>
								<td>' . mb_convert_encoding($row['so_luong_ton'], "HTML-ENTITIES", "UTF-8") . '</td>
							</tr>
				';
      }
      $output .= '</table>';
    }
    $db = null;

    header("Content-Type: application/xls; charset=utf-8");
    header("Content-Disposition: attachment; filename=download.xls");
    echo $output;
  }
}

$convert = new Convert;
if ($convert->init()) {
  $convert->select();
}
