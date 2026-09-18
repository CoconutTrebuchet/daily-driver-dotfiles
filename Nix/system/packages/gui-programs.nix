{
  pkgs,
  pkgs-stable,
  inputs,
  ...
}:
{
  programs.obs-studio.enable = true;

  environment.systemPackages =
    with pkgs;
    [
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
      vesktop
      qalculate-gtk
      seahorse
      spotify
      thunar
      vlc
    ]
    ++ [
      inputs.helium.defaultPackage.${pkgs.stdenv.hostPlatform.system}
    ];
}
