/*eslint-env node*/
'use strict';

var common = require('gulp-capacitorjs-common');
var initialConfig = {
  src: {
    out: 'PROJECT.js',
    main: 'src/PROJECT.js'
  }
};
/*
 // don't bundle dependencies
 initialConfig.src.externals = {
   underscore: {
     amd: 'underscore',
     commonjs: 'underscore',
     commonjs2: 'underscore',
     root: '_'
   }
 }
 */
var config = common.config(initialConfig);
/*
  // modify webpack settigns
  config.webpack.output.libraryTarget = 'var';
 */
common.registerCommon(config);
