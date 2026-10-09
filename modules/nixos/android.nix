{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    android-studio
    android-tools
  ];

  users.users."anhdong" = {
    extraGroups = [ 
      "adbusers" # Allows USB debugging with physical devices
      "kvm"      # Enables hardware acceleration for the Android Emulator
    ];
  };
}
