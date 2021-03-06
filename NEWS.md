circumplex 0.2.1
=============================

#### NEW FEATURES ####

* Added one normative data set to the IIS-32
* Added open-access (i.e., full item text) to the IIS-32 and IIS-64

#### BUG FIXES ####

* Updated the IIS-32 response anchors to range from 1 to 6 to match norms
* Changed use of tibble functions to avoid problems when new version releases
* Removed dependency on MASS package (until it is used by exported functions)

#### MINOR IMPROVEMENTS ####

* Updated the IIS-32 item ordering and scoring to match the author's version

circumplex 0.2.0
=============================

#### NEW FEATURES ####

* Added functions and documentation for numerous circumplex instruments
* Added functions for ipsatizing and scoring item-level data
* Added function for standardizing scale-level data using normative data

#### BUG FIXES ####

* Changed OpenMP flags in Makevars to fix a compile problem on Debian machines
* Fixed a bug related to calculating angular medians in the presence of NAs

#### MINOR IMPROVEMENTS ####

* Changed the default to plot profiles with low fit (but with dashed borders)
* Import and export functions from rlang tidy evaluation
* Added unit testing of various functions to increase code coverage

#### DOCUMENTATION FIXES ####

* Redesigned package website to be more attractive and clear
* Updated SSM vignette to use standardization function

circumplex 0.1.2
=============================

#### NEW FEATURES ####

* Profiles with low fit now have dashed borders when plotted

#### BUG FIXES ####

* Fixed bug that prevented compilation on Solaris systems
* Fixed bug that prevented CRAN checks on old R versions

#### DOCUMENTATION FIXES ####

* Improved the formatting of vignette source code

circumplex 0.1.1
=============================

#### NEW FEATURES ####

* [Package website](https://circumplex.jmgirard.com) added using [pkgdown](https://pkgdown.r-lib.org/)

#### DOCUMENTATION FIXES ####

* Fixed documentation to meet CRAN standards

circumplex 0.1.0
=============================

#### NEW FEATURES ####

* Submitted to CRAN
