function fn() {
  var env = karate.env; // get system property 'karate.env'

  if (!env) {
    env = 'dev';
  }

  var config = {
    env: env,
    myVarName: 'someValue'
  }


  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}