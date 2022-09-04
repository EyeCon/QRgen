import
  "."/[myTestSuite],
  QRgen

benchmarkTest "Minimal test":
  let qr = newQR("https://github.com/aruZeta/QRgen")
  qr.printTerminal

benchmarkTest "Testing svg":
  let qr = newQR("https://github.com/aruZeta/QRgen")
  echo qr.printSvg

benchmarkTest "Testing rounded svg":
  let qr = newQR("https://github.com/aruZeta/QRgen")
  echo qr.printRoundedSvg(radius = 2)

benchmarkTest "Testing very rounded svg":
  let qr = newQR("https://github.com/aruZeta/QRgen")
  echo qr.printVeryRoundedSvg("#1d2021", "#98971a", 3.5, 0.4)
