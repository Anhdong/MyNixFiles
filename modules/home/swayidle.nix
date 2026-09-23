{ config, pkgs, ... }:
{
  services.swayidle = {
    enable = true;
    
    # New syntax: attribute set keyed by event name
    events = {
      lock = "${pkgs.swaylock-effects}/bin/swaylock";
      before-sleep = "${pkgs.swaylock-effects}/bin/swaylock";
    };

    # Timeouts remain a list
    timeouts = [
      {
        # 5 minutes: Lock the screen
        timeout = 300; 
        command = "${pkgs.swaylock-effects}/bin/swaylock";
      }
      {
        # 8 minutes: Suspend the system
        timeout = 480; 
        command = "${pkgs.systemd}/bin/systemctl suspend";
      }
    ];
  };
}