#!/usr/bin/env python3

import argparse
import os
import re
import subprocess
import sys
from collections.abc import Callable


def parse_deps(deps: bytes) -> set[str]:
    lines = deps.splitlines()
    output: set[str] = set()
    for line in lines:
        if not line.startswith(b"    "):
            continue

        line = os.fsdecode(line[4:])
        output.add(line)

    return output


def escape_dep(path: str) -> str:
    path = re.sub(r"(\\*)([ #])",
                  lambda m: m[1] * (2 if m[2] == " " else 1) + "\\" + m[2],
                  path)
    return path.replace("$", "$$")


def format_deps(deps: set[str]) -> str:
    return "TARGET: " + " ".join(escape_dep(p) for p in deps if os.path.exists(p))


def write_deps(depfile: str) -> Callable[[set[str]], None]:
    def impl(deps: set[str]) -> None:
        # We are overly cautious just for the possibility weird non-UTF-8 paths
        tmp = f"{depfile}.tmp"
        with open(tmp, "w", encoding=sys.getfilesystemencoding(), errors="surrogateescape") as fp:
            _ = fp.write(format_deps(deps))

        os.replace(tmp, depfile)

    return impl


def ninja(
    manifest: str,
    env: dict[str, str],
    args: list[str] | None=None,
    tool: str | None=None,
    deps_writer: Callable[[set[str]], None] | None = None,
) -> bool:
    args = args or []
    if tool:
        args.extend(["-t", tool])

    out = subprocess.run(["ninja", "-f", manifest, *args], check=False,
                         stdout=subprocess.PIPE if tool else None,
                         env=env)
    if out.returncode:
        return False

    if deps_writer:
        deps_writer(parse_deps(out.stdout))

    return True


class Arguments(argparse.Namespace):
    manifest: str = ""
    depfile: str = ""
    domain: str = ""


def main():
    argp = argparse.ArgumentParser("mapbuild")
    _ = argp.add_argument("--manifest", required=True, help="Path to the Ninja manifest.")
    _ = argp.add_argument("--depfile",  required=True, help="Path to the output depfile.")
    _ = argp.add_argument("--domain",   required=True, help="Domain of the sub-Ninja.")

    args = Arguments()
    _ = argp.parse_args(namespace=args)

    env = {**os.environ, "NINJA_STATUS": f"[{args.domain} %p %f/%t] "}
    if not ninja(args.manifest, env, tool="cleandead") \
        or not ninja(args.manifest, env) \
        or not ninja(args.manifest, env, tool="deps", deps_writer=write_deps(args.depfile)):
        sys.exit(1)


if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        sys.exit(130)
