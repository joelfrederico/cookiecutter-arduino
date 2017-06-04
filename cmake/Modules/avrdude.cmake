find_program(AVR_OBJCOPY avr-objcopy)
find_program(AVRDUDE avrdude)


function(avrprogram target)
  set(hexfile ${CMAKE_CURRENT_BINARY_DIR}/${target}.hex)
  add_custom_target(avrprogram
    COMMAND ${AVR_OBJCOPY} -O ihex -R .eeprom $<TARGET_FILE:${target}> ${hexfile}
    COMMAND ${AVRDUDE} -V -c arduino -p ${CMAKE_ARDUINO_MCU} -P /dev/cu.usbmodem14611 -b 115200 -D -U flash:w:${hexfile}
    )
  add_dependencies(avrprogram ${target})
endfunction(avrprogram)
