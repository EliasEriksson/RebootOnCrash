#! /usr/bin/env python3
from typing import *
import subprocess
import sys


def reboot_on_crash(command: List[str]):
    while True:
        process = subprocess.run(command,
                                 stdout=subprocess.PIPE,
                                 stderr=subprocess.PIPE)
        if process.returncode == 0:
            break


if __name__ == '__main__':
    assert len(sys.argv) > 1
    reboot_on_crash(sys.argv[1:])
