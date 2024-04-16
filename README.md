# Project Overview

This repository contains a hybrid cloud environment we designed for the capstone project of the [Fields/Cyber Connexion cybersecurity program](http://www.fields.utoronto.ca/activities/23-24/cyber-analyst-stream-FT). The design includes three environments each of which are contained in an AWS virtual private cloud:

1. A production environment which contains a three-tier highly available application.
2. A non-production environment in which 5 virtual machines with distinct operating systems have been deployed.
3. An on-premises environment.

The production environment and non-production environment can both communicate with the on premises environment via a transit gateway. However, there is no communication between the production and non-production environments.

> [!NOTE]
> In order to compile on our AWS lab environment we have split up the architecture into two parts. One contains the on premises and non-production environments. The other contains the on premises and production environments.

## architecture visualization

In the [architecture_visualization folder](https://github.com/TeamPrius/architecture/tree/main/architecture_visualization) we include the draw.io code which was used to design the architecture. In addition, we provide an image which illustrates the design.

## onprem to nonprod

In the [onprem_to_nonprod folder](https://github.com/TeamPrius/architecture/tree/main/onprem_to_nonprod) we provide the Terraform code used to design the portion of our architecture relating to the on premises and non-production environments.

## onprem to prod

In the [onprem_to_prod folder](https://github.com/TeamPrius/architecture/tree/main/onprem_to_prod) we provide the Terraform code used to design the portion of our architecture relating to the on premises and production environments.

> [!NOTE]
> We include some rough work in archived repositories.
