window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")
  
    pullDownButton.addEventListener('mouseover', function() {
      // プルダウンメニューの表示と非表示の設定
      if (pullDownParents.getAttribute("style") == "display:block;") {
        // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
        pullDownParents.removeAttribute("style", "display:block;")
      } else {
        // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
        pullDownParents.setAttribute("style", "display:block;")
      }
    })
  
  const pullDownButton2 = document.getElementById("lists2")
  const pullDownParents2 = document.getElementById("pull-down2")
  
    pullDownButton2.addEventListener('mouseover', function() {
      // プルダウンメニューの表示と非表示の設定
      if (pullDownParents2.getAttribute("style") == "display:block;") {
        // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
        pullDownParents2.removeAttribute("style", "display:block;")
      } else {
        // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
        pullDownParents2.setAttribute("style", "display:block;")
      }
    })

  const pullDownButton3 = document.getElementById("lists3")
  const pullDownParents3 = document.getElementById("pull-down3")
    
    pullDownButton3.addEventListener('mouseover', function() {
      // プルダウンメニューの表示と非表示の設定
      if (pullDownParents3.getAttribute("style") == "display:block;") {
        // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
        pullDownParents3.removeAttribute("style", "display:block;")
      } else {
        // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
        pullDownParents3.setAttribute("style", "display:block;")
      }
    })

  const pullDownButton4 = document.getElementById("lists4")
  const pullDownParents4 = document.getElementById("pull-down4")
    
    pullDownButton4.addEventListener('mouseover', function() {
      // プルダウンメニューの表示と非表示の設定
      if (pullDownParents4.getAttribute("style") == "display:block;") {
        // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
        pullDownParents4.removeAttribute("style", "display:block;")
      } else {
        // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
        pullDownParents4.setAttribute("style", "display:block;")
      }
    })
})