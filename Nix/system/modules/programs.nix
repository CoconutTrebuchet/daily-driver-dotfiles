{ pkgs, ... }:

{
  programs.steam.enable = true;
  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "virtualbox-user" ];

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

  environment.systemPackages = with pkgs; [
    fzf
    gcc
    git
    gnumake
    home-manager
    ntfs3g # NTFS support
    tmux
    tree
    unzip
    vim
    yazi
    wget
  ];
}
