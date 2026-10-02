{ lib, stdenv, fetchFromGitHub, cmake, ninja, pkg-config, level-zero, tbb }:

stdenv.mkDerivation rec {
  pname = "intel-level-zero-gpu-raytracing";
  version = "1.3.0";

  src = fetchFromGitHub {
    owner = "intel";
    repo = "level-zero-raytracing-support";
    rev = "v${version}";
    hash = "sha256-s8fTYq7mzs13FWRQeeoSqxsCbSYpzhpK+MnZyXM2krs="; # Leave as a fake hash to get the real one on the first build
  };

  nativeBuildInputs = [ cmake ninja pkg-config ];
  buildInputs = [ level-zero tbb ];

  cmakeFlags = [
    "-DZE_RAYTRACING_TBB=normal" # Link against system TBB instead of building static
    "-DCMAKE_POLICY_VERSION_MINIMUM=3.5"
  ];

  meta = with lib; {
    description = "Intel oneAPI Level Zero Ray Tracing Support library";
    homepage = "https://github.com/intel/level-zero-raytracing-support";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
