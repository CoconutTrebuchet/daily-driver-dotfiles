{ pkgs, ... }:
{
  # plugin dependencies
  home.packages = with pkgs; [
    fd
    luaPackages.tree-sitter-cli
  ];

  programs.nixvim = {
    # tools
    plugins = {
      comment.enable = true;
      diffview.enable = true;
      nvim-autopairs.enable = true;
      nvim-tree.enable = true;
      telescope.enable = true;
      toggleterm.enable = true;
      treesitter.enable = true;
      which-key.enable = true;
      yazi.enable = true;
    };

    # look & feel
    plugins = {
      web-devicons.enable = true;
      gitsigns.enable = true;
      todo-comments.enable = true;
      render-markdown.enable = true;
      colorizer = {
        enable = true;
        settings.user_default_options.names = false;
      };
      navic = {
        enable = true;
        settings.lsp.auto_attach = true;
      };
      bufferline = {
        enable = true;
        settings.options = {
          indicator.style = "none";
        };
      };
      lualine = {
        enable = true;
        settings = {
          sections.lualine_b = [ "filetype" ];
          sections.lualine_c = [
            "branch"
            "diff"
            "diagnostics"
            "searchcount"
          ];
          sections.lualine_x = [
            "lsp_status"
          ];
          options.component_separators = {
            left = "";
            right = "";
          };
          options.section_separators = {
            left = "";
            right = "";
          };
        };
      };
    };

    # force the winbar to not be a different color than the bg
    highlight = {
      WinBar.bg = "NONE";
      WinBarNC.bg = "NONE";
    };

    extraConfigLua = ''
      -- initalize nvim-navic
      vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

      -- quit nvim-tree if it's the last buffer open
      -- by ppwwyyxx
      vim.api.nvim_create_autocmd("QuitPre", {
      	callback = function()
      		local invalid_win = {}
      		local wins = vim.api.nvim_list_wins()
      		for _, w in ipairs(wins) do
      			local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
      			if bufname:match("NvimTree_") ~= nil then
      				table.insert(invalid_win, w)
      			end
      		end
      		if #invalid_win == #wins - 1 then
      			-- Should quit, so we close all invalid windows.
      			for _, w in ipairs(invalid_win) do vim.api.nvim_win_close(w, true) end
      		end
      	end
      })
            		'';
  };
}
