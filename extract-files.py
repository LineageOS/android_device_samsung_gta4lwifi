#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

module = ExtractUtilsModule(
    'gta4lwifi',
    'samsung',
)

if __name__ == '__main__':
    utils = ExtractUtils.device_with_common(module, "gta4l-common", module.vendor)
    utils.run()
