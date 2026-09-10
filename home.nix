{ config, pkgs, ... }:

{
  #Scan home modules and import
  imports = [
    ./modules/home/desktop.nix
    ./modules/home/dev.nix
    ./modules/home/fonts.nix
    ./modules/home/helium.nix
    ./modules/home/mako.nix
    ./modules/home/tui.nix
  ];
  #User
  home.username = "anhdong";
  home.homeDirectory = "/home/anhdong";

  # Do not change this! It a compatible version
  home.stateVersion = "26.05"; 

  home.packages = with pkgs; [
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
