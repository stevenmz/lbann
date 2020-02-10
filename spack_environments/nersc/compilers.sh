#!/bin/sh

COMPILER_ALL_PACKAGES=$(cat <<EOF
      compiler: [gcc@8.2.0 arch=linux-opensuse_leap15-skylake_avx512]
EOF
)

COMPILER_DEFINITIONS=$(cat <<EOF
  compilers:
  - compiler:
      spec: gcc@8.2.0
      paths:
        cc: /opt/gcc/8.2.0/bin/gcc
        cxx: /opt/gcc/8.2.0/bin/g++
        f77: /opt/gcc/8.2.0/bin/gfortran
        fc: /opt/gcc/8.2.0/bin/gfortran
      flags: {}
      operating_system: opensuse_leap15
      target: x86_64
      modules: []
      environment: {}
      extra_rpaths: []
EOF
)