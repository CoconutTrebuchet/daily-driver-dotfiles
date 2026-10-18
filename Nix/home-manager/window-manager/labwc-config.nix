{ config, pkgs, ... }:
let
  qogir-openbox = pkgs.callPackage ./qogir-theme-openbox.nix { };
in
{
  home.packages = [ qogir-openbox ];
  wayland.windowManager.labwc = {
    enable = true;
    autostart = [
      "foot -s &"
      "noctalia --daemon"
    ];

    environment = [
      "XKB_DEFAULT_LAYOUT=us"
    ];

    rc = {
      theme = {
        cornerRadius = 0;
        dropShadows = "yes";
        name = "Qogir-Dark-openbox";
        icon = config.gtk.iconTheme.name;
      };

      libinput = {
        device = [
          {
            accelProfile = "flat";
            pointerSpeed = 0.65;
          }
          {
            "@category" = "touchpad";
            naturalScroll = "yes";
          }
        ];
      };

      desktops = {
        number = 5;
        initial = 1;
        prefix = "";
        popupTime = 0;
      };
    };
  };
}
