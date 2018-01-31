export = {
  'main'(browser) {
    browser.url(browser.launch_url);

    browser.assert.elementPresent('app-root h1');

    browser.end();
  }
};
