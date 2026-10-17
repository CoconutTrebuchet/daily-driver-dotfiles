{ pkgs, ... }:

{
  programs.bat.enable = true;

  home.packages =
    with pkgs;
    [
      # INFO: useful stuff
      dysk
      feh
      github-cli
      glib # required to launch gtk apps with gapplication
      nh
      nixfmt
      nvd # nix version diff
      nvtopPackages.intel
      openjdk
      tldr
      tokei # code summary
      tray-tui
      wine
      yt-dlp

      (python3.withPackages (
        python-pkgs: with python-pkgs; [
          requests
        ]
      ))
    ]
    ++ [
      # INFO: shenanigans
      activate-linux
      cmatrix
      fastfetch
      kittysay
      pipes
      tty-solitaire
    ];
}
