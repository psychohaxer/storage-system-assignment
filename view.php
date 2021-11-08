<?php
    include_once 'core/Class.php';
    include 'core/header.php';

    $item = new Item('','','');

    $barcode = "";
    $item_name = "";
    $item_qt = "";

    if(isset($_POST['submit'])){
        // var_dump($_POST);
        $item->barcode = $_GET['barcode'];
        $item->item_name = $_POST['item_name'];
        $item->item_qty = $_POST['item_qty'];
        $state = $_POST['state'];

        if($state == 'edit'){
            $item->editData();
        } elseif($state == 'create'){
            $item->createData();
        }
        header("Location:.");
    }

    if(isset($_GET['barcode'])){
        $barcode = $_GET['barcode'];

        $item->readSpecificData($barcode);

        $item_name = $item->item_name;
        $item_qty = $item->item_qty;
    }

    if (isset($_GET['state'])){
        if($_GET['state'] == 'delete'){
            $item->barcode = $_GET['barcode'];
            $item->deleteData();
        }
    }
?>

        <div id="inputcont">
            <table id="inputdata">
                <th id="judul" colspan="2"> Form Input/Edit Data </th>
                <tr width="100%">
                    <form action="" method="POST" enctype="multipart/form-data" id="input">
                    <td align="left"> Barcode </td> <td> <input type="text" name="barcode" width="80%" value="<?php echo $barcode ?>" form="input"/> </td>
                    </form>
                </tr>
                <tr width="100%">
                    <form action="" method="POST" enctype="multipart/form-data" id="input">
                    <td align="left"> Item Name </td> <td> <input type="text" name="item_name" width="80%" value="<?php echo $item_name ?>" form="input"/> </td>
                    </form>
                </tr>
                <tr width="100%">
                    <form action="" method="POST" enctype="multipart/form-data" id="input">
                    <td align="left"> Item Qty </td> <td> <input type="number" name="item_qty" width="80%" value="<?php echo $item_qty ?>" form="input"/> </td>
                    </form>
                </tr>
                <tr width="100%">
                    <form action="" method="POST" enctype="multipart/form-data" id="input">
                    <input type="hidden" name="state" value="<?php echo isset($_GET['state']) ? $_GET['state'] : 'create' ?>" id="input" form="input">
                    <td colspan="2" width="100%"> <button type="submit" name="submit" id="submit" form="input"> Save </button> </td>
                    </form>
                </tr>
            </table>
        </div>

        <br>

        <div id="datacontainer">
            <table id="data">
            <tr>
                <th id="judul" width="15%">Barcode</th>
                <th id="judul">Item Name</th>
                <th id="judul" width="10%">Item Quantity</th>
                <th id="judul" colspan="2" width="20%"> Action </th>
            </tr>
            <br>
            
            <?php
                    $arrayData = Item::readAllData();
                    foreach ($arrayData as $item){
                ?>

            <tr id="center">
                <td id="left"><aaa>&nbsp;<?php echo $item->barcode;?></aaa></td>
                <td id="left"><aaa>&nbsp;<?php echo $item->item_name;?></aaa></td>
                <td id="center"><aaa><?php echo $item->item_qty;?></aaa></td>
                <td id="center">
                        <a href="view.php?barcode=<?php echo $item->barcode; ?>&state=edit" id="actK">Edit</a>
                    </td>
                    <td id="center">
                        <a href="view.php?barcode=<?php echo $item->barcode; ?>&state=delete" id="actK">Delete</a>
                    </td>
            </tr>
            <?php }?>
        </table>
        </div>

        <br>
        <?php include 'core/footer.php' ?>
    </body>
</html>