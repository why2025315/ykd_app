import os

# 图片目录路径
image_dir = r"g:\flutter-learn\ykd_tea_app\assets\images"

# 定义中文到英文的映射
name_map = {
    "下一步": "next_step",
    "企业服务": "enterprise_service",
    "优惠券": "coupon",
    "优惠券背景": "coupon_background",
    "全局_背景": "global_background",
    "全选": "select_all",
    "减": "minus",
    "加": "plus",
    "合作企业图片": "cooperative_enterprise",
    "咨询": "consultation",
    "品质保证": "quality_guarantee",
    "品质百货": "quality_department_store",
    "商城": "mall",
    "商城_选中": "mall_selected",
    "地址": "address",
    "地址BG": "address_bg",
    "增值服务bg": "value_added_service_bg",
    "完成": "complete",
    "定位": "location",
    "客服": "customer_service",
    "小程序": "mini_program",
    "已完成": "completed",
    "底部弹层_关闭": "bottom_modal_close",
    "待付款": "pending_payment",
    "待发货": "pending_delivery",
    "待收货": "pending_receipt",
    "我的": "my",
    "我的_选中": "my_selected",
    "我的优惠券": "my_coupon",
    "推广": "promotion",
    "推广大使": "promotion_ambassador",
    "搜索": "search",
    "日常年报": "daily_annual_report",
    "未选框": "unselected_box",
    "条形码": "barcode",
    "框": "box",
    "椭圆形": "oval",
    "添加": "add",
    "社区购标签": "community_purchase_tag",
    "税务票据": "tax_invoice",
    "编组": "group",
    "补货中": "restocking",
    "财务咨询": "financial_consultation",
    "足迹": "footprint",
    "选中框": "selected_box",
    "限时秒杀": "flash_sale",
    "零食便利": "snack_convenience",
    "首页": "home",
    "首页_选中": "home_selected"
}

# 遍历目录中的所有文件
for filename in os.listdir(image_dir):
    if os.path.isfile(os.path.join(image_dir, filename)):
        # 分离文件名和扩展名
        name, ext = os.path.splitext(filename)
        new_name = name
        
        # 处理中文文件名
        for chinese_name, english_name in name_map.items():
            if chinese_name in new_name:
                new_name = new_name.replace(chinese_name, english_name)
        
        # 处理重复文件的 (1) 后缀
        new_name = new_name.replace('(1)', '_1')
        new_name = new_name.replace('(2)', '_2')
        
        # 执行重命名
        if new_name != name:
            old_path = os.path.join(image_dir, filename)
            new_path = os.path.join(image_dir, new_name + ext)
            os.rename(old_path, new_path)
            print(f"重命名: {filename} -> {new_name}{ext}")

print("重命名完成！")
