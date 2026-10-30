{ pkgs, inputs, ... }:
{
  programs.obs-studio.enable = true;
  programs.librewolf = {
    enable = true;
    settings = {
      "browser.privatebrowsing.autostart" = true;
      "middlemouse.paste" = false;
      "general.autoScroll" = true;
    };
  };

  home.packages =
    with pkgs;
    [
      blueman
      evince
      freetube
      gimp
      gnome-weather
      kdePackages.kdeconnect-kde
      # kicad
      libreoffice
      mousepad
      networkmanagerapplet
      pavucontrol
      peazip
      qalculate-gtk
      ristretto
      seahorse
      spotify
      srain
      thunar
      thunderbird
      vesktop
      vlc
    ]
    ++ [
      inputs.helium.defaultPackage.${pkgs.stdenv.hostPlatform.system}
    ];
}
