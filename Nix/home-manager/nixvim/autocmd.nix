{
  programs.nixvim.autoCmd = [
    {
      # highlight yank
      event = "TextYankPost";
      callback.__raw = "function() vim.highlight.on_yank() end";
    }
    {
      # turn on wrap in .txt and .md files
      event = [
        "BufEnter"
        "BufWinEnter"
      ];
      pattern = [
        "*.md"
        "*.txt"
      ];
      command = "set wrap";
    }
    {
      # turn on spellcheck in .txt and .md files
      event = [
        "BufEnter"
        "BufWinEnter"
      ];
      pattern = [
        "*.md"
        "*.txt"
      ];
      command = "setlocal spell spelllang=en_us";
    }
    {
      # force the winbar to have a transparent background
      event = [
        "ColorScheme"
        "VimEnter"
      ];
      callback = {
        __raw = ''
          function()
            vim.api.nvim_set_hl(0, "WinBarNC", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "WinBar", { bg = "NONE" })
          end
        '';
      };
    }
  ];
}
