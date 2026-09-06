{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gh
    neovim
    vscodium
  ];

}
