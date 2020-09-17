<!-- Transaction History -->
<?php include 'session.php'; ?>
<?php

$id=$_GET['id'];
echo $id;
$stmt = $conn->prepare("SELECT * FROM sales WHERE user_id=:user_id ORDER BY sales_date DESC");
                        $stmt->execute(['user_id'=>$user['id']]);
                        foreach($stmt as $row){
                          $stmt2 = $conn->prepare("SELECT * FROM details LEFT JOIN products ON products.id=details.product_id WHERE sales_id=:id");
                          $stmt2->execute(['id'=>$row['id']]);
                          $total = 0;
                          foreach($stmt2 as $row2){
                            $subtotal = $row2['price']*$row2['quantity'];
                            $total += $subtotal;
                          }

                          ?>
<div class="modal fade" id="transaction">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Transaction Full Details</b></h4>
            </div>
            <div class="modal-body">
              <p>
                Date: <span id="date"></span>
                <span class="pull-right">Transaction#: <span id="transid"></span></span> 
              </p>
              <table class="table table-bordered">
                <thead>
                  <th>Product</th>
                  <th>Price</th>
                  <th>Quantity</th>
                  <th>Subtotal</th>
                </thead>
                <tbody id="detail">
                  <?php
                  echo "
                            <tr>
                              <td class='hidden'></td>
                              <td>".date('M d, Y', strtotime($row['sales_date']))."</td>
                              <td>".$row['pay_id']."</td>
                              <td>&#36; ".number_format($total, 2)."</td>
                 
                    <td colspan='3' align='right'><b>Total</b></td>
                    <td><span id='total'></span></td>
                  </tr>";
                  ?>
                </tbody>
              </table>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
            </div>
        </div>
    </div>
</div>
<?php
}
?>