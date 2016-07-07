function kakunin(btnNo){
  if (btnNo == 1){
    link = "Yahoo!Japan";
    href = "http://www.yahoo.co.jp/";
  }else{
    link = "Google";
    href = "http://www.google.co.jp/";
  }

  ret = confirm(link + "へ飛びます。宜しいですか？");
  if (ret == true){
    location.href = href;
  }
}