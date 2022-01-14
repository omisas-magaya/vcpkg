# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/pfr
    REF boost-1.77.0
    SHA512 2b77f879d9ac7f9c1d137d353c6a0665a243292adae75d71d3c324bba6ca3a22b4ef80b511757e95e33d3aa6a2597e86f67a6a70bf81089bbbb476bcbfe3ad06
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
