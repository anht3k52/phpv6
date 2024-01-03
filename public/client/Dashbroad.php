<?php
    require_once("../../config/config.php");
    require_once("../../config/function.php");
    require_once(__DIR__."/../../includes/login.php");
    $title = strtoupper(lang(43)).' | '.$CMSNT->site('tenweb');
    require_once("../../public/client/Header.php");
    require_once("../../public/client/Nav.php");
?>


<div class="content-i">
    <div class="content-box">
        <?php if(empty($getUser['email'])){ ?>
        <div class="alert alert-warning">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            Vui lòng <a href="<?=BASE_URL('Auth/Profile');?>">cập nhật</a> địa chỉ Email để bảo mật tài khoản.
        </div>
        <?php }?>
        <div class="row">
            <div class="col-sm-12">
                <div class="element-wrapper compact pt-4">
                    <div class="element-actions"><a class="btn btn-primary btn-sm" href="<?=BASE_URL('History');?>"><i
                                class="os-icon os-icon-rotate-cw"></i><span><?=lang(36);?></span></a></div>
                    <h6 class="element-header"><?=lang(35);?></h6>
                    <div class="element-box-tp">
                        <div class="row">
                            <div class="col-lg-12 col-xxl-12">
                                <div class="element-balances">
                                    <div class="balance">
                                        <div class="balance-title"><?=lang(30);?></div>
                                        <div class="balance-value">
                                            <?=format_currency($getUser['total_money']);?></div>
                                        <div class="balance-link"><a class="btn btn-link btn-underlined"
                                                href="<?=BASE_URL('Auth/Profile');?>"><span><?=lang(34);?></span><i
                                                    class="os-icon os-icon-arrow-right4"></i></a></div>
                                    </div>
                                    <div class="balance">
                                        <div class="balance-title"><?=lang(31);?></div>
                                        <div class="balance-value"><?=format_currency($getUser['money']);?>
                                        </div>
                                        <div class="balance-link"><a class="btn btn-link btn-underlined"
                                                href="<?=BASE_URL('Auth/Profile');?>"><span><?=lang(34);?></span><i
                                                    class="os-icon os-icon-arrow-right4"></i></a></div>
                                    </div>
                                    <div class="balance">
                                        <div class="balance-title"><?=lang(32);?></div>
                                        <div class="balance-value danger">
                                            <?=format_currency($getUser['used_money']);?></div>
                                        <div class="balance-link"><a class="btn btn-link btn-underlined btn-gold"
                                                data-target=".bd-example-modal-lg"
                                                data-toggle="modal"><span><?=lang(33);?></span><i
                                                    class="os-icon os-icon-arrow-right4"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 col-xxl-12">
                                <div class="alert alert-warning borderless">
                                    <?=$CMSNT->site('thongbao');?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div aria-hidden="true" aria-labelledby="myLargeModalLabel" class="modal fade bd-example-modal-lg"
                role="dialog" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel"><?=lang(102);?></h5><button
                                aria-label="Close" class="close" data-dismiss="modal" type="button"><span
                                    aria-hidden="true">
                                    &times;</span></button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <?php if($CMSNT->site('api_card') != '') { ?>
                                <div class="col-sm-12">
                                    <a class="mr-2 mb-2 btn btn-primary btn-lg btn-block"
                                        href="<?=BASE_URL('Recharge-Card');?>" type="button"> NẠP THẺ CÀO TỰ ĐỘNG</a>
                                </div>
                                <?php }?>
                                <?php if($CMSNT->site('api_momo') != '') { ?>
                                <div class="col-sm-12">
                                    <a class="mr-2 mb-2 btn btn-warning btn-lg btn-block"
                                        href="<?=BASE_URL('Recharge-Momo');?>" type="button"> NẠP QUA VÍ MOMO TỰ
                                        ĐỘNG</a>
                                </div>
                                <?php }?>
                                <?php if($CMSNT->site('tk_tsr') != '' && $CMSNT->site('mk_tsr') != '') { ?>
                                <div class="col-sm-12">
                                    <a class="mr-2 mb-2 btn btn-danger btn-lg btn-block"
                                        href="<?=BASE_URL('Recharge-Thesieure');?>" type="button"> NẠP QUA
                                        THESIEURE.COM</a>
                                </div>
                                <?php }?>
                                <div class="col-sm-12">
                                    <a class="mr-2 mb-2 btn btn-success btn-lg btn-block"
                                        href="<?=BASE_URL('Recharge-Bank');?>" type="button"> NẠP QUA NGÂN HÀNG</a>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer"><button class="btn btn-secondary" data-dismiss="modal" type="button">
                                Đóng</button></div>
                    </div>
                </div>
            </div>



            <?php foreach($CMSNT->get_list("SELECT * FROM `category` WHERE `display` = 'SHOW' ORDER BY `stt` ") as $category) { ?>
            <div class="col-sm-12">
                <div class="element-wrapper">
                    <h6 class="element-header"><?=strtoupper($category['title']);?></h6>
                    <div class="element-box-tp">


                        <?php if($CMSNT->site('type_buy') == 'LIST'){ ?>


                        <div class="table-responsive">
                            <table class="table table-padded">
                                <thead>
                                    <tr>
                                        <th><?=lang(77);?></th>
                                        <th width="10%" class="text-center"><?=lang(85);?></th>
                                        <th width="10%" class="text-center"><?=lang(78);?></th>
                                        <?php if($CMSNT->site('display_sold') == 'ON') { ?>
                                        <th width="10%" class="text-center"><?=lang(140);?></th>
                                        <?php }?>
                                        <th width="10%" class="text-center"><?=lang(74);?></th>
                                        <th width="15%" class="text-center"><?=lang(79);?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    foreach($CMSNT->get_list("SELECT * FROM `dichvu` WHERE 
                                    `display` = 'SHOW' AND 
                                    `loai` = '".$category['title']."'  ORDER BY `stt` ASC ") as $row)
                                    {
                                        $conlai = $CMSNT->num_rows(" SELECT * FROM `taikhoan` WHERE `dichvu` = '".$row['id']."' AND `trangthai` = 'LIVE' AND `code` IS NULL "); 
                                        $sold = $CMSNT->num_rows(" SELECT * FROM `taikhoan` WHERE `dichvu` = '".$row['id']."' AND `code` IS NOT NULL ");
                                    ?>
                                    <tr>
                                        <td><img src="<?=BASE_URL($category['img']);?>" width="30px"
                                                title="<?=$category['title'];?>">
                                            <b> <?=$row['dichvu'];?></b>
                                        </td>
                                        <td class="text-center">
                                            <?php if($row['quocgia']) { ?>
                                            <img width="40px"
                                                src="<?=BASE_URL('template/flag/'.$row['quocgia'].'.svg');?>" />
                                            <?php }?>
                                        </td>
                                        <td class="text-center">
                                            <b style="color: red;;">
                                                <?=format_cash($conlai);?>
                                            </b> 
                                        </td>
                                        <?php if($CMSNT->site('display_sold') == 'ON') { ?>
                                        <td class="text-center">
                                            <b style="color: green;;">
                                                <?=format_cash($sold);?>
                                            </b>
                                        </td>
                                        <?php }?>
                                        <td class="text-center">
                                            <b style="color: blue;"><?=format_currency($row['gia']);?></b>
                                        </td>
                                        <td class="text-center">

                                            <?php if($conlai != 0) { ?>
                                            <button class="btn btn-outline-success btn-buy" conlai="<?=$conlai;?>"
                                                gia="<?=$row['gia'];?>" data-id="<?=$row['id'];?>"
                                                mota="<?=$row['mota'];?>"><?=lang(83);?></button>
                                            <?php } else { ?>
                                            <button class="btn btn-danger" disabled><?=lang(84);?></button>
                                            <?php }?>
                                        </td>
                                    </tr>
                                    <?php }?>
                                </tbody>
                            </table>
                        </div>



                        <?php } else if($CMSNT->site('type_buy') == 'BOX') {?>

                        <div class="row">
                            <?php foreach($CMSNT->get_list("SELECT * FROM `dichvu` WHERE `display` = 'SHOW' AND `loai` = '".$category['title']."'  ORDER BY `stt` ASC ") as $row){ ?>
                            <?php $conlai = $CMSNT->num_rows(" SELECT * FROM `taikhoan` WHERE `dichvu` = '".$row['id']."' AND `trangthai` = 'LIVE' AND `code` IS NULL "); ?>
                            <div class="col-sm-6 col-xl-6 ">
                                <div class="element-box el-tablo" >
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <h5 class="text-center"  ><?=$row['dichvu'];?></h5>
                                            <hr>

                                        </div>
                                        <div class="col-lg-12">
                                            <div class="alert alert-warning">
                                                <?=$row['mota'];?>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="btn btn-danger btn-block">GIÁ:
                                                <?=format_currency($row['gia']);?></div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="btn btn-success btn-block">CÒN LẠI: <?=format_cash($conlai);?>
                                            </div>
                                        </div>
                                        <div class="col-lg-12"><br>
                                            <button class="btn btn-info btn-block btn-lg btn-buy" style="color: white;"
                                                conlai="<?=$conlai;?>" gia="<?=$row['gia'];?>"
                                                data-id="<?=$row['id'];?>" mota="<?=$row['mota'];?>">MUA NGAY</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php }?>
                        </div>


                        <?php }?>
                    </div>
                </div>
            </div>
            <?php }?>
        </div>
    </div>



    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">

                </div>
                <div class="modal-body">
                    <div id="thongbao"></div>
                    <div class="form-group">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <label class="input-group-text" for="inputGroupSelect01"><?=lang(45);?></label>
                            </div>
                            <input type="number" min="1" value="1" class="form-control" id="modal-soluong"
                                style="font-size: 16px;font-weight: bold;text-align: right;">
                        </div>

                    </div>
                    <div class="form-group">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <label class="input-group-text" for="modal-gia"><?=lang(74);?></label>
                            </div>
                            <input type="text" value="" readonly class="form-control" id="modal-gia"
                                style="font-size: 16px;font-weight: bold;text-align: right;">
                            <input type="hidden" value="" readonly class="form-control" id="modal-available-amount">
                            <input type="hidden" value="" readonly class="form-control" id="modal-type-id">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <label class="input-group-text" for="modal-gia"><?=lang(41);?></label>
                            </div>
                            <input type="text" value="<?=$getUser['chietkhau'];?>%" readonly class="form-control"
                                style="font-size: 16px;font-weight: bold;text-align: right;">
                            <input type="hidden" value="" readonly class="form-control" id="modal-available-amount">
                            <input type="hidden" value="" readonly class="form-control" id="modal-type-id">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <label class="input-group-text" for="modal-gia"><?=lang(75);?></label>
                            </div>
                            <input type="text" value="" readonly class="form-control" id="modal-total"
                                style="font-size: 16px;color: red;font-weight: bold;text-align: right;">
                        </div>
                    </div>
                    <div class="form-group">
                        <textarea id="modal-type-name" class="form-control" readonly contenteditable></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" id="btn-buy-now"><?=lang(46);?></button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><?=lang(76);?></button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->


    <script type="text/javascript">
    $('.btn-buy').on('click', function(e) {
        var btn = $(this);
        if ($(this).attr("conlai") > 0) {
            $("#modal-soluong").val(1);
            $("#modal-gia").val(parseFloat(btn.attr("gia")));
            $("#modal-type-name").val(btn.attr("mota"));
            $("#modal-available-amount").val(btn.attr("conlai"));
            $("#modal-type-id").val(btn.attr("data-id"));
            $("#modal-total").val(parseFloat(btn.attr("gia")));
            $("#staticBackdrop").modal();
        } else {
            alert("<?=lang(82);?> !");
        }
        return false;
    });
    $('#modal-soluong').on("keyup", function() {
        var price = $("#modal-gia").val();
        var qty = $("#modal-soluong").val();
        var avaiable = $("#modal-available-amount").val();
        if (qty > avaiable) {
            //$("#modal-soluong").val(avaiable);
            //qty = avaiable;
        }
        var ck_discount = <?=$getUser['chietkhau'];?>;
        var total = 0;
        total = qty * price;
        total = total - total * ck_discount / 100;
        $("#modal-total").val(total);
    });
    $('#btn-buy-now').on('click', function(e) {
        var qty = $("#modal-soluong").val();
        var avaiable = $("#modal-available-amount").val();
        var typeid = $("#modal-type-id").val();
        $('#btn-buy-now').addClass('btn btn-info').html(
            '  <span class="spinner-grow spinner-grow-sm"></span> <?=lang(81);?>').prop('disabled',
            true);
        Swal.fire({
            title: '<?=lang(111);?>',
            text: 'Hệ thống đang thực hiện check live tài khoản',
            imageUrl: '<?=BASE_URL('assets/img/loading.gif');?>',
            imageWidth: 400,
            imageHeight: 200,
            imageAlt: 'Custom image',
        })
        $.ajax({
            url: "<?=BASE_URL("assets/ajaxs/Buy.php");?>",
            method: "POST",
            data: {
                value: qty,
                dichvu: typeid
            },
            success: function(response) {
                $("#thongbao").html(response);
                $('#btn-buy-now').html('<?=lang(46);?>').prop(
                    'disabled', false);
            }
        });
        return false;
    });
    </script>
    <script>
    $(function() {
        $("#datatable").DataTable();
    });
    </script>


    <?php 
    require_once("../../public/client/Footer.php");
?>