{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "R.nvim";
      version = "2024-07-17";
      src = pkgs.fetchFromGitHub {
        owner = "R-nvim";
        repo = "r.nvim";
        rev = "d13c230503204f52094d95bb6f42992e71cf4e70";
        hash = "sha256-1+o3Iga7oXT98G1CWaPiOCCWlY5/yjJBgd4kUwbSd+w=";
      };
    })
  ];
  extraConfigLua = ''
    '';
}
