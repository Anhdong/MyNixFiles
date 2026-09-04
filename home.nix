{ pkgs, ... }:

{
  home.username = "$USER";
  home.homeDirectory = "$HOME";

  home.stateVersion = "26.11";

  programs.bash = {
    enable = true;
  };

  home.packages = [
    pkgs.htop
    pkgs.fortune
  ];

}


