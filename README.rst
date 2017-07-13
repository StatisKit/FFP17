.. image:: https://travis-ci.org/StatisKit/FFP17.svg?branch=master
   :target: https://travis-ci.org/StatisKit/FFP17
  
.. image:: https://ci.appveyor.com/api/projects/status/jbvyy4sko6bhorx2/branch/master
   :target: https://ci.appveyor.com/api/projects/status/jbvyy4sko6bhorx2/branch/master


FFP17: Supplementary Material for Computational Studies 
#######################################################

This repository contains supplementary material for the reproducibiliy of computational studies performed in the report *Learning high dimensional gaussian graphical models* written by Adja Magatte Fall under the supervision of:

* Pierre Fernique,
* Jean Peyhardi.

These studies are formatted as pre-executed **Jupyter** `notebooks <https://jupyter.readthedocs.io/en/latest/index.html>`_.
Refers to the `index.ipynb <index.ipynb>`_ notebook which presents and references each study.

Test it !
=========

Using **Docker** `images <https://docs.docker.com/>`_ and a **Binder** `server <http://docs.mybinder.org/>`_, we are able to provide ways to reproduce the article studies without installing the **StatisKit** software suite.
    
Online with **Binder**
----------------------

To reproduce the studies online, follow this `link <http://mybinder.org/repo/statiskit/ffp17>`_.
Note that the **Binder** server might be outdated but can be updated by following this `link <http://mybinder.org/status/statiskit/ffp17>`_ and clicking on :code:`rebuild`.

On your computer with **Docker**
--------------------------------

To reproduce the studies with **Docker** use these `images <https://hub.docker.com/r/statiskit/ffp17/tags>`_.
After `installing <https://docs.docker.com/engine/installation/>`_ **Docker**, you can type the following command in a shell:

.. code-block:: console

    docker run -i -t -p 8888:8888 statiskit/ffp17:latest
   
Then, follow the given instructions.

Install it !
============

You can also install required packages on your computer to reproduce these studies.
In order to ease the installation of these packages on multiple operating systems, the **Conda** `package and environment management system <https://conda.io/docs/>`_ is used.
For more information refers to the **StatisKit** software suite documentation concerning prerequisites to the `installation <http://statiskit.readthedocs.io/en/latest/user/install_it.html>`_ step.
Then, to install the required packages, proceed as as follows:

1. Clone this repository,

   .. code:: console
   
     git clone https://github.com/StatisKit/FFP17
     
2. Enter the cloned repository,

   .. code:: console
   
     cd FPD17
     
3. Install the given **Conda** environment,

   .. code:: console

     conda env create -f environment.yml
  
4. Activate the **Conda** environment as precised in your terminal.

5. Launch the **Jupyter** the `index.ipynb <index.ipynb>`_ notebook,

   .. code:: console

     jupyter notebook index.ipynb
     
6. Execute the `index.ipynb <index.ipynb>`_ notebook to execute all examples or navigate among referenced notebooks to execute them separatly.

