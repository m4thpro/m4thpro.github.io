with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    libffi zlib libiconv pkgconfig
  ];
}
