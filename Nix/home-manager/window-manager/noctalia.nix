{ inputs, config, ... }:
{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia = {
    enable = true;

    settings = {
      # location.auto_locate = true;
      audio.enable_sounds = false;

      theme = {
        mode = "dark";
        shell_mode = "follow";
        source = "community";
        community_palette = "Paradise";
      };

      wallpaper = {
        enabled = true;
        default.path = "${config.home.homeDirectory}/Pictures/wallpapers/wallhaven-qrgqyq-edit-downscale.png";
      };

      dock = {
        auto_hide = true;
        background_opacity = 1;
        enabled = true;
        reserve_space = false;
      };

      bar = {
        default = {
          margin_edge = 0;
          margin_ends = 0;
          padding = 18;
          position = "left";
          radius = 0;
          scale = 1.4;
          thickness = 45;
          widget_spacing = 22;

          start = [
            "network"
            "battery"
            "volume"
            "brightness"
          ];
          center = [ "clock" ];
          end = [
            "tray"
            "workspaces"
            "caffeine"
          ];
        };
      };

      widget = {
        clock = {
          vertical_format = "{:%I\n%M\n%P}";
          actions.left = "panel-toggle control-center";
        };
        tray = {
          drawer = true;
          drawer_item_size = 22;
        };
        network.show_label = false;
        battery.show_label = false;
        workspaces.show_labels = false;
        volume.show_label = false;
        brightness.show_label = false;
      };
    };
  };
}
