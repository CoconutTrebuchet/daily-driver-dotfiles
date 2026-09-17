{
  config,
  lib,
  pkgs,
  ...
}:
{
  home = {
    pointerCursor = {
      enable = true;
      name = "phinger-cursors-dark";
      package = pkgs.phinger-cursors;
      gtk.enable = true;
      x11.enable = true;
      size = 24;
    };
  };

  gtk = {
    enable = true;
    theme = {
      name = "Qogir-Dark";
      package = pkgs.qogir-theme;
    };

    iconTheme = {
      name = "Qogir-Dark";
      package = pkgs.qogir-icon-theme;
    };

    font = {
      name = "Adwaita Sans 11";
    };

    gtk3 = {
      bookmarks = [
        "file:///home/cocotreb/Documents"
        "file:///home/cocotreb/Downloads"
        "file:///home/cocotreb/Music"
        "file:///home/cocotreb/Nix"
        "file:///home/cocotreb/Pictures"
        "file:///home/cocotreb/Projects"
        "file:///home/cocotreb/Videos"
        "file:///home/cocotreb/.local/share/Steam/steamapps/compatdata/799600/pfx/dosdevices/c:/users/steamuser/Saved%20Games/Cosmoteer"
      ];
      extraConfig = {
        gtk-application-prefer-dark-theme = 1;
      };
    };

    gtk4 = {
      theme = config.gtk.theme;
      extraConfig = {
        gtk-application-prefer-dark-theme = 1;
      };
    };
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gtk-enable-primary-paste = false;
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "gtk3";
  };

  # explicitly pin fuzzel menu entries
  home.file.".cache/fuzzel".text = lib.concatStringsSep "\n" [
    "helium.desktop|20000"
    "vesktop.desktop|19000"
    "thunar.desktop|18000"
    "steam.desktop|17000"
    "org.gnome.Weather.desktop|16000"
    "startcenter.desktop|15000"
    "org.kde.kdeconnect.app.desktop|14000"
    "blueman-manager.desktop|13000"
    "spotify.desktop|12000"
    "nm-connection-editor.desktop|11000"
    "org.pulseaudio.pavucontrol.desktop|10000"
    "org.kicad.kicad.desktop|9000"
    "PCSX2.desktop|8000"
    "gimp.desktop|7000"
    "qalculate-gtk.desktop|6000"
    "librewolf.desktop|5000"
    "com.obsproject.Studio.desktop|4000"
    "org.prismlauncher.PrismLauncher.desktop|3000"
    "peazip.desktop|2000"
    "vlc.desktop|1000"
  ];
}
