#!/bin/bash
#Vendor Setup Script
echo "Setting up repositories for Redmi 12 5G / Poco M6 Pro 5G (sky)..."

# Clone BCR repository
echo "Cloning BCR repository..."
git clone https://github.com/xiaomi-sm4450-sky/vendor_bcr.git vendor/bcr

# Clone the kernel source
echo "Cloning kernel repository..."
git clone https://github.com/lostark13/kernel_xiaomi_sky.git -b lineage-20.0 kernel/xiaomi/sky
git clone https://github.com/lostark13/kernel_xiaomi_sky-modules.git -b lineage-23.1 kernel/xiaomi/sm8450-modules

# Clone the vendor source
echo "Cloning vendor repository..."
git clone https://github.com/xiaomi-sm4450-sky/android_vendor_xiaomi_sky.git -b 16.2 vendor/xiaomi/sky

# Clone the firmware source
echo "Cloning firmware repository..."
git clone https://codeberg.org/askthekaif/android_vendor_xiaomi_sky-firmware.git -b OS2.0.202.0.VMWINXM vendor/xiaomi/sky-firmware

# Clone the dolby repository
echo "Cloning dolby hardware repository..."
git clone https://github.com/Pong-Development/hardware_dolby.git -b 16 hardware/dolby
sed -i '/version="1.0" type="device"/c\<manifest version="1.0" type="device" target-level="6">' "hardware/dolby/configs/vintf/vendor.dolby.media.c2@1.0-service.xml"

# Clone the hardware repository
echo "Cloning hardware repository..."
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-23.2 hardware/xiaomi

echo "Setup complete. Repositories are ready."

echo "Completed, proceeding to lunch"
