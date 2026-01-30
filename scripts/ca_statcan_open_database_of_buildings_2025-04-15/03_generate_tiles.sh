#!/bin/bash

SCRATCH_FOLDER="${HOME}/tmp/dataforcanada/process-foundation-dev"
DATASET_ID="ca_statcan_open_database_of_buildings_2025-04-15"
INPUT_FILE="${SCRATCH_FOLDER}/${DATASET_ID}/${DATASET_ID}.fgb"

ARGS=(
    -progress
    -name "Open Database of Buildings (ODB) from Statistics Canada for 2025-04-15 / Base de données ouverte sur les bâtiments (BDOB) de Statistique Canada pour le 2025-04-15"
    -description "Harmonized building footprints and attributes across Canada / Empreintes et attributs de bâtiments harmonisés à l'échelle du Canada"
    -attribution "Source: https://www150.statcan.gc.ca/n1/en/catalogue/34260001 / Source: https://www150.statcan.gc.ca/n1/en/catalogue/34260001"
    -mbtiles_compatible
    -srs_epsg
    -vector_compress
    -work_dir ~/tmp/maptiler_engine
    -o "${SCRATCH_FOLDER}/${DATASET_ID}/${DATASET_ID}.mbtiles"
    "${INPUT_FILE}"
)

maptiler-engine "${ARGS[@]}"
