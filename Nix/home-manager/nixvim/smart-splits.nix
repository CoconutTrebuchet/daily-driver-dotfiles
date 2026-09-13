{ ... }:
{
  programs.nixvim = {
    plugins.smart-splits.enable = true;
    keymaps = [

      # resizing splits
      {
        mode = "n";
        key = "<A-h>";
        action = "<cmd>lua require('smart-splits').resize_left()<CR>";
      }
      {
        mode = "n";
        key = "<A-j>";
        action = "<cmd>lua require('smart-splits').resize_down()<CR>";
      }
      {
        mode = "n";
        key = "<A-k>";
        action = "<cmd>lua require('smart-splits').resize_up()<CR>";
      }
      {
        mode = "n";
        key = "<A-l>";
        action = "<cmd>lua require('smart-splits').resize_right()<CR>";
      }

      # moving between splits
      {
        mode = "n";
        key = "<C-h>";
        action = "<cmd>lua require('smart-splits').move_cursor_left()<CR>";
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<cmd>lua require('smart-splits').move_cursor_down()<CR>";
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<cmd>lua require('smart-splits').move_cursor_up()<CR>";
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<cmd>lua require('smart-splits').move_cursor_right()<CR>";
      }
      {
        mode = "n";
        key = "<C-\\>";
        action = "<cmd>lua require('smart-splits').move_cursor_previous()<CR>";
      }

      # swapping buffers between windows
      {
        mode = "n";
        key = "<leader><leader>h";
        action = "<cmd>lua require('smart-splits').swap_buf_left()<CR>";
        options.desc = "Swap buffer left";
      }
      {
        mode = "n";
        key = "<leader><leader>j";
        action = "<cmd>lua require('smart-splits').swap_buf_down()<CR>";
        options.desc = "Swap buffer down";
      }
      {
        mode = "n";
        key = "<leader><leader>k";
        action = "<cmd>lua require('smart-splits').swap_buf_up()<CR>";
        options.desc = "Swap buffer up";
      }
      {
        mode = "n";
        key = "<leader><leader>l";
        action = "<cmd>lua require('smart-splits').swap_buf_right()<CR>";
        options.desc = "Swap buffer right";
      }
    ];
  };
}
