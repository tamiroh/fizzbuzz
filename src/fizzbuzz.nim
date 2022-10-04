import std/strutils

proc main(upper = false, lower = false): void =
  let input: string = readLine(stdin)
  var inputNumber: int
  try:
    inputNumber = parseInt(input)
  except ValueError:
    stderr.writeLine("Invalid input")
    return
  if inputNumber mod 15 == 0:
    if upper:
      echo "FIZZBUZZ"
    elif lower:
      echo "fizzbuzz"
    else:
      echo "FizzBuzz"
  elif inputNumber mod 3 == 0:
    if upper:
      echo "FIZZ"
    elif lower:
      echo "fizz"
    else:
      echo "Fizz"
  elif inputNumber mod 5 == 0:
    if upper:
      echo "BUZZ"
    elif lower:
      echo "buzz"
    else:
      echo "Buzz"
  else:
    echo inputNumber

when isMainModule:
  import cligen
  dispatch(main)