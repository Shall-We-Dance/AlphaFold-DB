#!/bin/bash
set -e
echo "**********"
echo "This script is used to update databases of alphafold"
echo "https://github.com/Shall-We-Dance/AlphaFold-DB/"
echo "**********"
if [[ $# -eq 0 ]]; then
  echo "Error: download directory must be provided as an input argument."
  exit 1
fi

if ! command -v aria2c &> /dev/null ; then
  echo "Error: aria2c could not be found. Please install aria2c (sudo apt install aria2)."
  exit 1
fi

DOWNLOAD_DIR="$1"

SCRIPT_DIR="$(dirname "$(realpath "$0")")"

echo "Deleting old MGnify..."
rm -rf "${DOWNLOAD_DIR}/mgnify"
echo "Downloading MGnify..."
bash "${SCRIPT_DIR}/download_mgnify.sh" "${DOWNLOAD_DIR}"

echo "Deleting old PDB70..."
rm -rf "${DOWNLOAD_DIR}/pdb70"
echo "Downloading PDB70..."
bash "${SCRIPT_DIR}/download_pdb70.sh" "${DOWNLOAD_DIR}"

echo "Deleting old Uniclust30..."
rm -rf "${DOWNLOAD_DIR}/uniclust30"
echo "Downloading Uniclust30..."
bash "${SCRIPT_DIR}/download_uniclust30.sh" "${DOWNLOAD_DIR}"

echo "Databases update successful."
