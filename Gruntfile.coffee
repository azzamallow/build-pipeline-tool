module.exports = (grunt) ->

  grunt.initConfig
    jasmine:
      src: 'src/**/*.js'
      options:
        specs: 'spec/**/*.js'
    coffee:
      compile:
        files:
          'src/app_src.js':   ['src/**/*.coffee'],
          'spec/app_spec.js': ['spec/**/*.coffee']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jasmine'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'test', ['coffee', 'jasmine']
  grunt.registerTask 'default', ['test']