{ pkgs, ... }:
{
    home.packages = with pkgs; [
	#Default gtk icon
	hicolor-icon-theme
	adwaita-icon-theme
    ];

    gtk = {
	enable = true;
	theme = {
	    name = "adw-gtk3-dark";
	    package = pkgs.adw-gtk3;
	};
	iconTheme = {
	    name = "Papirus-Dark";
	    package = pkgs.papirus-icon-theme.override { color = "black"; };
	};
};

    #Apply dark theme to gtk
    dconf.settings = {
	"org/gnome/desktop/interface" = {
	  color-scheme = "prefer-dark";
	  gtk-theme = "adw-gtk3-dark";
	  font-antialiasing = "rgba";
	  font-hinting = "slight";
	};

	"org/gnome/desktop/privacy" = {
	  remember-recent-files = false; 
	};
    };
} 
