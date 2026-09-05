{ config, pkgs, ... }:

{
  imports = [
    ./modules/home/fonts.nix
  ];  

  home.username = "anhdong";
  home.homeDirectory = "/home/anhdong";

  # Do not change this! It a compatible version
  home.stateVersion = "26.05"; 

  home.packages = with pkgs; [
    yazi
  ];

  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };
  
  # Variables when you using shell provided by Home Manager
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Home Manager install and use itself
  programs.home-manager.enable = true;
}
