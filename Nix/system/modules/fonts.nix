{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    adwaita-fonts
    font-awesome
    nerd-fonts.hack
    noto-fonts
    vista-fonts
  ];
}
