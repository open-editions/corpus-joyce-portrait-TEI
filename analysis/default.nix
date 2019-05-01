with import <nixpkgs> {};

((python3.withPackages (ps: with ps; [
  pandas
  geopandas
  shapely
  #matplotlib
  #scikitlearn
  beautifulsoup4
  vega_datasets
  vega
  altair
  #nltk
  #spacy
  #spacy_models.en_core_web_lg
  jupyter
  jupyterlab
])).override({ignoreCollisions=true;})).env
