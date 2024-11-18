{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  langCfg = neovimConfig.languages.other;
  luaName = langCfg.luaName;
in
  if !langCfg.enable
  then blankSet
  else {
  }
