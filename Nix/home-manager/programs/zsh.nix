{ config, ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    presets = [ "nerd-font-symbols" ];
    settings = {
      add_newline = false;
      format = "$directory$nix_shell$python$git_branch$git_state$git_status$cmd_duration$line_break$character";
      character = {
        success_symbol = "[❯](green)";
        error_symbol = "[❯](green)";
        vicmd_symbol = "[❯](green)";
      };
    };
  };

  programs.zsh = {
    enable = true;

    # oh-my-zsh = {
    #   enable = true;
    #   theme = "sorin";
    #   plugins = [
    #     "colored-man-pages"
    #   ];
    # };

    history = {
      path = "${config.home.homeDirectory}/.histfile";
      size = 1000;
      save = 1000;
    };

    defaultKeymap = "emacs";

    shellAliases = {
      flakeupdate = "nix flake update --flake $NH_FLAKE";
      homelabssh = "ssh cocotreb@lx6810-server";
      pwdcp = "pwd | wl-copy && echo 'current directory copied'";
      switchgens = "sudo nix-env --switch-generation --profile /nix/var/nix/profiles/system";
      wttr = "curl wttr.in | less";
    };

    initContent = ''
      # Unset beep
      unsetopt beep

      # enable correction
      setopt CORRECT

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
  };
}
