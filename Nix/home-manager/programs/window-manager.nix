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
    waybar
    wev
    wl-clipboard
    wlogout
  ];
}
