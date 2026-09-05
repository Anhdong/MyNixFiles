{ config, pkgs, inputs, ... }:

{
  imports = [ 
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
      ./modules/nixos/audio.nix
      ./modules/nixos/timezone_locale.nix
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

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "anhdong" = import ./home.nix;
    };
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # SDDM
  programs.silentSDDM = {
    enable = true;
    theme = "default";
  };

  # Add niri compositor & serpantinum
  programs.niri.enable = true;
  
  # List packages installed in system profile.
  environment.systemPackages = with pkgs; [
    waybar
    rofi
    swaynotificationcenter   
    fish
    starship
    vim
    alacritty
    git
    firefox
  
  ];

  # Hardware graphics
  hardware.graphics.enable = true;

  # DO NOT REMOVE THIS! This is the version you install NixOS
  system.stateVersion = "26.05"; # Did you read the comment?

}
