{
  wayland.windowManager.labwc = {
    extraConfig = ''
      <keyboard>
      	<!-- Core keys -->
      	<keybind key="W-d"><action name="Execute"><command>noctalia msg panel-toggle launcher</command></action></keybind>
      	<keybind key="W-n"><action name="Execute"><command>noctalia msg panel-toggle control-center notifications</command></action></keybind>
      	<keybind key="W-,"><action name="Execute"><command>noctalia msg settings-toggle</command></action></keybind>

      	<!-- Media keys -->
      	<keybind key="XF86AudioRaiseVolume"><action name="Execute"><command>noctalia msg volume-up</command></action></keybind>
      	<keybind key="XF86AudioLowerVolume"><action name="Execute"><command>noctalia msg volume-down</command></action></keybind>
      	<keybind key="S-XF86AudioRaiseVolume"><action name="Execute"><command>noctalia msg volume-up 1</command></action></keybind>
      	<keybind key="S-XF86AudioLowerVolume"><action name="Execute"><command>noctalia msg volume-down 1</command></action></keybind>

      	<keybind key="XF86AudioMute"><action name="Execute"><command>noctalia msg volume-mute</command></action></keybind>
      	<keybind key="XF86AudioMicMute"><action name="Execute"><command>noctalia msg mic-mute</command></action></keybind>

      	<keybind key="XF86MonBrightnessUp"><action name="Execute"><command>noctalia msg brightness-up</command></action></keybind>
      	<keybind key="XF86MonBrightnessDown"><action name="Execute"><command>noctalia msg brightness-down</command></action></keybind>
      	<keybind key="S-XF86MonBrightnessUp"><action name="Execute"><command>noctalia msg brightness-up 1</command></action></keybind>
      	<keybind key="S-XF86MonBrightnessDown"><action name="Execute"><command>noctalia msg brightness-down 1</command></action></keybind>
      </keyboard>
    '';
    rc = {
      keyboard = {
        default = true;
        keybind = [
          {
            "@key" = "W-Return";
            action = {
              "@name" = "Execute";
              "@command" = "footclient";
            };
          }

          {
            "@key" = "W-S-q";
            action = {
              "@name" = "Close";
            };
          }

          {
            "@key" = "F8";
            action = {
              "@name" = "Execute";
              "@command" = "noctalia msg power-cycle";
            };
          }

          {
            "@key" = "W-f";
            action = {
              "@name" = "ToggleFullscreen";
            };
          }

          {
            "@key" = "W-S-minus";
            action = {
              "@name" = "Iconify";
            };
          }

          {
            "@key" = "W-S-space";
            action = {
              "@name" = "ToggleMaximize";
            };
          }

          {
            "@key" = "W-S-e";
            action = {
              "@name" = "Execute";
              "@command" = "noctalia msg panel-toggle session";
            };
          }

          # INFO: screenshots
          {
            "@key" = "Print";
            action = {
              "@name" = "Execute";
              "@command" = "noctalia msg screenshot-fullscreen";
            };
          }
          {
            "@key" = "XF86SelectiveScreenshot";
            action = {
              "@name" = "Execute";
              "@command" = "noctalia msg screenshot-region";
            };
          }

          # INFO: sway-like focus keybinds
          {
            "@key" = "W-h";
            action = {
              "@name" = "PreviousWindowImmediate";
            };
          }
          {
            "@key" = "W-j";
            action = {
              "@name" = "PreviousWindowImmediate";
            };
          }
          {
            "@key" = "W-k";
            action = {
              "@name" = "NextWindowImmediate";
            };
          }
          {
            "@key" = "W-l";
            action = {
              "@name" = "NextWindowImmediate";
            };
          }

          # INFO: sway-like tile keybinds
          {
            "@key" = "W-S-h";
            action = {
              "@name" = "ToggleSnapToEdge";
              "@direction" = "left";
              "@combine" = "yes";
            };
          }
          {
            "@key" = "W-S-j";
            action = {
              "@name" = "ToggleSnapToEdge";
              "@direction" = "down";
              "@combine" = "yes";
            };
          }
          {
            "@key" = "W-S-k";
            action = {
              "@name" = "ToggleSnapToEdge";
              "@direction" = "up";
              "@combine" = "yes";
            };
          }
          {
            "@key" = "W-S-l";
            action = {
              "@name" = "ToggleSnapToEdge";
              "@direction" = "right";
              "@combine" = "yes";
            };
          }

          # INFO: workspace focus keybinds
          {
            "@key" = "W-1";
            action = {
              "@name" = "GoToDesktop";
              "@to" = "1";
            };
          }
          {
            "@key" = "W-2";
            action = {
              "@name" = "GoToDesktop";
              "@to" = "2";
            };
          }
          {
            "@key" = "W-3";
            action = {
              "@name" = "GoToDesktop";
              "@to" = "3";
            };
          }
          {
            "@key" = "W-4";
            action = {
              "@name" = "GoToDesktop";
              "@to" = "4";
            };
          }
          {
            "@key" = "W-5";
            action = {
              "@name" = "GoToDesktop";
              "@to" = "5";
            };
          }

          # INFO: workspace send keybinds
          {
            "@key" = "W-S-1";
            action = {
              "@name" = "SendToDesktop";
              "@to" = "1";
              "@follow" = "no";
            };
          }
          {
            "@key" = "W-S-2";
            action = {
              "@name" = "SendToDesktop";
              "@to" = "2";
              "@follow" = "no";
            };
          }
          {
            "@key" = "W-S-3";
            action = {
              "@name" = "SendToDesktop";
              "@to" = "3";
              "@follow" = "no";
            };
          }
          {
            "@key" = "W-S-4";
            action = {
              "@name" = "SendToDesktop";
              "@to" = "4";
              "@follow" = "no";
            };
          }
          {
            "@key" = "W-S-5";
            action = {
              "@name" = "SendToDesktop";
              "@to" = "5";
              "@follow" = "no";
            };
          }
        ];
      };
    };
  };
}
