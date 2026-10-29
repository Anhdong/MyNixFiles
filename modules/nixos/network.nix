{ config, pkgs, ... }:

{
  networking.hostName = "nixos";

  # Enable networking
  networking.networkmanager.enable = false;
  networking.wireless.iwd.enable = true;
  networking.dhcpcd.wait = "background"; #dhcpcd wait in background
}







