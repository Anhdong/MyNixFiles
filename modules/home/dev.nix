{ pkgs, ... }:
{
  home.packages = with pkgs; [
    foot
    vim
    neovim
    git
    gh
    vscodium
  ];

}
