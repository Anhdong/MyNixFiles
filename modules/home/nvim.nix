{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;    # `vi` -> nvim
    vimAlias = true;   # `vim` -> nvim

    extraPackages = with pkgs; [
      # LSP servers (was previously Mason's job)
      pyright
      lua-language-server
      jdt-language-server

      # required by nvim-treesitter's `main` branch to build/update parsers
      tree-sitter
    ];
  };
}
