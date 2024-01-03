<?php
    require_once("../../config/config.php");
    require_once("../../config/function.php");
    $title = 'QUẢN LÝ THÀNH VIÊN | '.$CMSNT->site('tenweb');
    CheckLogin();
    CheckAdmin();
    require_once("../../public/admin/Header.php");
    require_once("../../public/admin/Sidebar.php");
?>

<?php
if(isset($_GET['login']) && $getUser['level'] == 'admin')
{
    $username = check_string($_GET['login']);
    $_SESSION['username'] = $username;
    admin_msg_success("Đăng nhập tài khoản thành công !", BASE_URL(''), 2000);
}
if(isset($_POST['btnCongTien']) && isset($_POST['value']) && isset($row['username']) && $getUser['level'] == 'admin')
{
    $value = check_string($_POST['value']);
    $id = check_string($_POST['id']);
    $tranId = check_string($_POST['tranId']);
    if($value <= 0)
    {
        admin_msg_error("Vui lòng nhập số tiền hợp lệ", "", 2000);
    }
    if($CMSNT->num_rows(" SELECT * FROM `momo` WHERE `tranId` = '$tranId' ") != 0)
    {
        admin_msg_error("Mã giao dịch này đã được cộng tiền rồi !", "", 2000);
    } 
    $row = $CMSNT->get_row(" SELECT * FROM `users` WHERE `id` = '$id'  ");
    if(!$row)
    {
        admin_msg_error("Người dùng này không tồn tại", BASE_URL(''), 500);
    }
    $create = $CMSNT->insert("momo", array(
        'tranId'        => $tranId,
        'username'      => $row['username'],
        'comment'       => '',
        'time'          => gettime(),
        'partnerId'     => '',
        'amount'        => $value,
        'partnerName'   => ''
    ));
    if($create)
    {
        $CMSNT->insert("dongtien", [
            'sotientruoc' => $row['money'],
            'sotienthaydoi' => $value,
            'sotiensau' => $row['money'] + $value,
            'thoigian' => gettime(),
            'noidung' => 'Admin cộng tiền ('.$ghichu.')',
            'username' => $row['username']
        ]);
        $CMSNT->cong("users", "money", $value, " `username` = '".$row['username']."' ");
        $CMSNT->cong("users", "total_money", $value, " `username` = '".$row['username']."' ");
        admin_msg_success("Cộng tiền thành công!", "", 2000);
    }
    else
    {
        admin_msg_error("Vui lòng liên hệ kỹ thuật Zalo 0947838128", "", 12000);
    }
    
}

?>

<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Quản lý thành viên</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="card card-outline card-primary">
                    <div class="card-header">
                        <h3 class="card-title">DANH SÁCH THÀNH VIÊN</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                    class="fas fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="datatable" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>USERNAME</th>
                                        <th>REF</th>
                                        <th>PHONE</th>
                                        <th>EMAIL</th>
                                        <th>SỐ DƯ</th>
                                        <th>TỔNG NẠP</th>
                                        <th>IP</th>
                                        <th>NGÀY TẠO</th>
                                        <th>TRẠNG THÁI</th>
                                        <th>THAO TÁC</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 0;
                                    foreach($CMSNT->get_list(" SELECT * FROM `users` WHERE `username` IS NOT NULL ORDER BY id DESC ") as $row){
                                    ?>
                                    <tr>
                                        <td><?=$row['id'];?></td>
                                        <td><?=$row['username'];?></td>
                                        <td><?=$row['ref'] != NULL ? $CMSNT->get_row("SELECT * FROM `users` WHERE `id` = '".$row['ref']."' ")['username'] : '';?></td>
                                        <td><?=$row['phone'];?></td>
                                        <td><?=$row['email'];?></td>
                                        <td><?=format_cash($row['money']);?></td>
                                        <td><?=format_cash($row['total_money']);?></td>
                                        <td><?=$row['ip'];?></td>
                                        <td><span class="badge badge-dark"><?=$row['createdate'];?></span></td>
                                        <td><?=display_banned($row['banned']);?></td>
                                        <td>
                                            <a type="button" href="<?=BASE_URL('Admin/User/Edit/');?><?=$row['id'];?>"
                                                class="btn btn-primary"><i class="fas fa-edit"></i>
                                                <span>EDIT</span></a>
                                            <a type="button" href="<?=BASE_URL('public/admin/Users.php?login=');?><?=$row['username'];?>"
                                                class="btn btn-danger"><i class="fas fa-sign-in-alt"></i>
                                                <span>LOGIN</span></a>
                                        </td>
                                    </tr>
                                    <?php }?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>



<script>
$(function() {
    $("#datatable").DataTable({
        "responsive": true,
        "autoWidth": false,
    });
});
</script>



<?php 
    require_once("../../public/admin/Footer.php");
?>