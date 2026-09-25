{ pkgs, inputs, ... }:

{
  programs.steam.enable = true;
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };
  # allow btop to see GPU
  security.wrappers.btop = {
    owner = "root";
    group = "root";
    capabilities = "cap_perfmon,cap_dac_read_search,cap_sys_ptrace=+ep";
    source = "${pkgs.btop}/bin/btop";
  };
  environment.systemPackages =
    with pkgs;
    [
      fzf
      gcc
      git
      glib # required to launch gtk apps with gapplication
      gnumake
      home-manager
      nh
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
}
