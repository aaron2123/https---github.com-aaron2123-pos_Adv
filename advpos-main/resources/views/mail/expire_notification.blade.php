<?php if($details['count_expiring'] > 0) { ?>
<p style="margin-bottom: 2px;color:red;font-weight:bold;">Alert! <br> The items listed below will expire in 7 days.</p>
<br>
<table class="table table-striped table-bordered" style="width:90%; margin-left:0;font-size:15px;border-collapse:collapse;">
    <thead>
        <tr>
            <th style="border: 1px solid;">Item ID</th>
            <th style="border: 1px solid;">Product Name</th>
            <th style="border: 1px solid;">Quantity</th>
            <th style="border: 1px solid;">Expiry Date</th>
            <th style="border: 1px solid;">Days</th>
        </tr>
<?php
    foreach($details['product'] as $value)
    { 
        $split = explode("_", $value);
        ?>
        <tr>
            <th style="border: 1px solid;"><?php echo $split[0]; ?></th>
            <th style="border: 1px solid;"><?php echo $split[1]; ?></th>
            <th style="border: 1px solid;"><?php echo $split[2]; ?></th>
            <th style="border: 1px solid;"><?php echo $split[4]; ?></th>
            <th style="border: 1px solid black;color:red;"><?php echo $split[3]; ?></th>
        </tr>
        <?php
    }
?>
    </thead>
</table>
<br>
<?php } if($details['count_expired'] > 0) { ?>
<p style="margin-bottom: 2px;color:red;font-weight:bold;">The items listed below were expired.</p>
<br>
<table class="table table-striped table-bordered" style="width:90%; margin-left:0;font-size:15px;border-collapse:collapse;">
    <thead>
        <tr>
            <th style="border: 1px solid;">Item ID</th>
            <th style="border: 1px solid;">Product Name</th>
            <th style="border: 1px solid;">Quantity</th>
            <th style="border: 1px solid;">Expiry Date</th>
        </tr>
<?php
    foreach($details['expired'] as $value)
    { 
        $split = explode("_", $value);
        ?>
        <tr>
            <th style="border: 1px solid;"><?php echo $split[0]; ?></th>
            <th style="border: 1px solid;"><?php echo $split[1]; ?></th>
            <th style="border: 1px solid;"><?php echo $split[2]; ?></th>
            <th style="border: 1px solid;"><?php echo $split[4]; ?></th>
        </tr>
        <?php
    }
?>
    </thead>
</table>
<?php } ?>
<p style="margin-bottom: 2px;color:black;font-weight:bold;">Thankyou.</p>