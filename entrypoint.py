# -*- coding: utf-8 -*-
import os
import sys
import logging
import subprocess

__author__ = u"tony <frimen.c@gmail.com>"

logging.basicConfig(format='%(asctime)s %(message)s')

VOL_DATA = "/data"
MODE = os.environ.get('MODE')

if __name__ == "__main__":
    if __name__ == "__main__":
        if not MODE:
            logging.error("missed ENV vars")
            sys.exit(1)

    os.chdir(VOL_DATA)
    if MODE == "GENERATE_REPO":
        subprocess.check_call(["/bin/bash", "-c", "dpkg-scanpackages . /dev/null | gzip -9c > Packages.gz"])
    else:
        logging.error("unknown MODE")
        sys.exit(1)

