#!/usr/bin/env node

require('shelljs/global');

if (!which('git')) {
  echo('Sorry, this script requires git');
  exit(1);
}

var fs = require('fs'),
    c = {silent:true},
    path = require('path'),
    projectList = require('./tonic-suite.json'),
    tonicPath = path.join(__dirname, '..'),
    nodeModulePath = path.join(tonicPath, 'node_modules');

// Add npmrc for tonic
('PREFIX = ' + nodeModulePath).to(path.join(tonicPath, '.npmrc'));

// Create and initialize projects
projectList.forEach(function(project) {
    console.log('\n =>', project.path + '/' + project.name);

    // Make sure parent directory exist
    var basepath = path.join(tonicPath, project.path);
    mkdir('-p', basepath);

    // Setup repo if it does not exist
    var repoPath = path.join(basepath, project.name);
    if (!fs.existsSync(repoPath)) {
        // Clone + Submodule
        console.log('   - git clone');
        var git = exec('cd ' + basepath + ' && git clone --recursive https://github.com/Kitware/' + project.name + '.git', c);
        if (git.code !== 0) {
            echo('Error: Git cloning ' + project.name);
            git.output.to(path.join(tonicPath, 'log-' + project.name + '-git-error.txt'));
        }
        // Install
        console.log('   - npm install');
        var install = exec('cd ' + repoPath + ' && npm install', c);
        if (install.code !== 0) {
            echo('Error: npm install ' + project.name);
            install.output.to(path.join(tonicPath, 'log-' + project.name + '-npm-error.txt'));
        }
        // gh-pages branch
        if(project.submodule) {
            console.log('   - gh-pages on docs/www');
            var submodule = exec('cd ' + repoPath + '/docs/www && git checkout gh-pages', c);
            if (submodule.code !== 0) {
                echo('Error: gh-pages ' + project.name);
                submodule.output.to(path.join(tonicPath, 'log-' + project.name + '-gh-pages-error.txt'));
            }
        }
        // Local .npmrc to use the tonic one as global
        console.log('   - tonic/node_modules as global npm repo');
        ('PREFIX = ' + nodeModulePath).to(path.join(repoPath, '.npmrc'));
    } else {
        console.log('   - skip');
    }
});

console.log('\n=> Tonic suite is ready for your development.\n');