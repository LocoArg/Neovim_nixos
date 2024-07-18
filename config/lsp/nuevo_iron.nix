{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "iron.nvim";
      version = "2024-02-05";
      src = pkgs.fetchFromGitHub {
        owner = "Vigumus";
        repo = "iron.nvim";
        rev = "ae6b78ec1bc56eab63b3a9112d348b3d79836b672";
        hash = "sha256-SLernbkIZdPf1Fik4OLhwgryIywApH0DbZkxF+lEERc=";
      };
    })
  ];
  extraConfigLua = ''
      local iron = require("iron.core")
      local view = require("iron.view")
      iron.setup({
        config = {
          -- Whether a repl should be discarded or not
          scratch_repl = true,
          -- Your repl definitions come here
          repl_definition = {
            sh = {
              -- Can be a table or a function that
              -- returns a table (see below)
              command = { "zsh" },
            },
          },
          -- How the repl window will be displayed
          -- See below for more information
          -- repl_open_cmd = require("iron.view").right(50),
          -- repl_open_cmd = view.center("30%", 20),
          repl_open_cmd = view.split.vertical.botright(0.5678),
        },
        -- Iron doesn't set keymaps by default anymore.
        -- You can set them here or manually add keymaps to the functions in iron.core
        keymaps = {
          send_motion = "<space>sc",
          visual_send = "<space>sc",
          send_file = "<space>sf",
          send_line = "<space>sl",
          send_mark = "<space>sm",
          mark_motion = "<space>mc",
          mark_visual = "<space>mc",
          remove_mark = "<space>md",
          cr = "<space>s<cr>",
          interrupt = "<space>s<space>",
          exit = "<space>sq",
          clear = "<space>cl",
        },
      })
 
 '';
}
