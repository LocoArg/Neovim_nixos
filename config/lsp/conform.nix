{
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
    notifyOnError = true;
    formattersByFt = {
      lua = ["stylua"];
      python = ["black"];
      nix = ["alejandra"];
      html = ["prettierd" "prettier"];
      css = ["prettierd" "prettier"];
      javascript = ["prettierd" "prettier"];
      javascriptreact = ["prettierd" "prettier"];
      typescript = ["prettierd" "prettier"];
      typescriptreact = ["prettierd" "prettier"];
      markdown = ["prettierd" "prettier"];
      rust = ["rustfmt"];
    };
  };

  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>cF";
      action = "<cmd>lua require('conform').format()<cr>";
      options = {
        silent = true;
        desc = "Format Injected Langs";
      };
    }
  ];
}