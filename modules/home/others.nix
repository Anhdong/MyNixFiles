{ pkgs, ... }:
{
  home.packages = with pkgs; [
    onlyoffice-desktopeditors
    vesktop
    proton-vpn-cli
    bitwarden-cli
  ];
}
