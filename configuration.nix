{ config, pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ]
    ++ (
      let
        dir = ./modules/nixos;
      in
        map
          (name: dir + "/${name}")
          (builtins.filter
            (name: builtins.match ".*\\.nix" name != null)
            (builtins.attrNames (builtins.readDir dir)))
    );


  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;


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

  # Add niri compositor
  programs.niri.enable = true;
  
  # List packages installed in system profile.
  environment.systemPackages = with pkgs; [
    fish
    starship
    vim
    kitty
    git
  
  ];

  # Hardware graphics
  hardware.graphics.enable = true;

  # XWAYLAND
  programs.xwayland.enable = true;

  # DO NOT REMOVE THIS! This is the version you install NixOS
  system.stateVersion = "26.05"; # Did you read the comment?

}
