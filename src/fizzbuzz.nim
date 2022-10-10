import std/strutils

func judge(num: int): string =
  if num mod 15 == 0:
    return "FizzBuzz"
  elif num mod 3 == 0:
    return "Fizz"
  elif num mod 5 == 0:
    return "Buzz"
  else:
    return $num

proc fizzbuzz(upper = false, lower = false): void =
  var input: int
  try:
    input = parseInt readLine stdin
  except ValueError:
    stderr.writeLine "Invalid input"
    return
  if upper:
    echo toUpperAscii judge input
  elif lower:
    echo toLowerAscii judge input
  else:
    echo judge input

when isMainModule:
  import cligen
  dispatch fizzbuzz, help = {
    "help": "display this help",
    "upper": "capitalize output",
    "lower": "lowercase output"
  }
