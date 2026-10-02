{ config, pkgs, inputs, ... }:
{
  imports = [
      ./hardware-configuration.nix
      ./modules/nixos
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;


  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."anhdong" = {
    isNormalUser = true;
    description = "anhdong";
    extraGroups = [ "networkmanager" "wheel" "video" "render"];
    packages = with pkgs; [];
  };

  # Flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  #Window Manager
  programs.mango.enable = true;
  programs.labwc.enable = true;

  #D-Bus service
  programs.dconf.enable = true;

  # DO NOT REMOVE THIS! This is the version you install NixOS
  system.stateVersion = "26.05"; # Did you read the comment?

}
