#!/bin/bash
set -e

time docker build -t c-bverfge:4.2.2 .

time docker-compose run --rm c-bverfge Rscript run_project.R
