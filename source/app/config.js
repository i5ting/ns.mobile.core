// Set the require.js configuration for your application.
require.config({
	
  // urlArgs: "bust=" + (new Date()).getTime(),
  // Initialize the application with the main application file and the JamJS
  // generated configuration file.
  deps: ["../vendor/jam/require.config", "main" 
 
  ],

  paths: {
    // Put paths here.
 
  },

  shim: {
    // Put shims here.
  },
  
  waitSeconds:30

});
