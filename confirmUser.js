function confirmUser(i) {
  var check = $("#zm_centerHolder > div > div > div.zmAppContent > div [data-action=subject]")[i].innerText == "You are invited to join jebinlocalzoho's CRM account";
  if (check == true) {
    setTimeout(function() {
      var id = $("#zm_centerHolder > div > div > div.zmAppContent > div")[0].children[i].id;
      //$("#" + id).trigger('click');
      try {
        //$("#zmCP" + id + " > div > div > div > div > div:nth-child(2) > div > div:nth-child(6) > div > a")[0].click();
        var confirmWindow = window.open($("#zmCP" + id + " a")[1].href);
      } catch (err) {
        //location.reload();
        console.log("failed " + i);
      }
      setTimeout(function() {
        confirmWindow.window.close();
        $("#jsMSCenterIcon > ul:nth-child(10) > li")[0].click();
        confirmUser(--i);
      }, 30000);
    }, 4000);
  } else {
    setTimeout(function() {
      confirmUser(--i);
    }, 30000);
  }
}
confirmUser(225);
