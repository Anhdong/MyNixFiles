{ pkgs, config, ... }:
{
  services.awww = {
    enable = true;
    extraArgs = [
      "-q"
    ];
  };
}
