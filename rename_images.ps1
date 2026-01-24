# 图片目录路径
$imageDir = "g:\flutter-learn\ykd_tea_app\assets\images"

# 遍历目录中的所有文件
Get-ChildItem -Path $imageDir -File | ForEach-Object {
    $oldName = $_.BaseName
    $extension = $_.Extension
    $newBaseName = $oldName
    
    # 处理中文文件名
    switch -Wildcard ($oldName) {
        "*下一步*" { $newBaseName = $newBaseName -replace "下一步", "next_step" }
        "*企业服务*" { $newBaseName = $newBaseName -replace "企业服务", "enterprise_service" }
        "*优惠券*" { $newBaseName = $newBaseName -replace "优惠券", "coupon" }
        "*优惠券背景*" { $newBaseName = $newBaseName -replace "优惠券背景", "coupon_background" }
        "*全局_背景*" { $newBaseName = $newBaseName -replace "全局_背景", "global_background" }
        "*全选*" { $newBaseName = $newBaseName -replace "全选", "select_all" }
        "*减*" { $newBaseName = $newBaseName -replace "减", "minus" }
        "*加*" { $newBaseName = $newBaseName -replace "加", "plus" }
        "*合作企业图片*" { $newBaseName = $newBaseName -replace "合作企业图片", "cooperative_enterprise" }
        "*咨询*" { $newBaseName = $newBaseName -replace "咨询", "consultation" }
        "*品质保证*" { $newBaseName = $newBaseName -replace "品质保证", "quality_guarantee" }
        "*品质百货*" { $newBaseName = $newBaseName -replace "品质百货", "quality_department_store" }
        "*商城*" { $newBaseName = $newBaseName -replace "商城", "mall" }
        "*商城_选中*" { $newBaseName = $newBaseName -replace "商城_选中", "mall_selected" }
        "*地址*" { $newBaseName = $newBaseName -replace "地址", "address" }
        "*地址BG*" { $newBaseName = $newBaseName -replace "地址BG", "address_bg" }
        "*增值服务bg*" { $newBaseName = $newBaseName -replace "增值服务bg", "value_added_service_bg" }
        "*完成*" { $newBaseName = $newBaseName -replace "完成", "complete" }
        "*定位*" { $newBaseName = $newBaseName -replace "定位", "location" }
        "*客服*" { $newBaseName = $newBaseName -replace "客服", "customer_service" }
        "*小程序*" { $newBaseName = $newBaseName -replace "小程序", "mini_program" }
        "*已完成*" { $newBaseName = $newBaseName -replace "已完成", "completed" }
        "*底部弹层_关闭*" { $newBaseName = $newBaseName -replace "底部弹层_关闭", "bottom_modal_close" }
        "*待付款*" { $newBaseName = $newBaseName -replace "待付款", "pending_payment" }
        "*待发货*" { $newBaseName = $newBaseName -replace "待发货", "pending_delivery" }
        "*待收货*" { $newBaseName = $newBaseName -replace "待收货", "pending_receipt" }
        "*我的*" { $newBaseName = $newBaseName -replace "我的", "my" }
        "*我的_选中*" { $newBaseName = $newBaseName -replace "我的_选中", "my_selected" }
        "*我的优惠券*" { $newBaseName = $newBaseName -replace "我的优惠券", "my_coupon" }
        "*推广*" { $newBaseName = $newBaseName -replace "推广", "promotion" }
        "*推广大使*" { $newBaseName = $newBaseName -replace "推广大使", "promotion_ambassador" }
        "*搜索*" { $newBaseName = $newBaseName -replace "搜索", "search" }
        "*日常年报*" { $newBaseName = $newBaseName -replace "日常年报", "daily_annual_report" }
        "*未选框*" { $newBaseName = $newBaseName -replace "未选框", "unselected_box" }
        "*条形码*" { $newBaseName = $newBaseName -replace "条形码", "barcode" }
        "*框*" { $newBaseName = $newBaseName -replace "框", "box" }
        "*椭圆形*" { $newBaseName = $newBaseName -replace "椭圆形", "oval" }
        "*添加*" { $newBaseName = $newBaseName -replace "添加", "add" }
        "*社区购标签*" { $newBaseName = $newBaseName -replace "社区购标签", "community_purchase_tag" }
        "*税务票据*" { $newBaseName = $newBaseName -replace "税务票据", "tax_invoice" }
        "*编组*" { $newBaseName = $newBaseName -replace "编组", "group" }
        "*补货中*" { $newBaseName = $newBaseName -replace "补货中", "restocking" }
        "*财务咨询*" { $newBaseName = $newBaseName -replace "财务咨询", "financial_consultation" }
        "*足迹*" { $newBaseName = $newBaseName -replace "足迹", "footprint" }
        "*选中框*" { $newBaseName = $newBaseName -replace "选中框", "selected_box" }
        "*限时秒杀*" { $newBaseName = $newBaseName -replace "限时秒杀", "flash_sale" }
        "*零食便利*" { $newBaseName = $newBaseName -replace "零食便利", "snack_convenience" }
        "*首页*" { $newBaseName = $newBaseName -replace "首页", "home" }
        "*首页_选中*" { $newBaseName = $newBaseName -replace "首页_选中", "home_selected" }
    }
    
    # 处理重复文件的 (1) 后缀
    $newBaseName = $newBaseName -replace '\(1\)$', '_1'
    $newBaseName = $newBaseName -replace '\(2\)$', '_2'
    
    # 执行重命名
    if ($newBaseName -ne $oldName) {
        $newName = "$newBaseName$extension"
        $oldPath = $_.FullName
        $newPath = Join-Path -Path $imageDir -ChildPath $newName
        
        Write-Host "重命名: $oldName$extension -> $newName"
        Rename-Item -Path $oldPath -NewName $newPath -Force
    }
}

Write-Host "重命名完成！"
