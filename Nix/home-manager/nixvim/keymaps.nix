{ ... }:
{
  programs.nixvim.globals.mapleader = " ";
  programs.nixvim.keymaps = [

    # INFO: general keybind customization
    {
      # cancel highlight search
      mode = "n";
      action = "<cmd>nohlsearch<CR>";
      key = "<Esc>";
    }
    {
      # enter normal mode from terminal mode
      mode = "t";
      action = "<C-\\><C-n>";
      key = "<Esc>";
    }

    # INFO: split keybindings
    {
      mode = "n";
      action = "<cmd>sp<CR>";
      key = "\\";
    }
    {
      mode = "n";
      action = "<cmd>vsp<CR>";
      key = "|";
    }

    # INFO: buffer line moving
    {
      # previous
      mode = "n";
      action = "<cmd>BufferLineMovePrev<CR>";
      key = "<leader><";
    }
    {
      # next
      mode = "n";
      action = "<cmd>BufferLineMoveNext<CR>";
      key = "<leader>>";
    }

    # INFO: custom leader keybinds
    {
      mode = "n";
      action = "<cmd>Yazi<CR>";
      key = "<leader>y";
    }
    {
      mode = "n";
      action = "<cmd>NvimTreeToggle<CR>";
      key = "<leader>n";
    }
    {
      mode = "n";
      action = "<cmd>ToggleTerm<CR>";
      key = "<leader>t";
    }
    {
      mode = "n";
      action = "<cmd>DiffviewOpen<CR>";
      key = "<leader>d";
    }

    # INFO: Telescope keybinds
    {
      mode = "n";
      action = "<cmd>Telescope<CR>";
      key = "<leader>ft";
    }
    {
      mode = "n";
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>fl";
    }
    {
      mode = "n";
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>ff";
    }
    {
      mode = "n";
      action = "<cmd>Telescope git_commits<CR>";
      key = "<leader>fg";
    }
    {
      mode = "n";
      action = "<cmd>Telescope oldfiles<CR>";
      key = "<leader>fo";
    }
    {
      mode = "n";
      action = "<cmd>Telescope colorscheme<CR>";
      key = "<leader>fc";
    }
    {
      mode = "n";
      action = "<cmd>Telescope man_pages<CR>";
      key = "<leader>fm";
    }
  ];
}
