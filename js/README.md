# js

- Snippet in the original and updated js file

    ```js
    copyHandler:function(t){var e=window.getSelection(),
    i="<p>极客时间版权所有: "+document.location.href+"</p>",r=n.a.getSelectionText();
    if(r){var o=r.substr(0,30),a="<p>"+o+(o===r?"":"...")+"</p>"+i,
    ```
    
    ```js
    copyHandler:function(t){var e=window.getSelection(),
    r=n.a.getSelectionText();
    if(r){var a="<p>"+r+"</p>",
    ```

- Recipe
    - Redirect "https://static001.geekbang.org/static/time/js/xxxxxxxxxxxxxxxxxxxxxx.js" -> "https://raw.githubusercontent.com/forkacc/src/js/master/gtcp.js"
    - Then the copy come back

- Chrome extension
    - [Custom Redirects](https://chrome.google.com/webstore/detail/custom-redirects/kekdllcidamgebonidegjekidhdihdli)
