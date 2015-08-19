/*eslint-env node*/
'use strict';

var common = require('gulp-capacitorjs-common');
common.config.src.out = 'PROJECT.js';
common.config.src.main = 'src/PROJECT.js';
/*
 // don't bundle dependencies
 common.config.src.externals = {
   underscore: {
     amd: 'underscore',
     commonjs: 'underscore',
     commonjs2: 'underscore',
     root: '_'
   }
}
*/
common.registerCommon();
