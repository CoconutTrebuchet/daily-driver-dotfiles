{ pkgs, ... }:

{
  home.packages = with pkgs; [
    autotiling
    fuzzel
    grim
    libnotify
    slurp
    swaybg
    swaylock-effects
    swaynotificationcenter
    # swayosd
    waybar
    wev
    wl-clipboard
    wlogout
  ];
}
