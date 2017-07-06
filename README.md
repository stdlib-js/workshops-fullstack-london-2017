# Workshop

> The JavaScript Data Science Survival Kit.


## Introduction

The fields of machine learning and data science can appear intractable and overwhelming, often leaving newcomers at a loss for knowing where to begin. However, once you learn basic principles and workflows, you will see many opportunities where these techniques can help you in your projects. You can better understand your users, embed a recommendation engine into your application, or easily ship dashboards including statistical summaries and stunning visualizations.

The rise of Node.js and Electron are powering a new era where JavaScript continues to expand beyond the browser and becomes a critical component of server and desktop applications. With JavaScript being everywhere, one of the emerging next frontiers for JavaScript world domination is data science.

In this workshop, you will learn how to utilize the JavaScript open-source library stdlib for various data science tasks. Through a series of brief exercises, attendees will get a hands-on introduction, ranging from analytics to machine learning to exploratory data analysis and visualization. For example, you will investigate the accuracy of the native JavaScript Math functions, build a spam classifier, and generate synthetic texts using Markov chains.

After completing this workshop, you will have a solid understanding of what kind of problems they can approach by which techniques. Furthermore, you will have experience in conducting a full analysis from start to end, i.e., exploring, cleaning, transforming, and analyzing data with state-of-the-art techniques.

The workshop will close with an outline of future steps for data science in JavaScript and opportunities for community development of next-generation tools.


## Prerequisites

Developing and running the workshop __requires__ the following prerequisites:

* [Git][git]: version control
* [GNU make][gnu-make]: development utility and task runner
* [Node.js][node-js]: JavaScript runtime (version `>= 0.10`)
* [npm][npm]: package manager (version `> 2.7.0`; if Node `< 1.0.0`, version `> 2.7.0` and `< 4.0.0`)
* [bower][bower]: front-end package manager (version `>=1.8.0`)


## Download

To acquire the source code, first navigate to the parent directory into which you want to place the project git repository.

``` bash
$ cd /path/to/parent/destination/directory
```

Next, clone the repository.

``` bash
$ git clone https://github.com/kgryte/workshops-fullstack-london-2017.git
```

If you are wanting to contribute to the workshop, first [fork][github-fork] the repository and amend the previous command.

``` bash
$ git clone https://github.com/<username>/workshops-fullstack-london-2017.git
```

where `<username>` is your GitHub username (assuming you are using GitHub to manage public repositories). If you are not interested in code archeology, you can reduce the download time by limiting the clone [depth][git-clone-depth].

``` bash
$ git clone --depth=<depth> https://github.com/<username>/workshops-fullstack-london-2017.git
```

where `<depth>` refers to the number of commits you want to download (as few as `1` and as many as the entire project history).

If you are behind a firewall, you may need to use the `https` protocol, rather than the `git` protocol.

``` bash
$ git config --global url."https://".insteadOf git://
```

Once you have finished cloning the repository into the destination directory, you should see the folder `workshops-fullstack-london-2017`. To proceed with configuring your environment, navigate to the project folder.

``` bash
$ cd workshops-fullstack-london-2017
```


## Installation

To install development dependencies,

``` bash
$ make install-node
```


## Development

To launch a local development server,

``` bash
$ make dev
```

which will automatically open the workshop in your default local web browser.


## Update

If you have previously downloaded the workshop using `git clone`, you can update an existing source tree from the base project directory using `git pull`.

``` bash
$ git pull
```

If you are working with a [forked][github-fork] repository and wish to [sync][github-fork-sync] your local repository with the [upstream][git-remotes] project (i.e., incorporate changes from the main project repository into your local repository), assuming you have [configured a remote][github-remote] which points to the upstream repository,

``` bash
$ git fetch upstream
$ git merge upstream/<branch>
```

where `upstream` is the remote name and `<branch>` refers to the branch you want to merge into your local copy.


## Editors

* This repository uses [EditorConfig][editorconfig] to maintain consistent coding styles between different editors and IDEs, including [browsers][editorconfig-chrome].


## License

See [LICENSE][license].


## Copyright

Copyright &copy; 2017. The Stdlib [Authors][authors].


<!-- Section for all links. Make sure to keep an empty line after the `section` element and another before the `/section` close. -->

<section class="links">

[git]: http://git-scm.com/
[gnu-make]: https://www.gnu.org/software/make
[node-js]: https://nodejs.org/en/
[npm]: https://www.npmjs.com/
[bower]: https://bower.io/

[git-clone-depth]: https://git-scm.com/docs/git-clone#git-clone---depthltdepthgt
[git-remotes]: https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes

[github-fork]: https://help.github.com/articles/fork-a-repo/
[github-fork-sync]: https://help.github.com/articles/syncing-a-fork/
[github-remote]: https://help.github.com/articles/configuring-a-remote-for-a-fork/

[editorconfig]: http://editorconfig.org/
[editorconfig-chrome]: https://chrome.google.com/webstore/detail/github-editorconfig/bppnolhdpdfmmpeefopdbpmabdpoefjh?hl=en-US

[authors]: https://github.com/kgryte/workshops-fullstack-london-2017/graphs/contributors
[license]: https://raw.githubusercontent.com/kgryte/workshops-fullstack-london-2017/master/LICENSE

</section>

<!-- /.links -->
