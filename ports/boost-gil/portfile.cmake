# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/gil
    REF boost-1.77.0
    SHA512 a779a3a471509f0a5cbb9048ac4345bcde875cab1afb540bc4b0d051367b3bbd4eb41ebc2d0e50cc4dda9c7775e7b753cb3dd582ae6fe938ae94a71187de4089
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
