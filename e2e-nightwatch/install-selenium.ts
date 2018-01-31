const selenium = require('selenium-download');

// NOTE: we put it outside dist since we don't want to re-download it when dist folder is flushed
selenium.ensure(__dirname + '/../bin', function (error) {
  if (error) { console.error(error.stack); }
  process.exit(0);
});
