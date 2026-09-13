{ config, ... }:
{
  imports = [
    ./autocmd.nix
    ./blink-cmp.nix
    ./keymaps.nix
    ./lsp.nix
    ./plugins.nix
    ./smart-splits.nix
  ];

  programs.nixvim = {
    enable = true;
    colorschemes.onedark = {
      enable = true;
      settings.style = "deep";
      settings.cmp_itemkind_reverse = false;
    };
    colorschemes.vague.enable = true;
    viAlias = true;
    vimAlias = true;

    opts = {
      autoindent = true;
      cmdheight = 0;
      cursorline = true;
      expandtab = false;
      ignorecase = true;
      shiftwidth = 2;
      # showcmdloc = "statusline";
      signcolumn = "yes";
      smartcase = true;
      softtabstop = 2;
      statuscolumn = "%s%{&nu?(&rnu&&v:relnum?v:relnum:v:lnum):''} ";
      # statuscolumn = " %{&nu?(&rnu&&v:relnum?v:relnum:v:lnum):''}%=%s ";
      tabstop = 2;
      termguicolors = true;
      wrap = false;
    };

    extraConfigVim = ''
      set undofile
      set undodir=$HOME/.cache/nvim/undo//
      set clipboard=unnamedplus
      set rnu
      set nu
      colorscheme onedark
    '';

    diagnostic = {
      settings = {
        virtual_text = true;
        signs = {
          text = config.lib.nixvim.mkRaw ''
            {
            	[vim.diagnostic.severity.ERROR] = "",
            	[vim.diagnostic.severity.WARN] = "",
            	[vim.diagnostic.severity.HINT] = "",
            	[vim.diagnostic.severity.INFO] = "",
            }
          '';
        };
        update_in_insert = true;
      };
    };

  };
  # generate undo folder in .cache/nvim/ to
  # improve producibility
  home.file.".cache/nvim/undo/.keep" = {
    text = "";
  };
}
