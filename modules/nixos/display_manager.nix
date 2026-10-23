{ pkgs, lib, ... }:
{
  # --- Compositor -------
  programs.mango.enable = true;

  # --- UWSM -------------
  # Generates the "mango-uwsm.desktop" session entry.
  programs.uwsm = {
    enable = true;
    waylandCompositors.mango = {
      prettyName = "Mango";
      comment = "Mango compositor managed by UWSM";
      binPath = "/run/current-system/sw/bin/mango";
    };
  };

  # --- greetd + tuigreet ---------
  services.greetd = {
    enable = true;
    settings.default_session = {
      # On older nixpkgs use pkgs.greetd.tuigreet instead of pkgs.tuigreet.
      command = "${lib.getExe pkgs.tuigreet} --time --remember --asterisks --greeting 'Welcome back' --cmd 'uwsm start mango-uwsm.desktop'";
      user = "greeter";
    };
  };

  # Keep boot/systemd messages off the greeter's TTY.
  systemd.services.greetd.serviceConfig = {
    Type = "idle";
    StandardInput = "tty";
    StandardOutput = "tty";
    StandardError = "journal";
    TTYReset = true;
    TTYVHangup = true;
    TTYVTDisallocate = true;
  };

  # Lets tuigreet's --remember write its cache.
  systemd.tmpfiles.rules = [
    "d /var/cache/tuigreet 0755 greeter greeter -"
  ];

}
