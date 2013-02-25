module.exports = (grunt) ->

  grunt.initConfig
    jasmine:
      src: 'tmp/src/**/*.js'
      options:
        specs: 'tmp/spec/**/*.js'
    coffee:
      compile:
        files:
          'tmp/src/app_src.js':   ['src/**/*.coffee'],
          'tmp/spec/app_spec.js': ['spec/**/*.coffee']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jasmine'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'test', ['coffee', 'jasmine']
  grunt.registerTask 'default', ['test']