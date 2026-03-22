{ ... }:

{
  services.displayManager.sddm.enable = true;
  services.displayManager.defaultSession = "plasma";

  services.desktopManager.plasma6.enable = true;

  services.xserver.enable = true;
  services.xserver.xkb.layout = "us";
}