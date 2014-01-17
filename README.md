node-webkit-hipster-seed
========================

Bootstrap a crossplatform Desktop Application using tools you probably never heard of. 

#What is this?

![How NWHS works](https://raw.github.com/Anonyfox/node-webkit-hipster-seed/master/docs/nwhs-draft.png)

Imagine building a Single Page App (SPA) with [Angular.js](http://angularjs.org/), using the [brunch](http://brunch.io/) skeleton from [angular-brunch-seed](https://github.com/scotch/angular-brunch-seed).

This means you're using: 
- [Coffeescript](http://coffeescript.org/) instead of Javascript.
- [LESS](http://www.lesscss.org/) instead of plain CSS.
- [Jade](http://jade-lang.com/) as your HTML templating language.
- [Bootstrap](http://getbootstrap.com/2.3.2/) as UI-Framework.
- and of course: Angular.js as superior Client-MV*-Framework

Now you want to build a real desktop application instead of just another web app. Fine! Just start your app with **[node-webkit](https://github.com/rogerwang/node-webkit)** instead of a http-server. Think of it as a [Chromium Browser](http://www.chromium.org/Home) merged with [Node.js](http://nodejs.org/) in one process. Basically your final application is capable of of doing *everything a modern browser can do*, plus some very interesting quirks. Look at the [wiki](https://github.com/rogerwang/node-webkit/wiki) for some features. 

Most important: *you don't need any webserver at all*. instead of doing Ajax-requests, just do what you want to do on the server *directly in-place*! Yeah, that's right, you can `require "my-node-js-module"` in your Angular.js application! Oh, and you have access to the file system as you would have in Node.js. Really, it's full blown node.js and a real chromium melted together!

*Currently you must have node-webkit installed on your machine to run your app locally [TODO].* 

Last but not least: ship your app with ease! Just type `grunt`, and your app will be compiled for windows, osx and linux, ready to distribute. Yes, it's *that* easy. Kudos to [grunt-node-webkit-builder](https://github.com/mllrsohn/grunt-node-webkit-builder) for the toolchain. 

#How do i install this?

Currently it's `git clone`, and in the new directory `npm run init`. When there is enough interest, I'll make a common brunch skeleton out of this. 

#node_modules?

The toplevel folder contains a node_modules folder. This one is for the application framework, brunch and grunt. If you want to use node modules in your final *app* (that's the point, right?), go to `/app/assets` and `npm install whatyouwant` there. Everything in `app/assets` will be copied "as is" to the rootfolder of your final application (yes, it's `_public`). 

#frontend modules?

Angular plugins, jQuery plugins, whatever you'd call "Client Javascript" is managed through [Bower](http://bower.io/). Just `bower install jquery` and you have it installed and merged into the asset pipeline for example. 

#TL;DR?

- `npm run build` assembles your application into `_public` and watches file changes
- `grunt` builds your app for windows, osx and linux. the binaries are placed in `dist` after building. 
- `bower install <frontend-module>` for any frontend-related stuff. jQuery, Angular-plugins, and so on. 
- `npm install my-module` inside of `app/assets` to install node.js modules. 

#Whoa, this is a lot of stuff. Did you actually write some stuff by yourself?

Not really. I just took some really awesome node.js related stuff and threw it together because I needed a kickstart for building small desktop apps again and again. 

#Licence

MIT. Alert me if some of the used stuff collides with the MIT Licence. 
