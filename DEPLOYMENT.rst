Deployment
**********
Local Deployment
----------------
**NOTE: This docker-compose file will run ONLY the MDCS/CDCS Metagenome fork.**

You can execute the file **/deploy/local_deploy.sh** to run the command below, or run it in a terminal.

.. code-block:: console

    docker-compose -f "local-docker-compose.yml" -f "./mongo/m-local-docker-compose.yml" up


Web Deployment (Full Stack)
---------------------------
**NOTE: Not used for local/development purposes.**

For deployment purposes, there are different docker-compose files to download and deploy the entire stack simultaneously, set up with reverse proxy to properly route traffic to the API/React Webpage.

You can execute the file **/deploy/dev_deploy.sh** to run the command below, or paste into the terminal.

.. code-block:: console

    docker-compose -f "deploy-docker-compose.yml" -f "./mongo/m-deploy-docker-compose.yml" up


Running the full stack version will also pull an execute the docker images for the API and React Frontend found at `meta-genome.org <https://meta-genome.org>`_.

    - jac111/metag_flask_api 
    - jac111/genome_front

Terminating the Code
--------------------

In the **/deploy/** directory:

.. code-block:: console

    docker-compose down

Next Steps
==========

Now see the :doc:`development` section for information on how to make changes to the system.

