{ pkgs, ... }:
{
  home.packages = with pkgs; [
    protonup-rs
    prismlauncher
    # mindustry-wayland
    pcsx2
  ];
}
