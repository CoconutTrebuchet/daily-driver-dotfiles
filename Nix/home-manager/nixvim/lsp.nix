{
  programs.nixvim = {
    plugins.lsp-format.enable = true;
    plugins.lsp = {
      enable = true;
      servers = {
        basedpyright.enable = true;
        clangd.enable = true;
        jdtls.enable = true;
        lua_ls.enable = true;
        nil_ls = {
          enable = true;
          settings.formatting.command = [ "nixfmt" ];
        };
      };
    };
  };
}
