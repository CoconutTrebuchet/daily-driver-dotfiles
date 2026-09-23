{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    autotiling
    dwl
    fuzzel
    grim
    libnotify
    slurp
    swaybg
    swaylock-effects
    swaynotificationcenter
    swayosd
    waybar
    wev
    wl-clipboard
    wlogout
  ];

  programs.sway = {
    enable = true;
    # package = pkgs.swayfx;
    wrapperFeatures.gtk = true;
  };
}
