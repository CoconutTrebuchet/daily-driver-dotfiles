{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    adwaita-fonts
    font-awesome
    nerd-fonts.hack
    nerd-fonts.space-mono
    noto-fonts
    vista-fonts
  ];
}
