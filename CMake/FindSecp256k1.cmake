# - Try to find SECP256K1
# Once done this will define
#
#  SECP256K1_FOUND - system has SECP256K1
#  SECP256K1_INCLUDE_DIRS - the SECP256K1 include directory
#  SECP256K1_LIBRARY - Link these to use SECP256K1

find_path(
    SECP256K1_INCLUDE_DIR
    NAMES secp256k1_recovery.h
    DOC "secp256k1_recovery.h include dir"
)

find_library(
    SECP256K1_LIBRARY
    NAMES secp256k1 libsecp256k1
    DOC "secp256k1 library"
)

if (SECP256K1_LIBRARY)
  message(STATUS "Found Secp256k1: ${SECP256K1_LIBRARY}")
endif()

set(SECP256K1_INCLUDE_DIRS ${SECP256K1_INCLUDE_DIR})
set(SECP256K1_LIBRARIES ${SECP256K1_LIBRARY})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Secp256k1 DEFAULT_MSG SECP256K1_INCLUDE_DIR SECP256K1_LIBRARY)
mark_as_advanced(SECP256K1_INCLUDE_DIR SECP256K1_LIBRARY)
