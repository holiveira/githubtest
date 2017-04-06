function loadParent (doc) {
  var divTitle = parent.document.getElementById("iframeTitle");
  divTitle.innerHTML = doc.title;
}

function validate(obj) {
  var divSTATUS = document.getElementById("status");
  var pSTATUS = document.getElementById("textStatus");
  var FORM = obj.form;
  var CHECK = FORM.getElementsByTagName("input");
  var counter = 0;
  for (var i = 0; i < CHECK.length; i++) {
    if (CHECK[i].checked) {
      counter++;
    }
  }
  if (counter < CHECK.length) {
    divSTATUS.className = "divStatus divFail";
    pSTATUS.innerHTML = "Checklist Incompleto";
  }else {
    divSTATUS.className = "divStatus divPass";
    pSTATUS.innerHTML = "Checklist OK";
  }
  return true;
}
