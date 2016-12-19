(function init_tile_resizing(){
  var webpageviews = document.querySelector("#webpage-stack");
  if (webpageviews === null) {
    window.setTimeout(init_tile_resizing, 200);
    return;
  }

  var observer = new MutationObserver(function(mutations) {
    mutations.forEach(function(mutation) {
      if (mutation.type !== "childList")    return;
      if (mutation.addedNodes.length === 0) return;

      mutation.addedNodes[0].addEventListener("mousedown", dragStart, false);
    });
  });

  // observe webpageview's children:
  observer.observe(webpageviews, { childList: true });
})();

function dragStart(e) {
  if (!e.target.classList.contains("webpageview")) return;

  draggedTile = e.target;

  if    (draggedTile.style.top !== "" && draggedTile.style.left !== "") tilingMode = "grid";
  else if (draggedTile.style.top !== "")                  tilingMode = "vertical";
  else if (draggedTile.style.left !== "")                 tilingMode = "horizontal";

  document.addEventListener("mouseup", dragEnd, false);
  document.addEventListener("mousemove", drag, false);
}

function dragEnd() {
  document.removeEventListener("mousemove", drag, false);
  document.removeEventListener("mouseup", dragEnd, false);

  draggedTile = null;
  tilingMode = null;
}

function drag(e) {
  if (draggedTile === null) return;

  if (tilingMode === "horizontal") {
    ratio = 100 * e.clientX / e.view.innerWidth;
    var leftEdgeOfPreviousTab = parseInt(draggedTile.previousElementSibling.style.left);
    var leftEdgeOfNextTab = draggedTile.nextElementSibling.classList.contains("webpageview") ? parseInt(draggedTile.nextElementSibling.style.left) : 100;

    if    (ratio > 98)              ratio = 98;
    else if (ratio < leftEdgeOfPreviousTab + 2)   ratio = leftEdgeOfPreviousTab + 2;
    else if (ratio > leftEdgeOfNextTab - 2)     ratio = leftEdgeOfNextTab - 2;

    draggedTile.previousElementSibling.style.width = ratio - leftEdgeOfPreviousTab + "%";
    draggedTile.style.left = ratio + "%";
    draggedTile.style.width = (100-ratio) + "%";
  }
  else if (tilingMode === "vertical") {
    ratio = 100 * e.clientY / e.view.innerHeight;
    var topEdgeOfPreviousTab = parseInt(draggedTile.previousElementSibling.style.top);
    var topEdgeOfNextTab = draggedTile.nextElementSibling.classList.contains("webpageview") ? parseInt(draggedTile.nextElementSibling.style.top) : 100;

    if    (ratio > 98)              ratio = 98;
    else if (ratio < topEdgeOfPreviousTab + 2)    ratio = topEdgeOfPreviousTab + 2;
    else if (ratio > topEdgeOfNextTab - 2)      ratio = topEdgeOfNextTab - 2;

    draggedTile.previousElementSibling.style.height = ratio - topEdgeOfPreviousTab + "%";
    draggedTile.style.top = ratio + "%";
    draggedTile.style.height = (100-ratio) + "%";
  }
}
