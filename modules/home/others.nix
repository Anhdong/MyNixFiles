{ pkgs, ... }:
{
  home.packages = with pkgs; [
    onlyoffice-desktopeditors
    vesktop
    audacity
    proton-vpn-cli
    bitwarden-cli
  ];
}
