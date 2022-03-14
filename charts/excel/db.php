<?php

class Connect extends PDO
{
  public function __construct()
  {
    parent::__construct(
      "mysql:host=localhost;dbname=quan_ly_hang_hoa",
      'root',
      '',
      array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
    );
  }
}
