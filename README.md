ExecJS Async
======

ExecJS lets you run JavaScript code from Ruby. ExecJS Async allows you to execute, and receive results from, asynchronous javascript.

ExecJS Async supports these runtimes (will try to support more in the future, but this is a early release):

* [Node.js](http://nodejs.org/)

A short example:

    require "execjs-async"
    context = ExecJS.compile_async <<-JAVASCRIPT
      var run = function(html, code){
        var jsdom = require('jsdom');
        
        jsdom.env(html, function(errors, window) {
          callback(window.document.getElementByName('body').innerHTML);
        });
      }
    JAVASCRIPT
    context.call 'run', "<p>Hello World</p>"
    # => "<p>Hello World</p>"
    

Notice the "callback" call in the compiled javascript code above.  They object passed into this callback will be the result of context#call.  Without ExecJS Async you would not be able to get back 'window.document.getElementByName('body').innerHTML' because jsdom.env is asynchronous.  And since more and more js libs are being written asynchronously these days (thanks to the popularity of node.js), it would make sense to support it in ExecJS (even if it's hard to support it across runtimes)

Even though ExecJS supports just calling ExecJS.eval or ExecJS.exec, async only supports using ExecJS.compile_async, because that is how it is currently being used.

# Installation

    $ gem install execjs-async

# License

Copyright (c) 2011 Eric Allam.

ExecJS is maintained by Sam Stephenson and Josh Peek. 

Released under the MIT license.
