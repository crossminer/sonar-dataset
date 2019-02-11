# Sonar Dataset

This dataset was extracted using the Maven Central Dependency Graph [[zenodo](https://zenodo.org/record/1489120)] [[arXiv](https://arxiv.org/abs/1901.05392)].

## Structure
  - The [maven-dataset.csv](./maven-dataset.csv) contains an exhaustive list of all artifacts (first column) pushed on Maven Central that depend on any version of `sonar-plugin-api` (second column) in any stage/scope of the build (third column).
  - The [client-jars](./client-jars) directory contains the list of JARs depending on `sonar-plugin-api`, extracted from Maven Central, together with the corresponding Rascal M<sup>3</sup> models
  - The [sonar-jars](./sonar-jars) directory contains the list of `sonar-plugin-api` JARs deployed on Maven Central that have artifacts depending on them, together with the corresponding Rascal M<sup>3</sup> models
  - The [RascalScripts](./RascalScripts) contains simple scripts written in [Rascal](https://rascal-mpl.org) to process the dataset and build the M<sup>3</sup> models
