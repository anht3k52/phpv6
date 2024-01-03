<?php
    require_once("../config/config.php");
    require_once("../config/function.php");

    // XÓA ĐƠN HÀNG KHI MUA TRONG 30 NGÀY
    foreach($CMSNT->get_list("SELECT * FROM `orders` ") as $orders)
    {
        if(time() - $orders['time'] >= $CMSNT->site('time_delete'))
        {
            // LẤY TÀI NGUYÊN CỦA ĐƠN HÀNG
            foreach($CMSNT->get_list("SELECT * FROM `taikhoan` WHERE `code` = '".$orders['code']."' ") as $taikhoan)
            {
                $uid = explode("|", $taikhoan['chitiet'])[0];
                // XÓA TÀI NGUYÊN
                $CMSNT->remove("taikhoan", " `id` = '".$taikhoan['id']."' ");
                // XÓA FILE BACKUP
                unlink("../backup/".$uid.'.html');
            }
            // XÓA ĐƠN HÀNG
            $CMSNT->remove("orders", " `code` = '".$orders['code']."' ");
            // GHI LOG
            $file = @fopen('../logs/XoaDonHang.txt', 'a');
            if ($file)
            {
                $data = "[LOG] Đơn hàng #".$orders['code']." đã bị xóa khỏi hệ thống vào lúc ".gettime().PHP_EOL;
                fwrite($file, $data);
                fclose($file);
            }
        }
    }