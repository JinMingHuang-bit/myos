
if [ "$(id -u)" -ne 0 ]; then
    echo "请使用sudo运行此脚本或切换到root用户"
    exit 1
fi

# 转到主目录
cd ~ || { echo "无法切换到主目录"; exit 1; }

# 挂载boot.img到/media目录
mount_point="/media/"
echo "正在挂载boot.img到$mount_point..."
sudo mount boot.img /media/ -t vfat -o loop || { echo "挂载失败"; exit 1; }

# 进入myos/kernel目录
kernel_dir="myos/kernel"
echo "正在进入$kernel_dir目录..."
cd myos/kernel || { echo "无法进入$kernel_dir目录"; umount "$mount_point"; exit 1; }

# 复制kernel.bin文件
echo "正在复制kernel.bin到挂载点..."
sudo cp kernel.bin /media/ || { echo "复制失败"; umount "$mount_point"; exit 1; }

# 同步数据
echo "正在同步数据..."
sudo sync || { echo "同步失败"; umount "$mount_point"; exit 1; }

# 卸载挂载点
echo "正在卸载$mount_point..."
sudo umount /media/ || { echo "卸载失败"; exit 1; }

echo "操作成功完成！"