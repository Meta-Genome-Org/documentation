Installation
************
**NOTE: This guide describes installing and running only the CDCS/MDCS system for the Metagenome Project found when accessing:** `portal.meta-genome.org <https://portal.meta-genome.org>`_

Prerequisite Software
=====================

Please install the Prerequisite software before continuing:

- Docker
- Docker-Compose

You can find a link to download Docker for Windows `here. <https://docs.docker.com/desktop/install/windows-install/>`_

For Linux users, you can use this command, or the equivalent for your relevant package manager:

.. code-block:: console

    sudo apt-get install docker docker-compose

(Your distribution may vary.)

Installation Steps
===================

The overarching steps to download, install and deploy are:

- Clone the `meta-cdcs-docker <https://github.com/Meta-Genome-Org/meta-cdcs-docker>`_ repository.
- Modify Configuration File (**/deploy/.env**)
- Build the containers
- Run the containers

Clone meta-cdcs-docker
----------------------
Start by cloning the `meta-cdcs-docker <https://github.com/Meta-Genome-Org/meta-cdcs-docker>`_ repository from GitHub.

.. code-block:: console

    git clone https://github.com/Meta-Genome-Org/meta-cdcs-docker


Configuration Files
-------------------
Now, set the configuration from within the meta-cdcs-docker folder.

**NOTE: You should not need to change any values in /build/.env**

In **/deploy/.env**, set the following:

    - HOSTNAME
    - SERVER_URI
    - ALLOWED_HOSTS

**HOSTNAME & SERVER_URI**

For this setting (local development), we are using the **192.168.X.X** that is output in the command:

.. code-block:: console

    hostname -I

For local development, localhost (**127.0.0.1**) works.

**ALLOWED_HOSTS:**

For development, this value will likely be unchanged. But for deployment, it will likely be set to: *


Credentials
###########

Next, set the credentials section within the **/deploy/.env** file.

**NOTE: Please note down, and avoid changing these values after setting. It is not too important exactly what the values are,
but it is recommended that they are named reasonably.**

.. code-block:: console

    - MONGO_ADMIN_USER
    - MONGO_ADMIN_USER
    - MONGO_ADMIN_PASS
    - MONGO_USER
    - MONGO_PASS
    - MONGO_DB
    - POSTGRES_USER
    - POSTGRES_PASS
    - POSTGRES_DB
    - REDIS_PASS
    - DJANGO_SECRET_KEY


Building MDCS
=============
To build the system, run this command in the **/build/** folder:

.. code-block:: console

    docker-compose build --no-cache


Next Steps
==========

Please see the :doc:`deployment` section for help on how to deploy the system.