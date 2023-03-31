Metagnome Project
*****************

Project Information
=====================
| The hierarchical structures of metamaterials provide more design degrees of freedom, but also require different skillsets or knowledge to implement than bulk materials – sometimes compartmentalised in various research groups. 

| A conventional materials database is not sufficient to select an appropriate metamaterial – search by function and autonomous design would break these barriers to entry that limit their application and development. 

| Here, we provide a homogenised database of metamaterials topologies, base materials information, and mechanical properties, that can be searched to find already made options, or used to train AI algorithms and verify numerical methods to design metamaterials. 

| We have started with mechanical metamaterials, but plan to include more forms as we continue. 

| The project is underpinned by an open-source product development costed on a public good Repository, has received funding from the Henry Royce Institute and is closely linked to the UK MetaMaterials Network.


Configurable Data Curation System (CDCS)
========================================

To implement our data system, we have a deployed a fork of the `CDCS <https://www.nist.gov/itl/ssd/information-systems-group/configurable-data-curation-system-cdcs>`_
system from `NIST <https://www.nist.gov/>`_ (National Institute of Standards and Technology).

We have forked a number of repositories from NIST that we have modified for our system:

   - meta-cdcs-docker -> `usnistgov/cdcs-docker <https://github.com/usnistgov/cdcs-docker>`_ (Docker Deployment)
   - mdcs-cdcs -> `usnistgov/MDCS <https://github.com/usnistgov/MDCS>`_ (MDCS Base Repository)
   - core_main_app -> `usnistgov/core_main_app <https://github.com/usnistgov/core_main_app>`_ (MDCS Package)

NIST Documentation
------------------
Here are some links to the CDCS documentation, and some other useful documentation for their system.

   - `NIST Website <https://www.nist.gov/>`_ 
   - `MDCS Help <https://mdcs.nist.gov/help/>`_
   - `CDCS Docs <https://www.nist.gov/itl/ssd/information-systems-group/configurable-data-curation-system-cdcs/cdcs-help-and-resources>`_
   - `Tips for customizing CDCS (NexusLIMS) <https://pages.nist.gov/NexusLIMS/customizing_cdcs.html>`_