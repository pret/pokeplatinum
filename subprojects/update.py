#!/usr/bin/env python3

from configparser import ConfigParser
from subprocess import run
from os.path import dirname, realpath, join
from os import chdir
from sys import argv

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

def update_proj(wrap, subprojects_dir):
    cfg = ConfigParser()
    cfg.read(wrap)

    git = cfg["wrap-git"]
    url = git["url"]
    rev = git["revision"]
    dir = git["directory"]

    chdir(join(subprojects_dir, dir))
    run(["git", "fetch", url])
    run(["git", "checkout", rev])

if __name__ == "__main__":
    projects = len(argv) > 1 and argv[1] == "projects"

    subprojects = dirname(realpath(__file__))
    cfg = ConfigParser()
    cfg.read(join(subprojects, "update.ini"))
    for wrap in cfg.sections():
        print("Updating:", wrap)
        revision = cfg[wrap]["revision"]
        update_wrap(join(subprojects, wrap + ".wrap"), revision)
        if projects:
            update_proj(join(subprojects, wrap + ".wrap"), subprojects)
