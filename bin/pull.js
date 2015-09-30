#!/usr/bin/env node
require('shelljs/global');

if (!which('git')) {
  echo('Sorry, this script requires git');
  exit(1);
}

var fs = require('fs'),
    path = require('path'),
    projectList = require('./tonic-suite.json'),
    tonicPath = path.join(__dirname, '..');

// Run git fetch for each project
projectList.forEach(function(project) {
    var repoPath = path.join(tonicPath, project.path, project.name),
        headLine = project.name + ' : ' + repoPath + ' ',
        sepa = '--------------------------------------------------------------------------------',
        cmd = exec('cd ' + repoPath + ' && git pull', {silent:true});

    if (cmd.code !== 0) {
        console.log('Error fetching from', project.name);
        console.log(cmd.output);
    } else {
        console.log(sepa);
        console.log(headLine);
        console.log(sepa, '\n');
        console.log(cmd.output);
    }

});
