{ pkgs, ... }:

{
  environment.systemPackages =
    with pkgs;
    [
      # INFO: useful stuff
      bat
      btop
      dysk
      fzf
      github-cli
      neovim
      nvd # nix version diff
      nvtopPackages.intel
      tldr
      tmux
      tokei # code summary
      tray-tui
      tree
      wine
      yazi
      yt-dlp
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
