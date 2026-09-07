{ pkgs, ... }:
{
  home.packages = with pkgs; [
    foot
    vim
    neovim
    starfish
    git
    gh
    vscodium
  ];

}
