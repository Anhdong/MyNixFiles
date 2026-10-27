{ pkgs, ... }:
{
  home.packages = with pkgs; [
    localsend
    onlyoffice-desktopeditors
    notesnook
    vesktop
    proton-vpn-cli
    bitwarden-cli
  ];
}
