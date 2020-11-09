# Module Descriptions :

* [Colors.cmake](https://github.com/SDHCAL/SDHCALCMakeModules/blob/main/modules/Colors.cmake) : Defines some colors and text styles.
## Example
```cmake
  include(Colors)
  message(STATUS "${BackGreen}It${BackWhite}${Black}al${BackRed}${White}ia${Reset}")
  message(STATUS "${BackBlue}Fr${BackWhite}${Black}an${BackRed}${White}ce${Reset}")
  message(STATUS "${Underline}Underlined${Reset}")
  message(STATUS "${Italic}Italic${Reset}")
  message(STATUS "${Bold}${Cyan}Bold${Reset}")
```
![Colors](https://github.com/SDHCAL/SDHCALCMakeModules/blob/main/docs/pictures/Colors.png)

* [Messages.cmake](https://github.com/SDHCAL/SDHCALCMakeModules/blob/main/modules/Messages.cmake) : Redefines the `message` command to use personnalized styles. `NOTE` `INFO` `WARN` and `ERROR` are created by defaults.
## Example 
```cmake
  include(Messages)
  add_message_mode(
  NAME
  VERY_IMPORTANT
  STYLE
  BoldRed
  APPEND_BEGIN
  "!!!!!"
  APPEND_END
  "!!!!!"
  APPEND_STYLE
  BoldYellow
  )
  
  message(STATUS "Normal STATUS")
  message(VERY_IMPORTANT "This is an VERY_IMPORTANT message")
```
![Messages](https://github.com/SDHCAL/SDHCALCMakeModules/blob/main/docs/pictures/Messages.png)

* [Standards.cmake](https://github.com/SDHCAL/SDHCALCMakeModules/blob/main/modules/Standards.cmake) : Defines the `C` or `CXX` standard to use 

## Example

```cmake
include(Standards)
# Use c++17 and C11
cxx_17()
c_11()
```
