# js

- Snippet in the original and updated js file

    ```js
    ...
    if(t){var o=t.substr(0,30),
    a="<p>"+o+(t.length>30?"":"...")+"</p><p>极客时间版权所有: "+document.location.href+"</p>"
    ...
    ```
    
    ```js
    ...
    if(t){var a="<p>"+t+"</p>"
    ...
    ```

- Recipe
    - Redirect "https://static001.geekbang.org/static/time/js/xxxxxxxxxxxxxxxxxxxxxx.js" -> "https://raw.githubusercontent.com/forkacc/src/js/master/gtcp.js"
    - Then the copy come back

- Chrome extension
    - [Custom Redirects](https://chrome.google.com/webstore/detail/custom-redirects/kekdllcidamgebonidegjekidhdihdli)
