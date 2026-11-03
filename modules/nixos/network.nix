{ config, pkgs, ... }:
{
  networking = {
    hostName = "nixos";

    # Enable networking
    networkmanager.enable = false;
    wireless.iwd.enable = true;
    dhcpcd.wait = "background"; 
  };
}








