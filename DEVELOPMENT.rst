Development
************

Running Changes Locally
=======================


You can mount files and folders into docker from your local system (`VSCode Containers <https://code.visualstudio.com/docs/devcontainers/containers>`_) to modify files within the image for testing and development. 


local-docker-compose
--------------------

You can also modify the **local-docker-compose.yml** file to mount folders into the Docker container by modifying the **volumes** section of the **cdcs** service.

In the **cdcs** step in the **volumes** section, you can add the paths of repositories to be changed. Here, we have an example mount for the meta-mdcs repository and core_main_app.

NOTE: Only meta-mdcs needs to be in **/srv/curator/**, other packages are mounted into the **Python*.*/site-packages** directory.

.. code-block:: console
    
    volumes:
        ......
        - META-MDCS_PATH:/srv/curator/
        - CORE_MAIN_APP_PATH/core_main_app:/usr/local/lib/python3.8/site-packages/core_main_app


**Example:**

Here is a working example of the lines added to the **volumes** section of the **cdcs** service in **local-docker-compose.yml**.

.. code-block:: console
    
    volumes:
        ......
      - ~/Documents/github/Meta-Genome-Org/meta-mdcs:/srv/curator/
      - ~/Documents/github/Meta-Genome-Org/core_main_app/core_main_app:/usr/local/lib/python3.8/site-packages/core_main_app

With these changes in the **local-docker-compose.yml**, you can then start the software with the command:

.. code-block:: console
    
    docker-compose up

See: `Tips for customizing CDCS (NexusLIMS) <https://pages.nist.gov/NexusLIMS/customizing_cdcs.html>`_ for more guidance on making changes to the system.