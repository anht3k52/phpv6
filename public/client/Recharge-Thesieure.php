<?php
    require_once("../../config/config.php");
    require_once("../../config/function.php");
    require_once(__DIR__."/../../includes/login.php");
    $title = 'NẠP TIỀN BẰNG THẺ SIÊU RẺ | '.$CMSNT->site('tenweb');
    require_once("../../public/client/Header.php");
    require_once("../../public/client/Nav.php");
?>


<div class="content-i">
    <div class="content-box">
        <div class="row">
            <div class="col-sm-6">
                <div class="element-wrapper">
                    <div class="element-box">
                        <div id="thongbao"></div>
                        <form>
                            <div class="form-group row">
                                <label class="col-sm-12 col-md-4 col-form-label">Nhập mã giao dịch:</label>
                                <div class="col-sm-12 col-md-8">
                                    <input class="form-control" type="text" id="magiaodich"
                                        placeholder="Vui lòng nhập mã đơn VD: W604E0EA769E25">
                                </div>
                            </div>
                            <div class="form-group text-center">
                                <button type="submit" id="submit" class="btn btn-primary">
                                    <span>XÁC NHẬN</span>
                                </button>
                            </div>
                        </form>
                        <div class="alert alert-warning borderless">
                            <?=$CMSNT->site('luuy_tsr');?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="element-wrapper">
                    <div class="element-box text-center">
                        <img src="https://thesieure.com/storage/userfiles/images/logo_thesieurecom.png"
                            height="80px;" />
                        <br><br>
                        <table class="table table-hover">
                            <tbody>
                                <tr>
                                    <td style="text-align: right;">TÀI KHOẢN NHẬN TIỀN: </td>
                                    <td style="text-align: left; color: #00cc99;">
                                        <b><?=$CMSNT->site('tk_tsr');?></b>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right;">Nội dung chuyển tiền:
                                    </td>
                                    <td style="text-align: left;">
                                        <b style="color:red;" id="copy"><?=$CMSNT->site("noidung_naptien");?></b> <a class="copy" data-clipboard-target="#copy"><i class="os-icon os-icon-copy"></i></a>
                                    </td>
                                </tr>
                                <tr class="text-center">
                                    <td colspan="2"><b>Vui lòng nhập đúng nội dung sau đó nhập mã giao dịch vào ô bên
                                            trái.</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="element-wrapper">
                    <h6 class="element-header">LỊCH SỬ NẠP THESIEURE</h6>
                    <div class="element-box">
                        <div class="table-responsive">
                            <table id="datatable" class="table table-padded">
                                <thead>
                                    <tr>
                                        <th>Trạng thái</th>
                                        <th>Thời gian</th>
                                        <th>Nội dung</th>
                                        <th class="text-center">Mã GD</th>
                                        <th class="text-right">Số tiền</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach($CMSNT->get_list("SELECT * FROM `thesieure` WHERE `username` = '".$getUser['username']."' ") as $momo) { ?>
                                    <tr>
                                        <td class="nowrap"><span class="status-pill smaller green"></span><span>Hoàn
                                                thành</span>
                                        </td>
                                        <td><span><?=$momo['time'];?></span></td>
                                        <td class="cell-with-media"><?=$momo['noidung'];?></td>
                                        <td class="text-center"><a class="badge badge-danger"
                                                href=""><?=$momo['magiaodich'];?></a></td>
                                        <td class="text-right bolder nowrap"><span class="text-success">+
                                                <?=format_currency($momo['sotien']);?></span></td>
                                    </tr>
                                    <?php }?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>





    <script type="text/javascript">
    $("#submit").on("click", function() {
        $('#submit').html('ĐANG XỬ LÝ').prop('disabled',
            true);
        $.ajax({
            url: "<?=BASE_URL("assets/ajaxs/thesieure.php");?>",
            method: "POST",
            data: {
                magiaodich: $("#magiaodich").val()
            },
            success: function(response) {
                $("#thongbao").html(response);
                $('#submit').html(
                        'XÁC NHẬN')
                    .prop('disabled', false);
            }
        });
    });
    </script>

    <script>
    $(function() {
        $("#datatable").DataTable();
    });
    </script>
    <script type="text/javascript">
    $(document).ready(function() {
        setTimeout(e => {
            checkMomo()
        }, 2)
    });

    function checkMomo() {
        $.get("<?=BASE_URL("api/momo_mail.php");?>");
    }
    </script>

    <?php 
    require_once("../../public/client/Footer.php");
?>