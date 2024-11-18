#!/usr/bin/env python3

from configparser import ConfigParser
from subprocess import run
from os.path import dirname, realpath, join

def update_wrap(wrap, revision):
    cfg = ConfigParser()
    cfg.read(wrap)
    git = cfg["wrap-git"]
    url = git["url"]
    cmd = run(["git", "ls-remote", url, revision],
              check=True, capture_output=True)
    rev = cmd.stdout.decode().split()[0]
    print(" - Revision:", rev)
    git["revision"] = rev
    with open(wrap, "w") as f:
        cfg.write(f)

if __name__ == "__main__":
    subprojects = dirname(realpath(__file__))
    cfg = ConfigParser()
    cfg.read(join(subprojects, "update.ini"))
    for wrap in cfg.sections():
        print("Updating:", wrap)
        revision = cfg[wrap]["revision"]
        update_wrap(join(subprojects, wrap + ".wrap"), revision)
