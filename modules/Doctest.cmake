include_guard(GLOBAL)

include(CPM)
cpm()

if(NOT DEFINED DOCTEST_REPOSITORY)
  set(DOCTEST_REPOSITORY "onqtam/doctest")
endif()

if(NOT DEFINED DOCTEST_VERSION)
  set(DOCTEST_VERSION "2.4.1")
endif()

declare_option(REPOSITORY doctest OPTION CMAKE_CXX_STANDARD VALUE 11)
declare_option(REPOSITORY doctest OPTION CMAKE_CXX_STANDARD_REQUIRED VALUE TRUE)
declare_option(REPOSITORY doctest OPTION CMAKE_CXX_EXTENSIONS VALUE FALSE)
declare_option(REPOSITORY doctest OPTION CMAKE_INSTALL_PREFIX VALUE ${CMAKE_INSTALL_PREFIX})
declare_option(REPOSITORY doctest OPTION DOCTEST_WITH_TESTS VALUE OFF)
declare_option(REPOSITORY doctest OPTION DOCTEST_WITH_MAIN_IN_STATIC_LIB VALUE ON)
declare_option(REPOSITORY doctest OPTION DOCTEST_NO_INSTALL VALUE OFF)
declare_option(REPOSITORY doctest OPTION DOCTEST_USE_STD_HEADERS VALUE ON)
print_options(REPOSITORY  doctest)

CPMFindPackage(NAME doctest
               GITHUB_REPOSITORY ${DOCTEST_REPOSITORY}
               GIT_TAG ${DOCTEST_VERSION}
               FETCHCONTENT_UPDATES_DISCONNECTED ${IS_OFFLINE}
               OPTIONS ${DOCTEST_OPTIONS}
              )

if(doctest_ADDED)
  include("${doctest_SOURCE_DIR}/scripts/cmake/doctest.cmake")
else()
  include("${CMAKE_INSTALL_PREFIX}/lib/cmake/doctest/doctest.cmake")
  add_library(doctest INTERFACE IMPORTED)
  target_include_directories(doctest INTERFACE "${CMAKE_INSTALL_PREFIX}/include")
endif()

