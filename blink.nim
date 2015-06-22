{.deadCodeElim: off.}
import unsigned
const
  pinNr = 13

proc delay(ms: uint16) {.importc.}
proc digitalWrite(pin: uint8, value: uint8) {.importc.}
proc pinMode(pin: uint8, mode: uint8) {.importc.}

var high{.importc: "HIGH", nodecl.}: uint8 
var low{.importc: "LOW", nodecl.}: uint8 
var output{.importc: "OUTPUT", nodecl.}: uint8 

proc setup() {.exportc.} =
  pinMode(pinNr, output)

proc loop() {.exportc.} =
  digitalWrite(pinNr, high)
  delay(1000)
  digitalWrite(pinNr, low)
  delay(1000)
