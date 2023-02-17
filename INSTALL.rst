`usnistgov/cdcs-docker <https://github.com/usnistgov/cdcs-docker>`_

INSTALLATION
============
*NOTE: This file assumes that you have already installed Docker/Docker Compose.*

The original cdcs-docker repository that this project has been forked from can be found here: `usnistgov/cdcs-docker`_.

Steps
-----
- Modify Configuration File
- Build the containers
- Run the containers

Configuration File
------------------

Set your own values for the following in : **/deploy/.env**

*NOTE: Avoid changing these values after setting. It is not too important exactly what the values are,
but it is recommended that they are named reasonably.*

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

Build and Run
--------------
- In the **/build/** folder:

.. code-block:: console

    docker-compose build --no-cache


- In the **/deploy/** folder:

.. code-block:: console

    docker-compose up

- Shutting Down:

Run this command within the /deploy/ directory:

.. code-block:: console

    docker-compose down