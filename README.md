node-webkit-hipster-seed
========================

Bootstrap a crossplatform Desktop Application using tools you probably never heard of.

If you're familiar with the node.js world, this sketch should get you informed, if not: an [explanation](https://github.com/Anonyfox/node-webkit-hipster-seed/wiki/how-it-works) is placed [in the wiki](https://github.com/Anonyfox/node-webkit-hipster-seed/wiki). 

![How NWHS works](https://raw.github.com/Anonyfox/node-webkit-hipster-seed/master/docs/nwhs-draft.png)

#TL;DR?

- `brunch new https://github.com/Anonyfox/node-webkit-hipster-seed MyApp` to get you started.
- `npm run compiler` assembles your application into `/_public` and watches file changes.
- `npm run app` starts your application locally. 
- `npm run deploy` builds your app for windows, osx and linux. the binaries are placed in `/dist` after building. 
- `bower install <frontend-module>` for any frontend-related stuff. jQuery, Angular-plugins, and so on. 
- `npm install my-module` **inside of `app/assets`** to install node.js modules. 
- see the [wiki](https://github.com/Anonyfox/node-webkit-hipster-seed/wiki) for advanced stuff.

#Workflow - detailed

###0. Prerequisites

You need the following stuff installed on your machine: 
- [Node.js & NPM](http://nodejs.org/) (see the instructions for your operating system. Ensure that globally installed NPM modules are in your PATH!)
- Git. (Brunch and Bower depend on Git to work.)
- [Brunch](http://brunch.io/) via a global npm installation: `npm install -g brunch`.
- [Bower](http://bower.io/) via a global npm installation: `npm install -g bower`.

###1. Bootstrap a new Desktop App!

```
brunch new https://github.com/Anonyfox/node-webkit-hipster-seed MyApp
```

*This may take a few minutes depending on your hardware and internet connection, since this git repo will be cloned, a bunch of npm modules will be installed, including the somewhat big [node-webkit](https://github.com/rogerwang/node-webkit), and several bower modules afterwards.*

###2. Develop an AngularJS App on Steroids!

`cd MyApp`. Place your typical application code under `/app`. So: 

- `/app/styles` contains all your stylesheets as LESS files. You may look into `/app/styles/app.less` when fine-tuning your included CSS-related components.
- `/app/scripts` is the folder for your coffeescript application logic, especially your AngularJS stuff. The mighty AngularJS main-module is defined in `/app/app.coffee` and includes the angular module loader and the url routing definitions. 
- `/app/partials` contains your Jade templates which are compiled and merged into an AngularJS template module. The main index file is located at `/app/index.jade` and will be compiled to an actual `index.html` file.
- `/app/assets` is the catch-all directory for everything else, like images or fonts. The whole directory, including the folder-hierarchy, is copied **as is** into the final application folder. *If you want to use npm modules inside your application, install them here, and NOT in the toplevel folder!* Also, the `/app/assets/package.json` is used to describe and build your application, NOT the toplevel `/package.json`!

*The App-level structure is basically the same as [angular-brunch-seed](https://github.com/scotch/angular-brunch-seed).*

All this assembling stuff is managed for you automatically when you run the following command: 

```npm run compiler```

While this task is running, every change in your `/app` folder triggers an efficient partial rebuild of the relevant files. Any `bower install <frontend-module>` triggers this, too. 

To run your app locally, just enter: 

```npm run app```

###3. Add more modules and plugins!

Gone are the days of drag'n'droppin' your jQuery plugins from diverse websites into your script folders. Just use [Bower](http://bower.io/) for anything "browser related". Think of it as a NPM for the frontend. Any components installed by bower are saved in `bower_components` and automatically inserted in the compilation process. 

###4. Test ALL the things!

Since your desktop application is basically just an AngularJS app, you can use [Karma](http://karma-runner.github.io/0.10/index.html), which is especially written for testing AngularJS apps end-to-end. *(ToDo: configure karma to fire up node-webkit instead of chromium.)*

###5. Deploy your App!

When you're done building your awesome app, just type 

```npm run deploy```

and you'll have your final application folders located in `/dist` for each major operating system. When performing this task the first time, it'll take several minutes to download the necessary node-webkit binaries per target system. 

*So far only tested on OSX and Windows 7. The application icon and several minor features still require some work, have a look at [grunt-node-webkit-builder](https://github.com/mllrsohn/grunt-node-webkit-builder) if you want to give a helping hand.*

#Licence

**MIT.** You can assign any licence you want to your built apps, however you should pick the GPL if you are awesome *([like lighttable did](https://news.ycombinator.com/item?id=7024626))*. 

#Feedback

- Just use the issues section to discuss features or report bugs.
- There is a thread on [HackerNews](https://news.ycombinator.com/item?id=7094465) and one on [Reddit](http://www.reddit.com/r/webdev/comments/1vumf5/workflow_for_frontend_developers_to_create/). 
- If you have general questions not related to this project, you may tweet to [@Hisako1337](https://twitter.com/Hisako1337) (that's me.).

#Tipping

If you like what you see, feel free to tip me some DOGECOIN. Much App. Wow!
`D6M5ibT5CUe14yWRt8ZmVQkwzp8icio5Yc`
