{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
}:

stdenvNoCC.mkDerivation {
  pname = "openbox-qogir-theme";
  version = "unstable";

  src = fetchFromGitHub {
    owner = "Luiz-Alcantara";
    repo = "Openbox-Qogir-theme";
    rev = "master";
    hash = "sha256-Zu1YtJJ28JwbaNxyC8uh9DTYSIC9jPaeyRyr5f8Wd1w=";
  };

  dontBuild = true;
  dontConfigure = true;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/themes
    cp -r Qogir-Dark-openbox Qogir-Light-openbox $out/share/themes/

    runHook postInstall
  '';

  meta = with lib; {
    description = "Qogir dark and light themes for Openbox";
    homepage = "https://github.com/Luiz-Alcantara/Openbox-Qogir-theme";
    platforms = platforms.all;
  };
}
