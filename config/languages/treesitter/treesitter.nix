{
  plugins.treesitter = {
    enable = true;
    indent = true;
    folding = true;
    nixvimInjections = true;
    settings.ensure_installed = ["markdown" 
    "markdown_inline" 
    "r"
    "rnoweb"
    ];
};
}
