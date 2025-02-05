# This configuration.nix contains system packages
{ config, pkgs, lib, ... }:
{
# System Packages
  boot.kernelPackages = pkgs.linuxPackages_testing;
  fonts.packages = with pkgs; [
    nerd-fonts.code-new-roman
    nerd-fonts.roboto-mono
  ];
  environment.systemPackages = with pkgs; [
    ranger
    vim
    ungoogled-chromium
    git
		gcc
		make
    llama-cpp
    htop
  ];
# Regular Packages
  # Enable SwayWM
  programs.sway = {
    enable = true;
  };
  # Enable Foot
  programs.foot = {
    enable = true;
  };
}
