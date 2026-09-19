{
  pkgs,
  ...
}:
{
  programs.alacritty.enable = true;
  programs.obs-studio.enable = true;
  programs.librewolf = {
    enable = true;
    settings = {
      "browser.privatebrowsing.autostart" = true;
      "middlemouse.paste" = false;
      "general.autoScroll" = true;
    };
  };

  home.packages = with pkgs; [
    blueman
    freetube
    gimp
    gnome-text-editor
    gnome-weather
    kdePackages.kdeconnect-kde
    kicad
    libreoffice
    networkmanagerapplet
    pavucontrol
    peazip
    qalculate-gtk
    seahorse
    spotify
    thunar
    thunderbird
    vesktop
    vlc
  ];
}
