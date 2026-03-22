{ config, pkgs, ... }:

{
  imports = [
    ../modules/dev/nvim
  ];

  home.username = "dev0";
  home.homeDirectory = "/home/dev0";

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

  # 🐚 Shell (fish)
  programs.fish = {
    enable = true;

    shellAliases = {
      ll = "eza -la";
      gs = "git status";
      rebuild = "sudo nixos-rebuild switch --flake ~/nixos-config#workstation0";
    };
  };

  # ⭐ Starship prompt
  programs.starship = {
    enable = true;
  };

  # 🧠 Git
  programs.git = {
    enable = true;
    settings = {
        user.name = "Silvio Marijic";
        user.email = "contact@silviomarijic.com";
        init.defaultBranch = "main";
        pull.rebase = true;
    };
  };

  # 🧰 Neovim (minimal for now)
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  # 🧪 CLI tools (user-level)
  home.packages = with pkgs; [
    lazygit
    fzf
    ripgrep
    fd
    eza
    bat
    zoxide
  ];

  # 📁 Dotfiles example
  home.file.".config/htop/htoprc".text = ''
    fields=0 48 17 18 38 39 40 2 46 47 49 1
    sort_key=46
    sort_direction=1
  '';
}