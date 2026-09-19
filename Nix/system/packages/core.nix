{ pkgs, inputs, ... }:

{
  environment.systemPackages =
    with pkgs;
    [
      btop
      fzf
      gcc
      git
      glib # required to launch gtk apps with gapplication
      gnumake
      home-manager
      ntfs3g # NTFS support
      nvd # nix version diff
      tmux
      tree
      unzip
      vim
      wget
      yazi
    ]
    ++ [
      inputs.helium.defaultPackage.${pkgs.stdenv.hostPlatform.system}
    ];
  programs.steam.enable = true;
}
