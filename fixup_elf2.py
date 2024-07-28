import subprocess
import os

try:
    os.remove("build/sources.txt")
except:
    pass

print("Retrieving source file list via debugedit")
subprocess.run(["debugedit", "-l", "build/sources.txt", "build/main.nef"])

with open("build/sources.txt") as f:
    content = f.read()
    all_sources = content.split('\0')

print("Identifying unique source directories")
source_paths = []
for source in all_sources:
    source_parts = source.split(":")
    if len(source_parts) != 3: continue

    source_original = source_parts[0] + ":" + source_parts[1]
    source_original = source_original[:-2]
    
    if source_original not in source_paths:
        source_paths.append(source_original)

print(f"Identified {len(source_paths)} unique source directories from source file list")
for source in source_paths:
    remapped = source.replace("\\", "/")[2:]
    print(f"Remapping source path from {source} to {remapped} using debugedit.")
    subprocess.run(["debugedit", "-b", source, "-d", remapped, "build/main.nef"])