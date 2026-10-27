{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    fzf
    eza
    bat
    ripgrep
    
    blesh
    starship
  ];

  programs.bash = {
    enable = true;

    shellAliases = {
      ".." = "cd ..";

      ls = "eza";
      ll = "eza -l";
      la = "eza -a";
      lla = "eza -la";

      ff = "fastfetch";
      nv = "nvim";
      y = "yazi";

      nswitch = "sudo nixos-rebuild switch --flake";
      ntest = "sudo nixos-rebuild test --flake";
      hswitch = "home-manager switch --flake";
    };

    initExtra = ''
      # Load ble.sh
      [[ $- == *i* ]] && source ${pkgs.blesh}/share/blesh/ble.sh
    '';
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      add_newline = false;

      # Optional: customize the prompt
      format = "$directory$git_branch$git_status$character";

      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[❯](bold red)";
      };
    };
  };
}

