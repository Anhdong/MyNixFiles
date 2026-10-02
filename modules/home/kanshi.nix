{ pkgs, ... }:
{
services.kanshi = {
  enable = true;
  systemdTarget = "graphical-session.target"; 
  settings = [
    # 1. AC
    {
      profile.name = "ac";
      profile.outputs = [
        {
          criteria = "eDP-1";
          mode = "3072x1920@120Hz";
	  scale = 2.0;
	  adaptiveSync = true;
        }
      ];
    }
    # 2. Battery
    {
      profile.name = "battery";
      profile.outputs = [
        {
          criteria = "eDP-1";
          mode = "3072x1920@60Hz";
	  scale = 2.0;
        }
      ];
    }
    # 3. Mirroring
    {
      profile.name = "mirror";
      profile.outputs = [
        {
          criteria = "eDP-1";
          mode = "3072x1920@60Hz";
	  scale = 2.0;
	  position = "0,0";
        }
        {
          criteria = "HDMI-A-1";
          position = "0,0";
        }
      ];
    }
  ];
};
}
