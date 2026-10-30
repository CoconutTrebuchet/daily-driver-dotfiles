{ config, ... }:
{
  imports = [
    ./nixvim/_main.nix
    ./programs/_imports.nix
    ./user-interface.nix
    ./zsh.nix
  ];

  nixpkgs.config.allowUnfree = true;
  fonts.fontconfig.enable = true;

  # targets.genericLinux = {
  #   enable = true;
  #   gpu.enable = true;
  # };

  home = {
    username = "cocotreb";
    homeDirectory = "/home/cocotreb";
    stateVersion = "26.11";
    # stateVersion = "26.05";
    sessionVariables = {
      EDITOR = "nvim";
      TERM = "foot";
      QT_QPA_PLATFORMTHEME = "gtk3";
      NH_FLAKE = "${config.home.homeDirectory}/Nix/";
    };
  };

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
    projects = null;
  };

  programs.git = {
    enable = true;

    includes = [
      {
        condition = "gitdir:~/Projects/personal/";
        path = "~/Projects/personal/.gitconfig-personal";
      }
      {
        condition = "gitdir:~/Projects/professional/";
        path = "~/Projects/professional/.gitconfig-professional";
      }
    ];

    lfs.enable = true;

    settings = {
      credential."https://github.com".helper = "!gh auth git-credential";
      credential."https://gist.github.com".helper = "!gh auth git-credential";
      init.defaultBranch = "main";
    };
  };
}
