(function(window) {
  window.env = window.env || {};

  // Environment variables
  window["env"]["apiUrl"] = "${API_URL}";
  window["env"]["apiPort"] = "${API_PORT}";
  window["env"]["production"] = "${PROD_STATE}";
})(this);