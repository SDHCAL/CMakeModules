include_guard(GLOBAL)

include(CPM)
cpm()

if(NOT DEFINED cmake-micromamba_REPOSITORY)
  set(cmake-micromamba_REPOSITORY "https://github.com/flagarde/cmake-micromamba.git")
endif()

if(NOT DEFINED cmake-micromamba_TAG)
  set(cmake-micromamba_TAG "main")
endif()

declare_option(REPOSITORY cmake-micromamba OPTION BUILD_TESTS VALUE OFF)
print_options(REPOSITORY  cmake-micromamba)

CPMAddPackage(NAME cmake-micromamba
              GIT_REPOSITORY ${cmake-micromamba_REPOSITORY}
              GIT_TAG ${cmake-micromamba_TAG}
              FETCHCONTENT_UPDATES_DISCONNECTED ${IS_OFFLINE}
              OPTIONS "${cmake-micromamba_OPTIONS}")
 
