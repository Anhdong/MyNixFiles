{ config, pkgs, ... }:

{
  imports = [
    ./modules/home
  ];

  #User
  home.username = "anhdong";
  home.homeDirectory = "/home/anhdong";

  # Do not change this! It a compatible version
  home.stateVersion = "26.05"; 

  programs.home-manager.enable = true;

  # Variables when you using shell provided by Home Manager
  home.sessionVariables = {
    EDITOR = "nvim";
  };
}
