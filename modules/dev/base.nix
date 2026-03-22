{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    fish
    zsh
    nushell
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    neovim
    emacs
    git
    alacritty
    kitty
    tmux
    awscli
    jetbrains-toolbox
    vscode
    htop
    terragrunt
    terraform
    kubectl
    helm
    docker
    docker-compose
    go
    gcc
  ];
}