{ pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    dbeaver-bin
  ];

  services.mysql = {
    enable = true;
    package = pkgs.mariadb;

    # Create user and database
    ensureDatabases = [ "my_database" ];
    ensureUsers = [
      {
        name = "anhdong";
        ensurePermissions = {
          "my_database.*" = "ALL PRIVILEGES";
        };
      }
    ];
  };

  # Prevents the daemon from starting automatically on boot
  systemd.services.mysql.wantedBy = lib.mkForce [ ];
}
