# bin/bash

echo "fetching transkriptions from data_repo"
rm -rf data/
curl -LO https://github.com/acdh-tool-gallery/mrp-data/archive/refs/heads/main.zip
unzip main

mv ./mrp-data-main/data/ .

rm main.zip
rm -rf ./mrp-data-main

echo "fetch imprint"
./shellscripts/dl_imprint.sh
