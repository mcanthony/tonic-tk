#!/usr/bin/env node
require('shelljs/global');

if (!which('git')) {
  echo('Sorry, this script requires git');
  exit(1);
}

var fs = require('fs'),
    path = require('path'),
    projectList = require('./tonic-suite.json'),
    tonicPath = path.join(__dirname, '..'),
    gitKeyWords = ['Untracked files', 'Changes not staged for commit', 'Changes to be committed', 'Your branch is ahead'],
    changeCount = 0;

function hasChange(output) {
    var change = false;
    gitKeyWords.forEach(function(str){
        if(output.indexOf(str) !== -1) {
            change = true;
        }
    });
    return change;
}

// Run git status for each project
projectList.forEach(function(project) {
    var repoPath = path.join(tonicPath, project.path, project.name),
        headLine = project.name + ' : ' + repoPath + ' ',
        sepa = '--------------------------------------------------------------------------------',
        cmd = exec('cd ' + repoPath + ' && git status', {silent:true});;

    if(hasChange(cmd.output)) {
        console.log(sepa);
        console.log(headLine);
        console.log(sepa, '\n');
        console.log(cmd.output);
        console.log();
        changeCount++;
    }
});

if(changeCount === 0) {
    console.log('=> No local changes have been detected.');
    console.log();
}