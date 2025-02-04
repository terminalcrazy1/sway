{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      /etc/nixos/hardware-configuration.nix
      ./program-configuration.nix
    ];

  # Use XDG Base Directories, so that the Nix clutter does not fill $HOME
  nix.settings.use-xdg-base-directories = true;

  # Use the extlinux boot loader. (NixOS wants to enable GRUB by default)
  boot.loader.grub.enable = false;
  # Enables the generation of /boot/extlinux/extlinux.conf
  boot.loader.generic-extlinux-compatible.enable = true;

  # Networking
  networking.hostName = "raspi-office";
  networking.wireless.enable = true;
  time.timeZone = "Canada/Eastern";

  users.users.mrl = {
    isNormalUser = true;
    home = "/mrl";
    description = "Liam Morison";
    extraGroups = [ "wheel" ];
  };

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix).
  system.copySystemConfiguration = true;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  system.stateVersion = "25.05";
}

