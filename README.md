# Introduction

Deep, pretrained neural networks have in the past roughly 2 years become a staple in the NLP community. The driver for this development has been the success of language modelling as a pretraining task as well as new and improved network architectured and training methods. State-of-art models like BERT, GPT-2, XLM or AWD-LSTM all use some kind of a language modelling task to first train a network, which can then be used to perform other downstream tasks.

In this tutorial I will cover the ideas behind these methods. A rough outline of the tutorial is as follows:

- Neural network basics (15-20 minutes)
- Recurrent neural networks (15-20 minutes)
- The Transformer model (30 minutes)

I aim to focus on practical applications (document classification, sequence labelling) with real world examples. All associated code is available on Github as github.com/mattilyra/pydatanyc_2019


# PyData NYC 2019 Tutorial on Neural Networks for Natural Language Processing

## Tutorial Overview
- Artificial Neural Networks, a recap of the past 50 years (10 minutes)
- The Building Blocks
  - Network Architecture
  - Scheduler
  - Optimizer
- Language and Recurrent Neural Networks
- The Transformer Model


# Installation and Dependencies

You can use `docker` if you have it installed, if not you can also you `pipenv` to manage a local environment. For complete installation instructions for `pipenv` please refer to the `pipenv` documentation [here](docs.pipenv.org/en/latest/install/#installing-pipenv). Please make sure you are using Python 3.7.


PLEASE KEEP IN MIND THAT THE INSTALLATION WILL TAKE SOME TIME, YOU WILL NEED TO THIS BEFORE THE TUTORIAL.


### pipenv
```bash
git clone https://github.com/mattilyra/pydatanyc_2019
cd pydatanyc_2019
pipenv install --verbose
pipenv run jupyter lab
```

Required to display `tqdm` progress bars correctly. You can also run the examples in a `jupyter notebook` in which case everything should work fine.
```bash
pipenv run jupyter nbextension enable --py widgetsnbextension
pipenv run jupyter labextension install @jupyter-widgets/jupyterlab-manager
```


### conda

_I discovered slightly too late that the `pipenv` installation method does not work on AWS EC2 GPU instances._ If you want to run the examples on a GPU instance you can run the following to install the required dependencies.

Be aware that the version of the required `cudatoolkit` depends on the exact hardware / driver / cuda version you have. You can check the version you have by running `nvidia-smi`

`conda create -n pydatanyc python=3.7`
`conda activate pydatanyc`
`conda install scikit-learn gensim jupyterlab pandas transformers ipywidgets -c conda-forge`
`conda install pytorch cudatoolkit=10.0 -c pytorch`
`jupyter nbextension enable --py widgetsnbextension`
`labextension install @jupyter-widgets/jupyterlab-manager`
`jupyter lab`