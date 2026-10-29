{ config, pkgs, inputs, ... }:
{
  imports = [
      ./hardware-configuration.nix
      ./modules/nixos
    ];

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."anhdong" = {
    isNormalUser = true;
    description = "anhdong";
    extraGroups = [ 
	"networkmanager" 
	"wheel" 
	"video" 
	"render"
	"storage"
	];
    packages = with pkgs; [];
  };

  # Flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  
  #Enable firmware update manager
  services.fwupd.enable = true;
  
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  #D-Bus service
  programs.dconf.enable = true;

  # DO NOT REMOVE THIS! This is the version you install NixOS
  system.stateVersion = "26.05"; # Did you read the comment?

}
