# SDHCALCMakeModules 
Cmake modules for SDHCAL software compilation.

## Introduction 
This depot groups all the `Cmake Modules` needed to build the `SDHCAL` softwares in a way they can be share between different depots.

## How to use these modules

### 1. Download `GetCMakeMM.cmake`
To use `CMakeMM` you have to download `GetCMakeMM.cmake` and put it in your CMake module folder `cmake` for example.
### 2. Use `GetCMakeMM.cmake` in your `CMakeLists.txt'.
 ```cmake
	set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH}" "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
	include(GetCMakeMM)
	cmmm(VERSION "1.0" 
       URL "https://raw.githubusercontent.com/flagarde/CMakeMM" 
       VERBOSE 
       DESTINATION "CMakeMM" 
       ALWAYS_DOWNLOAD)
 ```
 This will download `CMakeMM` version `1.0` from `https://raw.githubusercontent.com/flagarde/CMakeMM` under `CMakeMM` folder. *More options are available*
 ### 3. Tell to `CMakeMM` where find the modules list and where to save the modules
 ```cmake
 cmmm_modules_list(URL "https://raw.githubusercontent.com/SDHCAL/SDHCALCMakeModules" 
                   BRANCH master
                   FOLDER modules
                   FILENAME ModuleLists
                   DESTINATION "Modules")
 ```
 This will donwload the module list file called `ModuleLists.cmake` in folder `modules` on branch `master` of the github depot `https://raw.githubusercontent.com/SDHCAL/SDHCALCMakeModules`. *More options are available*
 ### 4. Include the module you need
  ```cmake
  include(MyWonderfulModule)
  ```
  This will download the module `MyWonderfulModule.cmake` is it's not present in the `CMAKE_MODULE_PATH` folders or `Modules` folder, then include it. Otherwise it will just include it.
  
## Example
CMakeLists.txt :
```cmake
cmake_minimum_required(VERSION 3.10...3.17.2 FATAL_ERROR)
project(MySoftware 
        VERSION "0.0.1.0" 
        DESCRIPTION "MySoftware" 
        HOMEPAGE_URL "https://github.com/SDHCAL/MySoftware" .
        LANGUAGES CXX)

set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH}" "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(GetCMakeMM)

cmmm(VERSION "1.0" URL "https://raw.githubusercontent.com/flagarde/CMakeMM" 
     VERBOSE 
     DESTINATION "CMakeMM" 
     ALWAYS_DOWNLOAD)

cmmm_modules_list(URL "https://raw.githubusercontent.com/SDHCAL/SDHCALCMakeModules" 
                  DESTINATION "Modules")

# Now download the modules
include(PreventInSourceBuilds)
prevent_in_source_builds()
```
