'use strict';
var gulp = require('gulp');
var mocha = require('gulp-mocha');
gulp.task('test', function() {
  require('espower-coffee/guess');
  return gulp.src('test/*.coffee')
    .pipe(mocha({reporter: 'spec'}));
});