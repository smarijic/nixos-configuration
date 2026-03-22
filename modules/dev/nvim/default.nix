{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;

    withNodeJs = true;
    withPython3 = true;
  };

  # LSP + tools (Nix-managed, reproducible)
  home.packages = with pkgs; [
    # Core tools
    ripgrep
    fd
    git

    # LSPs
    gopls
    kotlin-language-server
    terraform-ls
    nil
    lua-language-server
    bash-language-server
    yaml-language-server
    vscode-langservers-extracted

    # Formatters
    stylua
    shfmt
    nodePackages.prettier
  ];

  # 🔥 Inject your Lua config
  xdg.configFile."nvim".source = ./config;
}