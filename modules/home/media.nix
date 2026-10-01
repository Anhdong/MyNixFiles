{ pkgs, ... }:
{
  home.packages = with pkgs; [
    onlyoffice-desktopeditors
    vesktop
    audacity
  ];
}
