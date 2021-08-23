# ocaml-navigator

## What does ocaml-navigator do ?

This plugin allows you to use different function from the `Navigator`
interface in your ocaml mobile app.

This plugin is binding to `navigator` repositories, see the [official
Navigator interface
API](https://developer.mozilla.org/en-US/docs/Web/API/Navigator) for more
details

Warning!
This library doesn't contain all of the `Navigator` functionality, some
other repositories already exists and are specifically dedicated to some
feature. For example, if you want to the `geolocation` feature of this
interface you should use
[ocaml-cordova-plugin-geolocation](https://github.com/dannywillems/ocaml-cordova-plugin-geolocation)

If their is some feature of `Navigator` that you don't find in another
ocaml repository, feel free to add it to this one.

## How to install and compile your project by using this plugin ?

You can use opam by pinning the repository with:
```Shell
opam pin add navigator https://github.com/besport/ocaml-navigator
```

to compile your project, use:
```Shell
dune build @install
```

Finally, install the "navigator" plugin with:
```Shell
cordova plugin add navigator
```


## How to use it?

[TODO]
