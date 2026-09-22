{ config, pkgs, ... }:
{
  # Force the modern Intel 'xe' driver in early boot
  boot.initrd.kernelModules = [ "xe" ];

  # Enable graphics drivers (Mesa, Vulkan, OpenGL)
  hardware.graphics = {
    enable = true;
    enable32Bit = true; # Required if you plan to run Steam or 32-bit Wine applications
    
    extraPackages = with pkgs; [
      # VA-API driver for hardware-accelerated video playback
      intel-media-driver
      
      # Intel Quick Sync Video (QSV) runtime for hardware encoding
      vpl-gpu-rt
      
      # OpenCL and Level Zero for compute tasks
      intel-compute-runtime
    ];
  };

  # Force applications to use the modern Intel VA-API driver
  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "iHD";
  };

  # Packages to monitor igpu
  environment.systemPackages = with pkgs; [
    libva-utils      # Provides 'vainfo' to test video hardware acceleration
    pciutils         # Provides 'lspci' to verify kernel driver binding
    intel-gpu-tools  # Provides 'intel_gpu_top' to monitor iGPU usage in real-time
];
}
