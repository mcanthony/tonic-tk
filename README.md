## Tonic Toolkit ##

### Goal

_Tonic Toolkit_ is meant to provide a set of reusable components for building
web based applications. It is composed of several projects and repositories.

### Documentation

See the [documentation](https://kitware.github.io/tonic) for a
more information on what Tonic has to offer. It range from graphical components
to command line tools and applications.

### Components

- __[Tonic Mouse Handler](http://kitware.github.io/tonic-mouse-handler/)__: Mouse/Touch handler for simple drag/zoom actions management.
- __[Tonic Data Manager](http://kitware.github.io/tonic-data-manager/)__: Fetching images, text, JSON, Raw binaries has never been that easy.
- __[Tonic Query Data Model](http://kitware.github.io/tonic-query-data-model/)__: Pattern based data fetching to another dimension.
- __[Tonic Widgets](http://kitware.github.io/tonic-widgets/)__: Reusable set of graphical components.
- __[Tonic Image Builder](http://kitware.github.io/tonic-image-builder/)__: Set of data processing algorithms meant to produce images.
- __[Tonic VTK](http://github.com/kitware/tonic-vtk)__: Set of components meant to be used for building VTK-Web and ParaViewWeb applications.

### Tools

- __[Tonic Site Generator](http://kitware.github.io/tonic-site-generator/)__: Jekyll, Docco, Mdoc working together to build your Website.
- __[Tonic Data Generator](http://www.github.com/kitware/tonic-data-generator/)__: Python module that can drive VTK or ParaView to generate ArcticViewer datasets.

### Applications

- __[ArcticViewer](http://kitware.github.io/arctic-viewer/)__: Interactive data exploration viewer.
- __[ArcticViewer-iOS](http://kitware.github.io/arctic-viewer-ios/)__: ArcticViewer application packaged for the Apple Store.

### Development

You can get the full suite by running the following command lines:

```sh
$ git clone https://github.com/Kitware/tonic.git
$ cd tonic
$ npm install
```

To fetch from all repositories

```sh
$ npm run fetch
```

To check the status of all repositories

```sh
$ npm run status
```

To pull in all repositories

```sh
$ npm run pull
```

To clean and remove all the repositories

```sh
$ npm run clean
```

### Licensing

**tonic** is licensed under [BSD Clause 3](LICENSE).

### Getting Involved

Fork our repository and do great things. At [Kitware](http://www.kitware.com),
we've been contributing to open-source software for 15 years and counting, and
want to make **tonic** useful to as many people as possible.
