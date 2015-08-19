/*eslint-env node*/
'use strict';

var common = require('gulp-capacitorjs-common');
common.config.src.out = 'PROJECT.js';
common.config.src.main = 'src/PROJECT.js';
// common.config.src.externals = ...; // ignore external libs
common.registerCommon();
