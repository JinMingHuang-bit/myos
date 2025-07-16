#!/bin/bash

# 脚本名称：automount_copy.sh
# 功能：自动挂载boot.img，拷贝loader.bin文件，然后卸载

# 切换到上级目录
echo "切换到上级目录..."
cd ~ || { echo "cd ~ 失败"; exit 1; }

# 挂载boot.img到/media/
echo "挂载boot.img..."
sudo mount boot.img /media/ -t vfat -o loop || { echo "挂载失败"; exit 1; }

# 切换回myos目录
echo "切换回myos目录..."
cd myos || { echo "cd myos 失败"; exit 1; }

# 拷贝loader.bin文件
echo "拷贝loader.bin到/media/"
sudo cp loader.bin /media/ || { echo "拷贝失败"; sudo umount /media/; exit 1; }

# 同步文件系统
echo "同步文件系统..."
sudo sync

# 卸载/media/
echo "卸载/media/"
sudo umount /media/ || { echo "卸载失败"; exit 1; }

echo "所有操作已完成！"
