#!/bin/bash

EN_PATH="$PWD"/docs/en
ZH_PATH="$PWD"/docs/zh
# en
ln -s "$PWD"/README.md "$EN_PATH"/README.md
ln -s "$PWD"/mindocr/models/README.md "$EN_PATH"/mkdocs/mindocr_models_readme.md

sed -i 's|../../|./|g' "$EN_PATH"/index.md
sed -i 's|../../../mindocr/models/README.md|./mindocr_models_readme.md|g' "$EN_PATH"/mkdocs/customize_model.md

sed -i 's|(docs/en/|(|g' "$EN_PATH"/README.md
sed -i 's|(tools/infer/text/README.md)|(mkdocs/online_inference.md)|g' "$EN_PATH"/README.md
sed -i 's|(mindocr/data/README.md)|(mkdocs/customize_dataset.md)|g' "$EN_PATH"/README.md
sed -i 's|(mindocr/data/transforms/README.md)|(mkdocs/customize_data_transform.md)|g' "$EN_PATH"/README.md
sed -i 's|(mindocr/models/README.md)|(mkdocs/customize_model.md)|g' "$EN_PATH"/README.md
sed -i 's|(mindocr/postprocess/README.md)|(mkdocs/customize_postprocess.md)|g' "$EN_PATH"/README.md
sed -i 's|(CONTRIBUTING.md)|(mkdocs/contributing.md)|g' "$EN_PATH"/README.md
sed -i 's|(LICENSE)|(mkdocs/license.md)|g' "$EN_PATH"/README.md

sed -i 's|](configs|](https://github.com/mindspore-lab/mindocr/blob/main/configs|g' "$EN_PATH"/README.md
sed -i 's|](deploy/|(https://github.com/mindspore-lab/mindocr/blob/main/deploy/|g' "$EN_PATH"/README.md


# zh
ln -s "$PWD"/README_CN.md "$ZH_PATH"/README_CN.md
ln -s "$PWD"/mindocr/models/README_CN.md "$ZH_PATH"/mkdocs/mindocr_models_readme_cn.md

sed -i 's|../../|./|g' "$ZH_PATH"/index.md
sed -i 's|../../../mindocr/models/README_CN.md|./mindocr_models_readme_cn.md|g' "$ZH_PATH"/mkdocs/customize_model.md

sed -i 's|(docs/zh/|(|g' "$ZH_PATH"/README_CN.md
sed -i 's|(tools/infer/text/README_CN.md)|(mkdocs/online_inference.md)|g' "$ZH_PATH"/README_CN.md
sed -i 's|(mindocr/data/README_CN.md)|(mkdocs/customize_dataset.md)|g' "$ZH_PATH"/README_CN.md
sed -i 's|(mindocr/data/transforms/README_CN.md)|(mkdocs/customize_data_transform.md)|g' "$ZH_PATH"/README_CN.md
sed -i 's|(mindocr/models/README_CN.md)|(mkdocs/customize_model.md)|g' "$ZH_PATH"/README_CN.md
sed -i 's|(mindocr/postprocess/README_CN.md)|(mkdocs/customize_postprocess.md)|g' "$ZH_PATH"/README_CN.md
sed -i 's|(CONTRIBUTING_CN.md)|(mkdocs/contributing.md)|g' "$ZH_PATH"/README_CN.md
sed -i 's|(LICENSE)|(mkdocs/license.md)|g' "$ZH_PATH"/README_CN.md

sed -i 's|](configs|](https://github.com/mindspore-lab/mindocr/blob/main/configs|g' "$ZH_PATH"/README_CN.md
sed -i 's|](deploy/|](https://github.com/mindspore-lab/mindocr/blob/main/deploy/|g' "$ZH_PATH"/README_CN.md
