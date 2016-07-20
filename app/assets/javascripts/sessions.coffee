# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#

@pushKey = ( num ) ->
  obj = document.getElementById('session_password');
  #obj.focus();
  if num == 10
    obj.value = obj.value.substr(0,obj.value.length-1);
  else
    if obj.value.length >= 4
      return;
    obj.value += String( num );
  return;

window["pushKey"] = pushKey;
