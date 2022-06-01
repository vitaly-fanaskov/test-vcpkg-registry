vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO joboccara/NamedType
  REF 77a95c8002a28f5cb48d2d0cd985904d66912af3
  SHA512 1f851ccf9caf84c46bbe0b381b0d71a1e3dd06a476a94426ab178e08f546305542e4adbd8fe064a677100f3118d4b880de238888c7aeca2bf7e7882decee5bd0
  HEAD_REF master
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_cmake_config_fixup(PACKAGE_NAME "NamedType" CONFIG_PATH "lib/cmake/")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug" "${CURRENT_PACKAGES_DIR}/lib")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)