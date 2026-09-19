{ pkgs, ... }:

{
  home.packages =
    with pkgs;
    [
      # INFO: useful stuff
      bat
      dysk
      feh
      github-cli
      nixfmt
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
