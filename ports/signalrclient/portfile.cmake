vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO SignalR/SignalR-Client-Cpp
    REF 2410a499fb0daf60be1cdbd01a69b3abf5a57fc1
    SHA512 fe988957eef375a243737f8bf196a6c184c04965523dfb8615214381020ca29439f17176b4f2d35028fbd7369ddc173978004b29cbada224a2438e3ad1f81f14
    HEAD_REF dev
    PATCHES
        0001_cmake.patch
        0002_fix-compile-error.patch
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
    OPTIONS_DEBUG
        -DCPPREST_SO=${CURRENT_INSTALLED_DIR}/debug/lib/cpprest_2_10d.lib
    OPTIONS_RELEASE
        -DCPPREST_SO=${CURRENT_INSTALLED_DIR}/lib/cpprest_2_10.lib
    OPTIONS
        -DCPPREST_INCLUDE_DIR=${CURRENT_INSTALLED_DIR}/include
        -DDISABLE_TESTS=ON
)

vcpkg_install_cmake()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)

# copy license
file(COPY ${SOURCE_PATH}/LICENSE.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/signalrclient)
file(RENAME ${CURRENT_PACKAGES_DIR}/share/signalrclient/LICENSE.txt ${CURRENT_PACKAGES_DIR}/share/signalrclient/copyright)
