import std/strutils

proc main(): void =
  let input: string = readLine(stdin)
  var inputNumber: int
  try:
    inputNumber = parseInt(input)
  except ValueError:
    stderr.writeLine("Invalid input")
    return
  if inputNumber mod 15 == 0:
    echo "fizzbuzz"
  elif inputNumber mod 3 == 0:
    echo "fizz"
  elif inputNumber mod 5 == 0:
    echo "buzz"
  else:
    echo inputNumber

when isMainModule:
  main()