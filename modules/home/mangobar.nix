{ pkgs, inputs, ... }:
let
  mangobar = inputs.mangobar.packages.${pkgs.system}.mangobar;
in
{
  imports = [ inputs.mangobar.homeManagerModules.default ];

  home.packages = [ mangobar ];

  systemd.user.services.mangobar = {
    Unit = {
      Description = "A status bar for MangoWM";
      PartOf = [ "graphical-session.target" ];
      After = [ "graphical-session.target" ];
    };
    Service = {
      ExecStart = "${mangobar}/bin/mangobar";
      Restart = "on-failure";
      RestartSec = 2;
    };
    Install.WantedBy = [ "graphical-session.target" ];
  };
}
