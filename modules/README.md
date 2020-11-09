# Module Descriptions :

* [Colors.cmake](https://github.com/SDHCAL/SDHCALCMakeModules/blob/main/modules/Colors.cmake) : Defines some colors and text styles.
## Example
```cmake
  message(STATUS "${BackGreen}It${BackWhite}${Black}al${BackRed}${White}ia${Reset}")
  message(STATUS "${BackBlue}Fr${BackWhite}${Black}an${BackRed}${White}ce${Reset}")
  message(STATUS "${Underline}Underlined${Reset}")
  message(STATUS "${Italic}Italic${Reset}")
  message(STATUS "${Bold}${Cyan}Bold${Reset}")
```
![Colors](https://github.com/SDHCAL/SDHCALCMakeModules/blob/main/docs/pictures/Colors.png)

* [Messages.cmake](https://github.com/SDHCAL/SDHCALCMakeModules/blob/main/modules/Messages.cmake) : Redefines the `message` command to use personnalized styles
## Example 
```cmake
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
