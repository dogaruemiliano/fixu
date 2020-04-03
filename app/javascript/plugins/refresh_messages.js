function refreshMessages() {
  const refreshButton = document.getElementById("refresh");
  if (refreshButton) {
    window.setInterval(function() {
      refreshButton.click();
    },2000)
  }
}

export {refreshMessages};
