<?php
    include_once "connect.php";
    
    class Item{
        public $barcode, $item_name, $item_qty;
        private $connection;

        function __construct($barcode, $item_name, $item_qty){
            $database = new Database();
            $this->connection = $database->connect();

            $this->barcode = $barcode;
            $this->item_name = $item_name;
            $this->item_qty = $item_qty;
        }

        public function create_item(){
            $query="INSERT INTO items (barcode,item_name,item_qty) VALUES (
                '".$this->barcode."',
                '".$this->item_name."',
                '".$this->item_qty."')";

            $result = $this->connection->query($query) or die($this->connection->error);
        }

        public static function readAllData(){
            $arrayitems = array(); // Menampung seluruh record yang dipanggil

            $query = "SELECT * FROM items"; 
            $database = new Database();
            $connection = $database->connect();
            $result = $connection->query($query) or die($connection->error);

            // While untuk mengambil object hasil query, lalu mengubahnya menjadi array
            // untuk disimpan dalam variabel arrayitems.
            while ($row=$result->fetch_assoc()){    
                $items = new Item(
                    $row['barcode'],
                    $row['item_name'],
                    $row['item_qty']
                );

                // Memasukkan tiap-tiap record sebagai objek ke variabel array.
                $arrayitems[$items->barcode] = $items;
            }

            return $arrayitems;
        }

        public function readSpecificData($barcode){
            $query = "SELECT * FROM items WHERE barcode = $barcode ORDER BY item_name";
            $result = $this->connection->query($query) or die($this->connection->error);

            $row = $result->fetch_assoc();
            $this->barcode = $row['barcode'];
            $this->item_name = $row['item_name'];
            $this->item_qty = $row['item_qty'];
            
            return $result;
        }

        public function editData(){
            $query = "UPDATE items SET
                barcode = '$this->barcode',
                item_name = '$this->item_name',
                item_qty = $this->item_qty
                WHERE barcode = $this->barcode";

            $result = $this->connection->query($query) or die($this->connection->error);
        }

        public function deleteData(){
            $query = "DELETE FROM items WHERE barcode = $this->barcode";
            $result = $this->connection->query($query) or die($this->connection->error);
        }
    }
?>