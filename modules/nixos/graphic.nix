{ config, pkgs, ... }:

{
  boot.kernelParams = [
    "i915.force_probe=!7d51"
    "xe.force_probe=7d51"
  ];

  boot.initrd.kernelModules = [ "xe" ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true; #For 32bit steam game or wineapp

    extraPackages = with pkgs; [
      # Video
      intel-media-driver
      vpl-gpu-rt

      # oneAPI / Level Zero
      level-zero
      intel-compute-runtime
    ];
  };

  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "iHD";
  };

  environment.systemPackages = with pkgs; [
    pciutils # Tool to check
    intel-gpu-tools
    libva-utils
    vulkan-tools
  ];
}
