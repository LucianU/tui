{ mkDerivation, base-noprelude, brick, gauge, optparse-applicative
, protolude, stdenv
}:
mkDerivation {
  pname = "tui";
  version = "0.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base-noprelude brick protolude ];
  executableHaskellDepends = [
    base-noprelude optparse-applicative protolude
  ];
  testHaskellDepends = [ base-noprelude protolude ];
  benchmarkHaskellDepends = [ base-noprelude gauge protolude ];
  homepage = "https://github.com/elbear/tui";
  description = "A TUI for editing Cabal files";
  license = stdenv.lib.licenses.mit;
}
