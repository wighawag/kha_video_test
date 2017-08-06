var project = new Project('kha video test');
project.addAssets('Assets/**');//, { name: '{name}', destination:'static/{name}', md5sum:true }
project.addSources('Sources');
resolve(project);