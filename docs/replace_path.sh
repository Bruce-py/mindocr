#!/bin/bash

ln -s "$PWD"/README.md "$PWD"/docs/en/README.md
ln -s "$PWD"/mindocr/models/README.md "$PWD"/docs/en/mkdocs/mindocr_data_readme.md

sed -i 's|../../|./|g' "$PWD"/docs/en/index.md
sed -i 's|../../../mindocr/models/README.md|./mindocr_data_readme.md|g' "$PWD"/docs/en/mkdocs/customize_model.md

sed -i 's|(docs/en/|(|g' "$PWD"/docs/en/README.md
sed -i 's|(CONTRIBUTING.md)|(mkdocs/contributing.md)|g' "$PWD"/docs/en/README.md
sed -i 's|(LICENSE)|(mkdocs/license.md)|g' "$PWD"/docs/en/README.md
sed -i 's|(tools/infer/text/README.md)|(mkdocs/online_inference.md)|g' "$PWD"/docs/en/README.md
sed -i 's|(mindocr/data/README.md)|(mkdocs/customize_dataset.md)|g' "$PWD"/docs/en/README.md
sed -i 's|(mindocr/data/transforms/README.md)|(mkdocs/customize_data_transform.md)|g' "$PWD"/docs/en/README.md
sed -i 's|(mindocr/models/README.md)|(mkdocs/customize_model.md)|g' "$PWD"/docs/en/README.md
sed -i 's|(mindocr/postprocess/README.md)|(mkdocs/customize_postprocess.md)|g' "$PWD"/docs/en/README.md

sed -i 's|(configs/|(https://github.com/mindspore-lab/mindocr/blob/main/configs/|g' "$PWD"/docs/en/README.md