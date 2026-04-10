#!/bin/bash
# 自动挂载boot.img镜像，复制loader.bin文件并卸载的脚本
# 用法：sudo ./loader.sh

# 检查root权限
if [ "$(id -u)" -ne 0 ]; then
    echo "错误：必须使用sudo或root权限运行此脚本" >&2
    exit 1
fi

# 定义目录路径
PARENT_DIR="$(dirname "$(pwd)")"
MOUNT_POINT="/media"l
SOURCE_FILE="/home/student/myos/loader.bin"  # 使用完整绝对路径
IMAGE_FILE="myos/loader.img"

# 检查boot.img是否存在
if [ ! -f "$PARENT_DIR/$IMAGE_FILE" ]; then
    echo "错误：未找到$IMAGE_FILE文件" >&2
    exit 1
fi

# 创建挂载点（确保目录存在）
mkdir -p "$MOUNT_POINT"
echo "使用挂载点：$MOUNT_POINT"

# 检查并卸载已挂载的设备
if mount | grep -q "$MOUNT_POINT"; then
    echo "卸载已挂载的设备..."
    umount "$MOUNT_POINT" 2>/dev/null
fi

# 挂载镜像文件
echo "挂载 $IMAGE_FILE 到 $MOUNT_POINT..."
mount -t vfat -o loop "$PARENT_DIR/$IMAGE_FILE" "$MOUNT_POINT"
if [ $? -ne 0 ]; then
    echo "错误：挂载失败" >&2
    exit 1
fi

# 复制文件（使用正确的源文件路径）
echo "复制 $SOURCE_FILE 到挂载点..."
cp "$SOURCE_FILE" "$MOUNT_POINT/"
if [ $? -ne 0 ]; then
    echo "错误：文件复制失败" >&2
    umount "$MOUNT_POINT"
    exit 1
fi

# 确保数据写入
echo "同步数据..."
sync

# 卸载设备
umount "$MOUNT_POINT"
if [ $? -eq 0 ]; then
    echo "操作成功完成！$SOURCE_FILE 已写入镜像"
else
    echo "警告：卸载失败，请手动检查" >&2
    exit 1
fi