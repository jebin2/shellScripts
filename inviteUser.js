var id = $('[id^="user_"]');
var idlink = [];
for(var i=0;i<id.length;i++){idlink.push(id[i].id);}
function inviteUser(i){
  $("#"+idlink[i]).trigger('click');
  $("#mainbtnspn > input").trigger('click');
  setTimeout(function(){
    $("#freezeMessageDiv > div > div.p15 > input").trigger('click');
    setTimeout(function(){
      $("#"+idlink[i]).trigger('click');
      inviteUser(++i);
    },2000);
  }, 3000);
}
inviteUser(0);
