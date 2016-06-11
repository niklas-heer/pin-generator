calcNum = (x, y) ->
  if (x - y) >= 0 then (x - y) else (x - y) + 10

clacEncPin = (pin, secret) ->
  if pin.length is secret.length and pin.length >= 4

    results = []
    i = 0

    while i < pin.length
      x = parseInt(pin[i])
      y = parseInt(secret[i])
      results.push calcNum(x, y)
      ++i

    $('#enc_pin').parent().removeClass("hidden")
    $('#enc_pin').parent().addClass("is-dirty is-focused")
    $('#enc_pin').val(results.join(''))
  else
    if not ($('#enc_pin').val().length >= 4)
      $('#enc_pin').parent().addClass("hidden")

$('.PinInput').keyup(
  () ->
    pin = $('#pin_to_encrypt').val()
    secret = $('#secret_pin').val()

    clacEncPin(pin, secret)
)


