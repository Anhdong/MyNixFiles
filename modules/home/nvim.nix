{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;    # `vi` -> nvim
    vimAlias = true;   # `vim` -> nvim

    extraPackages = with pkgs; [
      tree-sitter
    ];
  };
}
