include_guard(GLOBAL)

include(CPM)
cpm()

if(NOT DEFINED micromamba_REPOSITORY)
  set(micromamba_REPOSITORY "https://github.com/flagarde/cmake-micromamba.git")
endif()

if(NOT DEFINED micromamba_TAG)
  set(micromamba_TAG "main")
endif()

declare_option(REPOSITORY micromamba OPTION BUILD_TESTS VALUE OFF)
print_options(REPOSITORY  micromamba)

CPMAddPackage(NAME micromamba
              GIT_REPOSITORY ${micromamba_REPOSITORY}
              GIT_TAG ${micromamba_TAG}
              FETCHCONTENT_UPDATES_DISCONNECTED ${IS_OFFLINE}
              OPTIONS "${micromamba_OPTIONS}")
 
