{ pkgs, ... }:

{
  users.users.dev0 = {
    isNormalUser = true;
    description = "dev0";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.fish;

    packages = with pkgs; [
        brave
        qutebrowser
        bitwarden-desktop
        bitwarden-cli
    ];
  };
}