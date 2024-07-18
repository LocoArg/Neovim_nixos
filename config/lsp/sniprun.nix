{
  plugins.sniprun.enable = true;
    plugins.sniprun.settings = 
    {
      display = [
      "NvimNotify"
    ];
    inline_messages = true;
    interpreter_options = {
    R_original = {
      use_on_filetypes =["r" 
      "rmd"
      ];
     };
    GFM_original = {
      use_on_filetypes = [
        "markdown.pandoc"
      ];
    };
    Python3_fifo = {
      error_truncate = "auto";
    };
  };
   repl_enable = ["Python3_fifo"
    "R_original"
   ];
  };
  }
