{ pkgs, config, ... }:
{
    home.packages = with pkgs; [
	swaybg
    ];

    systemd.user.services.swaybg = {
      Unit = {
	Description = "Wallpaper (swaybg)";
	PartOf = [ "graphical-session.target" ];
	After = [ "graphical-session.target" ];
      };
      Service = {
	ExecStart = "${pkgs.swaybg}/bin/swaybg -i %h/.config/background -m fill";
	Restart = "on-failure";
      };
      Install.WantedBy = [ "graphical-session.target" ];
    };
}
