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
      homelabssh = "ssh cocotreb@100.64.237.9";
      wttr = "curl wttr.in | less";
      listgens = "sudo nix-env --list-generations --profile /nix/var/nix/profiles/system";
      switchgen = "sudo nix-env --switch-generation --profile /nix/var/nix/profiles/system";
    };

    initContent = ''
      # Unset beep
      unsetopt beep

      # PATH
      export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

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
        "git"
        "colored-man-pages"
      ];
    };
  };
}
