import std/strutils

func fizzBuzz(num: int): string =
  if num mod 15 == 0:
    return "FizzBuzz"
  elif num mod 3 == 0:
    return "Fizz"
  elif num mod 5 == 0:
    return "Buzz"
  else:
    return $num

proc main(upper = false, lower = false): void =
  let input: string = readLine(stdin)
  var inputNumber: int
  try:
    inputNumber = parseInt(input)
  except ValueError:
    stderr.writeLine("Invalid input")
    return
  if upper:
    echo toUpperAscii fizzBuzz inputNumber
  elif lower:
    echo toLowerAscii fizzBuzz inputNumber
  else:
    echo fizzBuzz inputNumber

when isMainModule:
  import cligen
  dispatch main, help = {
    "help": "display this help",
    "upper": "capitalize output",
    "lower": "lowercase output"
  }
