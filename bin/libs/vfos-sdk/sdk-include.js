module.exports = {
  messaging: require("./components/vfos-messaging/index.js"),
  security: require('../lib/Security'),
  datastorageNosql: require('./components/restheart-js-client'),
  datastorageRelational: require('./components/datastorage-nodejs-client'),
  enablerFramework: require('')
}