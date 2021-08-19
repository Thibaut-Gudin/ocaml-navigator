# ocaml-navigator

## What does ocaml-navigator do ?

This plugin allows you to use different function frome the `Navigator`
interface in your ocaml mobile app.

This plugin is binding to `navigator` repositories, see the [oficial
Navigator interface
API](https://developer.mozilla.org/en-US/docs/Web/API/Navigator) for more
details

Warning!
This library doesn't contain all of the `Navigator` functionnality, some
other repositories aleready exists and are specificaly dedicated to some
feature. For exemple, if you want to the `geolocation` feature of this
interface you should use
[ocaml-cordova-plugin-geolocation](https://github.com/dannywillems/ocaml-cordova-plugin-geolocation)

If their is some feature of `Navigator` that you don't find in another
ocaml repositorie, feel free to add it to this one.

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
