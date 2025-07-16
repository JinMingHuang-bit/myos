#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "请使用sudo运行此脚本或切换到root用户"
    exit 1
fi

# 明确指定 boot.img 的绝对路径（替换为实际路径）
BOOT_IMG="/home/student/boot.img"  # 👈 修改为你的实际路径
MOUNT_POINT="/media/"

# 确保挂载点存在
sudo mkdir -p "$MOUNT_POINT" || { echo "创建挂载点失败"; exit 1; }

# 挂载 boot.img
echo "正在挂载 $BOOT_IMG 到 $MOUNT_POINT..."
sudo mount "$BOOT_IMG" "$MOUNT_POINT" -t vfat -o loop || { echo "挂载失败"; exit 1; }

# 进入 kernel 目录（使用绝对路径避免依赖工作目录）
KERNEL_DIR="/home/student/myos/kernel"
echo "正在进入 $KERNEL_DIR 目录..."
cd "$KERNEL_DIR" || { echo "无法进入 $KERNEL_DIR 目录"; sudo umount "$MOUNT_POINT"; exit 1; }

# 复制 kernel.bin
echo "正在复制 kernel.bin 到挂载点..."
sudo cp kernel.bin "$MOUNT_POINT/" || { echo "复制失败"; sudo umount "$MOUNT_POINT"; exit 1; }

# 同步并卸载
echo "正在同步数据..."
sudo sync || { echo "同步失败"; sudo umount "$MOUNT_POINT"; exit 1; }

echo "正在卸载 $MOUNT_POINT..."
sudo umount "$MOUNT_POINT" || { echo "卸载失败"; exit 1; }

echo "操作成功完成！"