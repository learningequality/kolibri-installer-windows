#!/usr/bin/env bash

set -euo pipefail

pip install whl/kolibri*.whl
python -c "import kolibri; print(kolibri.__version__)" > /version/VERSION
