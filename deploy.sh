#!/bin/bash
#Created by Poli Systems GmbH

cd "$(dirname "$0")"
git pull
mkdocs build
