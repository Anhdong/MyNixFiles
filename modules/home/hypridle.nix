{ pkgs, config, ... }:
{
  services.hypridle = {
    enable = true;

    settings = {
      general = {
        # Lock screen command
        lock_cmd = "pidof hyprlock || ${pkgs.hyprlock}/bin/hyprlock";
        # Lock before suspending
        before_sleep_cmd = "loginctl lock-session";
        # Prevent hypridle from starting twice
        ignore_dbus_inhibit = false;
      };

      listener = [
        # 5 Minutes: Lock Screen
        {
          timeout = 300; # 5 minutes in seconds
          on-timeout = "loginctl lock-session";
        }

        # 8 Minutes: Sleep / Suspend System
        {
          timeout = 480; # 8 minutes in seconds
          on-timeout = "systemctl suspend";
        }
      ];
    };
  };
}
