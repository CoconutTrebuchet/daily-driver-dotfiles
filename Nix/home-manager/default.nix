{ ... }:
{
  imports = [
    ./nixvim/_main.nix
    ./programs/_imports.nix
    ./user-interface.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home = {
    username = "cocotreb";
    homeDirectory = "/home/cocotreb";
    stateVersion = "26.11";
    # stateVersion = "26.05";
    sessionVariables = {
      EDITOR = "nvim";
      TERM = "alacritty";
      QT_QPA_PLATFORMTHEME = "gtk3";
    };
  };

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
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
