{ config, pkgs, serpantinum, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Ho_Chi_Minh";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "vi_VN";
    LC_IDENTIFICATION = "vi_VN";
    LC_MEASUREMENT = "vi_VN";
    LC_MONETARY = "vi_VN";
    LC_NAME = "vi_VN";
    LC_NUMERIC = "vi_VN";
    LC_PAPER = "vi_VN";
    LC_TELEPHONE = "vi_VN";
    LC_TIME = "vi_VN";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."anhdong" = {
    isNormalUser = true;
    description = "anhdong";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # Flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Add niri compositor & serpantinum
  programs.niri.enable = true;
  programs.serpantinum.enable = true;
  
  # List packages installed in system profile.
  environment.systemPackages = with pkgs; [
    fish
    starship
    vim
    kitty
    git
    firefox
  
    (serpantinum.packages.${pkgs.stdenv.hostPlatform.system}.default)
  ];

  # Hardware graphics
  hardware.graphics.enable = true;

  # DO NOT REMOVE THIS! This is the version you install NixOS
  system.stateVersion = "26.05"; # Did you read the comment?

}
