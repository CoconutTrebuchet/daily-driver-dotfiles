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
    "helium.desktop|21"
    "vesktop.desktop|20"
    "thunar.desktop|19"
    "steam.desktop|18"
    "thunderbird.desktop|17"
    "org.kde.kdeconnect.app.desktop|16"
    "org.gnome.Weather.desktop|15"
    "startcenter.desktop|14"
    "blueman-manager.desktop|13"
    "spotify.desktop|12"
    "nm-connection-editor.desktop|11"
    "org.pulseaudio.pavucontrol.desktop|10"
    "org.kicad.kicad.desktop|9"
    "PCSX2.desktop|8"
    "gimp.desktop|7"
    "qalculate-gtk.desktop|6"
    "librewolf.desktop|5"
    "com.obsproject.Studio.desktop|4"
    "org.prismlauncher.PrismLauncher.desktop|3"
    "peazip.desktop|2"
    "vlc.desktop|1"
  ];
}
