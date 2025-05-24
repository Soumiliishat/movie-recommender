#!/bin/bash

FILE_ID="1mqkZByON1ott802VDmE_2tT2hGA71pSG"
FILE_NAME="similarity.pkl"

echo "🔄 Downloading similarity.pkl from Google Drive..."
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${FILE_ID}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=$(awk '/download/ {print $NF}' ./cookie)&id=${FILE_ID}" -o ${FILE_NAME}
rm ./cookie

echo "✅ Download complete: $FILE_NAME"

#!/bin/bash

echo "Downloading similarity.pkl..."
curl -o similarity.pkl https://your-download-link.com/similarity.pkl
echo "Download complete!"
