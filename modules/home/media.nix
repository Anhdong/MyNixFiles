{ pkgs, ... }:
{
  home.packages = with pkgs; [
    blender
    onlyoffice-desktopeditors
    vesktop
  ];
}
