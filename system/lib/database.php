<?php
  class database extends PDO {
    public function __construct($connect, $user, $pass)
    {
      parent::__construct($connect, $user, $pass);
    }
    public function select($sql, $data = array(), $fetchstyle = PDO::FETCH_ASSOC){
      $statement = $this->prepare($sql);
      foreach ($data as $key => $value){
        $statement->bindParam($key, $value);
      }
      
      $statement->execute();
      return $statement->fetchAll($fetchstyle);
    }
    public function insert($table, $data){
      $keys = implode(",",array_keys($data));
      $values = ":".implode(", :",array_keys($data));
      $sql = "INSERT INTO $table ($keys) VALUES ($values)";
      $statement = $this->prepare($sql);
      foreach ($data as $key => $value){
        $statement->bindParam(":$key", $value);
      }
      return $statement->execute();
    }
  }
?>
