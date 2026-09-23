{ config, ... }:

{
  programs.zsh = {
    enable = true;
    # fastSyntaxHighlighting.enable = true;

    history = {
      path = "${config.home.homeDirectory}/.histfile";
      size = 1000;
      save = 1000;
    };

    defaultKeymap = "emacs";

    shellAliases = {
      pwdcp = "pwd | wl-copy && echo 'current directory copied'";
      homelabssh = "ssh cocotreb@lx6810-server";
      wttr = "curl wttr.in | less";
      listgens = "sudo nix-env --list-generations --profile /nix/var/nix/profiles/system";
      switchgen = "sudo nix-env --switch-generation --profile /nix/var/nix/profiles/system";
    };

    initContent = ''
      # Unset beep
      unsetopt beep

      # PATH
      export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

      DISABLE_AUTO_UPDATE="true"
      DISABLE_MAGIC_FUNCTIONS="true"
      DISABLE_COMPFIX="true"

      HYPHEN_INSENSITIVE="true"
      ENABLE_CORRECTION="true"
      COMPLETION_WAITING_DOTS="true"
      DISABLE_UNTRACKED_FILES_DIRTY="true"
      HIST_STAMPS="yyyy-mm-dd"
    '';

    oh-my-zsh = {
      enable = true;
      theme = "sorin";
      plugins = [
        "colored-man-pages"
      ];
    };
  };
}
